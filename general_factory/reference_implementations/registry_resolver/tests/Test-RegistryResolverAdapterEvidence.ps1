$ErrorActionPreference = "Stop"
$Passed = 0
$Failed = 0
$TempFiles = @()

$Root = Split-Path -Parent $PSScriptRoot
$AdapterPath = Join-Path $Root "src\Invoke-RegistryResolverAdapter.ps1"

function Assert-Test {
    param(
        [string]$Name,
        [bool]$Condition,
        [string]$Detail = ""
    )

    if ($Condition) {
        $script:Passed++
        Write-Host "[PASS] $Name" -ForegroundColor Green
    } else {
        $script:Failed++
        Write-Host "[FAIL] $Name $Detail" -ForegroundColor Red
    }
}

function New-Fixture {
    param([string]$Label, [object]$Document)

    $Path = Join-Path ([System.IO.Path]::GetTempPath()) (
        "registry-adapter-evidence-" + $Label + "-" +
        [guid]::NewGuid().ToString("N") + ".json"
    )

    $Document | ConvertTo-Json -Depth 20 |
        Set-Content -LiteralPath $Path -Encoding UTF8

    $script:TempFiles += $Path
    return $Path
}

try {
    Write-Host "=== Adapter Evidence Integration Tests ==="

    if (-not (Test-Path -LiteralPath $AdapterPath)) {
        throw "Adapter file not found: $AdapterPath"
    }

    . $AdapterPath

    $Binding = @{
        binding_id = "SYNTH-EVIDENCE-001"
        framework_capability_id = "qai_experimentation"
        environment = "local"
        execution_mode = "virtual"
        supported_resources = @("cpu")
        implementation_version = "1.0.0"
    }

    $RegistryPath = New-Fixture "compatible" @{ bindings = @($Binding) }

    $BaseRequest = @{
        request_id = "TEST-EVIDENCE-001"
        framework_capability_id = "qai_experimentation"
        environment = "local"
        execution_mode = "virtual"
        required_resources = @("cpu")
        implementation_version = "1.0.0"
        required_evidence_types = @("test_report")
    }

    $PassingEvidence = @(
        @{
            evidence_id = "EV-INT-001"
            evidence_type = "test_report"
            reference = "synthetic://adapter-test-report-001"
            validation_status = "PASS"
        }
    )

    # Case 1: Compatible metadata and passing evidence.
    $Request1 = $BaseRequest.Clone()
    $Request1.request_id = "TEST-EVIDENCE-001"
    $Request1.evidence_records = $PassingEvidence

    $Result1 = Invoke-RegistryResolverAdapter -Request $Request1 -RegistryPath $RegistryPath

    Assert-Test "Compatibility remains COMPATIBLE" ($Result1.status -eq "COMPATIBLE") ("Actual: " + $Result1.status)
    Assert-Test "Passing evidence returns VERIFIED" ($Result1.evidence_assessment.status -eq "VERIFIED") ("Actual: " + $Result1.evidence_assessment.status)
    Assert-Test "Evidence reference is preserved" (@($Result1.evidence_assessment.evidence_references) -contains "synthetic://adapter-test-report-001")

    # Case 2: Compatible metadata but no evidence records.
    $Request2 = $BaseRequest.Clone()
    $Request2.request_id = "TEST-EVIDENCE-002"

    $Result2 = Invoke-RegistryResolverAdapter -Request $Request2 -RegistryPath $RegistryPath

    Assert-Test "Missing evidence does not change compatibility" ($Result2.status -eq "COMPATIBLE") ("Actual: " + $Result2.status)
    Assert-Test "Missing evidence returns INSUFFICIENT_INFORMATION" ($Result2.evidence_assessment.status -eq "INSUFFICIENT_INFORMATION") ("Actual: " + $Result2.evidence_assessment.status)

    # Case 3: Compatible metadata but failed required evidence.
    $Request3 = $BaseRequest.Clone()
    $Request3.request_id = "TEST-EVIDENCE-003"
    $Request3.evidence_records = @(
        @{
            evidence_id = "EV-INT-003"
            evidence_type = "test_report"
            reference = "synthetic://adapter-test-report-003"
            validation_status = "FAIL"
        }
    )

    $Result3 = Invoke-RegistryResolverAdapter -Request $Request3 -RegistryPath $RegistryPath

    Assert-Test "Failed evidence does not rewrite compatibility status" ($Result3.status -eq "COMPATIBLE") ("Actual: " + $Result3.status)
    Assert-Test "Failed evidence returns FAILED" ($Result3.evidence_assessment.status -eq "FAILED") ("Actual: " + $Result3.evidence_assessment.status)
    Assert-Test "Failed evidence ID is preserved" (@($Result3.evidence_assessment.failed_evidence_ids) -contains "EV-INT-003")

    # Case 4: Incompatible metadata but passing evidence.
    $Request4 = $BaseRequest.Clone()
    $Request4.request_id = "TEST-EVIDENCE-004"
    $Request4.environment = "cloud"
    $Request4.evidence_records = $PassingEvidence

    $Result4 = Invoke-RegistryResolverAdapter -Request $Request4 -RegistryPath $RegistryPath

    Assert-Test "Passing evidence cannot override INCOMPATIBLE" ($Result4.status -eq "INCOMPATIBLE") ("Actual: " + $Result4.status)
    Assert-Test "Evidence can independently be VERIFIED" ($Result4.evidence_assessment.status -eq "VERIFIED") ("Actual: " + $Result4.evidence_assessment.status)

    # Case 5: Strict fail-closed policy for conflicting records.
    $Request5 = $BaseRequest.Clone()
    $Request5.request_id = "TEST-EVIDENCE-005"
    $Request5.evidence_records = @(
        @{
            evidence_id = "EV-INT-005A"
            evidence_type = "test_report"
            reference = "synthetic://adapter-test-report-005a"
            validation_status = "PASS"
        },
        @{
            evidence_id = "EV-INT-005B"
            evidence_type = "test_report"
            reference = "synthetic://adapter-test-report-005b"
            validation_status = "FAIL"
        }
    )

    $Result5 = Invoke-RegistryResolverAdapter -Request $Request5 -RegistryPath $RegistryPath

    Assert-Test "Conflicting evidence fails closed" ($Result5.evidence_assessment.status -eq "FAILED") ("Actual: " + $Result5.evidence_assessment.status)
    Assert-Test "Failed record remains traceable" (@($Result5.evidence_assessment.failed_evidence_ids) -contains "EV-INT-005B")

    # Case 6: Empty registry with passing evidence.
    $EmptyRegistryPath = New-Fixture "empty" @{ bindings = @() }

    $Request6 = $BaseRequest.Clone()
    $Request6.request_id = "TEST-EVIDENCE-006"
    $Request6.evidence_records = $PassingEvidence

    $Result6 = Invoke-RegistryResolverAdapter -Request $Request6 -RegistryPath $EmptyRegistryPath

    Assert-Test "Empty registry remains INCOMPATIBLE" ($Result6.status -eq "INCOMPATIBLE") ("Actual: " + $Result6.status)
    Assert-Test "Evidence assessment remains independent for empty registry" ($Result6.evidence_assessment.status -eq "VERIFIED") ("Actual: " + $Result6.evidence_assessment.status)

    Write-Host ""
    Write-Host "Synthetic fixture files will be cleaned up."
}
catch {
    $script:Failed++
    Write-Host "[ERROR] $($_.Exception.Message)" -ForegroundColor Red
    Write-Host $_.ScriptStackTrace
}
finally {
    foreach ($FixturePath in $TempFiles) {
        if (Test-Path -LiteralPath $FixturePath) {
            Remove-Item -LiteralPath $FixturePath -Force
        }
    }

    Write-Host ""
    Write-Host "=== Test Summary ==="
    Write-Host "Passed: $Passed"
    Write-Host "Failed: $Failed"

    if ($Failed -gt 0) {
        Write-Host "RESULT: FAIL" -ForegroundColor Red
    } else {
        Write-Host "RESULT: PASS" -ForegroundColor Green
    }
}

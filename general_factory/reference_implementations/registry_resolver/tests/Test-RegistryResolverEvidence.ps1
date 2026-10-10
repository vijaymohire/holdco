$ErrorActionPreference = "Stop"
$Passed = 0
$Failed = 0

$SourcePath = Join-Path $PSScriptRoot "..\src\Test-RegistryEvidence.ps1"

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

try {
    if (-not (Test-Path -LiteralPath $SourcePath)) {
        throw "Evidence evaluator not found: $SourcePath"
    }

    . $SourcePath

    Write-Host "=== Registry Evidence Evaluator Tests ==="

    $Required = @("test_report", "configuration")

    $PassingEvidence = @(
        @{
            evidence_id = "EV-001"
            evidence_type = "test_report"
            reference = "synthetic://test-report-001"
            validation_status = "PASS"
        },
        @{
            evidence_id = "EV-002"
            evidence_type = "configuration"
            reference = "synthetic://configuration-001"
            validation_status = "PASS"
        }
    )

    $Result = Test-RegistryEvidence -EvidenceRecords $PassingEvidence -RequiredEvidenceTypes $Required

    Assert-Test "All required evidence passes" ($Result.status -eq "VERIFIED") ("Actual: " + $Result.status)
    Assert-Test "Required evidence types preserved" (@($Result.required_evidence_types).Count -eq 2)
    Assert-Test "Evidence records preserved" (@($Result.evaluated_evidence).Count -eq 2)
    Assert-Test "Evidence references preserved" (@($Result.evidence_references).Count -eq 2)
    Assert-Test "Findings returned as collection" ($null -ne $Result.findings)

    $MissingResult = Test-RegistryEvidence -EvidenceRecords @($PassingEvidence[0]) -RequiredEvidenceTypes $Required
    Assert-Test "Missing evidence type is insufficient" ($MissingResult.status -eq "INSUFFICIENT_INFORMATION")
    Assert-Test "Missing type is identified" (@($MissingResult.missing_evidence_types) -contains "configuration")

    $UnvalidatedEvidence = @(
        @{
            evidence_id = "EV-003"
            evidence_type = "test_report"
            reference = "synthetic://test-report-003"
            validation_status = "NOT_RUN"
        }
    )

    $UnvalidatedResult = Test-RegistryEvidence -EvidenceRecords $UnvalidatedEvidence -RequiredEvidenceTypes @("test_report")
    Assert-Test "Unvalidated evidence is insufficient" ($UnvalidatedResult.status -eq "INSUFFICIENT_INFORMATION")
    Assert-Test "Unvalidated evidence ID is identified" (@($UnvalidatedResult.unvalidated_evidence_ids) -contains "EV-003")

    $FailedEvidence = @(
        @{
            evidence_id = "EV-004"
            evidence_type = "test_report"
            reference = "synthetic://test-report-004"
            validation_status = "FAIL"
        }
    )

    $FailedResult = Test-RegistryEvidence -EvidenceRecords $FailedEvidence -RequiredEvidenceTypes @("test_report")
    Assert-Test "Failed required evidence returns FAILED" ($FailedResult.status -eq "FAILED")
    Assert-Test "Failed evidence ID is identified" (@($FailedResult.failed_evidence_ids) -contains "EV-004")

    $PassingAndFailing = @(
        @{
            evidence_id = "EV-005"
            evidence_type = "test_report"
            reference = "synthetic://test-report-005"
            validation_status = "PASS"
        },
        @{
            evidence_id = "EV-006"
            evidence_type = "test_report"
            reference = "synthetic://test-report-006"
            validation_status = "FAIL"
        }
    )

    $MixedResult = Test-RegistryEvidence -EvidenceRecords $PassingAndFailing -RequiredEvidenceTypes @("test_report")
    Assert-Test "Failed record overrides passing record for the same required type" ($MixedResult.status -eq "FAILED") ("Actual: " + $MixedResult.status)
    Assert-Test "Mixed result identifies the failed evidence ID" (@($MixedResult.failed_evidence_ids) -contains "EV-006")

    $EmptyResult = Test-RegistryEvidence -EvidenceRecords @() -RequiredEvidenceTypes @("test_report")
    Assert-Test "Empty evidence is insufficient" ($EmptyResult.status -eq "INSUFFICIENT_INFORMATION")

    $OptionalResult = Test-RegistryEvidence -EvidenceRecords @() -RequiredEvidenceTypes @()
    Assert-Test "No required evidence types is insufficient" ($OptionalResult.status -eq "INSUFFICIENT_INFORMATION")

    $MalformedRejected = $false
    try {
        Test-RegistryEvidence -EvidenceRecords @(@{
            evidence_id = "EV-BAD"
            evidence_type = "test_report"
            reference = "synthetic://bad"
        }) -RequiredEvidenceTypes @("test_report") | Out-Null
    } catch {
        $MalformedRejected = $true
    }
    Assert-Test "Malformed evidence record is rejected" $MalformedRejected

    $DuplicateRejected = $false
    try {
        $Duplicate = @(
            @{
                evidence_id = "EV-DUP"
                evidence_type = "test_report"
                reference = "synthetic://duplicate-1"
                validation_status = "PASS"
            },
            @{
                evidence_id = "EV-DUP"
                evidence_type = "configuration"
                reference = "synthetic://duplicate-2"
                validation_status = "PASS"
            }
        )
        Test-RegistryEvidence -EvidenceRecords $Duplicate -RequiredEvidenceTypes @("test_report") | Out-Null
    } catch {
        $DuplicateRejected = $true
    }
    Assert-Test "Duplicate evidence IDs are rejected" $DuplicateRejected

    $InvalidStatusRejected = $false
    try {
        Test-RegistryEvidence -EvidenceRecords @(@{
            evidence_id = "EV-INVALID"
            evidence_type = "test_report"
            reference = "synthetic://invalid"
            validation_status = "UNKNOWN"
        }) -RequiredEvidenceTypes @("test_report") | Out-Null
    } catch {
        $InvalidStatusRejected = $true
    }
    Assert-Test "Unsupported validation status is rejected" $InvalidStatusRejected

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
catch {
    $Failed++
    Write-Host "[ERROR] $($_.Exception.Message)" -ForegroundColor Red
    Write-Host $_.ScriptStackTrace
    Write-Host "RESULT: FAIL" -ForegroundColor Red
}

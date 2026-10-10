param()

$ErrorActionPreference = "Stop"
$Passed = 0
$Failed = 0
$TempFiles = @()

$Root = Split-Path -Parent $PSScriptRoot
$AdapterPath = Join-Path $Root "src\Invoke-RegistryResolverAdapter.ps1"
$ResolverPath = Join-Path $Root "src\Resolve-RegistryBinding.ps1"
$EvaluatorPath = Join-Path $Root "src\Test-RegistryCompatibility.ps1"

function Assert-Test {
    param([string]$Name, [bool]$Condition, [string]$Detail = "")
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
    $Path = Join-Path ([System.IO.Path]::GetTempPath()) ("registry-adapter-" + $Label + "-" + [guid]::NewGuid().ToString("N") + ".json")
    $Document | ConvertTo-Json -Depth 20 | Set-Content -LiteralPath $Path -Encoding UTF8
    $script:TempFiles += $Path
    return $Path
}

try {
    Write-Host "=== Permanent Registry Resolver Adapter Integration Test ==="

    Assert-Test "Adapter file exists" (Test-Path -LiteralPath $AdapterPath)
    Assert-Test "Resolver dependency exists" (Test-Path -LiteralPath $ResolverPath)
    Assert-Test "Evaluator dependency exists" (Test-Path -LiteralPath $EvaluatorPath)

    if (-not (Test-Path -LiteralPath $AdapterPath) -or -not (Test-Path -LiteralPath $ResolverPath) -or -not (Test-Path -LiteralPath $EvaluatorPath)) {
        throw "A required implementation file is missing. Fix the path before continuing."
    }

    . $AdapterPath
    $AdapterCommand = Get-Command Invoke-RegistryResolverAdapter -ErrorAction SilentlyContinue
    Assert-Test "Adapter function loads" ($null -ne $AdapterCommand)
    if ($null -eq $AdapterCommand) { throw "Invoke-RegistryResolverAdapter was not defined by the adapter script." }

    $CompatibleBinding = @{
        binding_id = "SYNTH-COMPAT-001"
        framework_capability_id = "qai_experimentation"
        environment = "local"
        execution_mode = "virtual"
        supported_resources = @("cpu")
        implementation_version = "1.0.0"
    }

    $CompatibleRegistry = @{ bindings = @($CompatibleBinding) }
    $CompatiblePath = New-Fixture "compatible" $CompatibleRegistry
    $Request = @{
        request_id = "TEST-ADAPTER-001"
        framework_capability_id = "qai_experimentation"
        environment = "local"
        execution_mode = "virtual"
        required_resources = @("cpu")
        implementation_version = "1.0.0"
    }

    $CompatibleResult = Invoke-RegistryResolverAdapter -Request $Request -RegistryPath $CompatiblePath
    Assert-Test "Compatible candidate returns COMPATIBLE" ($CompatibleResult.status -eq "COMPATIBLE") ("Actual: " + $CompatibleResult.status)
    Assert-Test "Request ID is preserved" ($CompatibleResult.request_id -eq $Request.request_id)
    Assert-Test "Candidate is retained" (@($CompatibleResult.matched_bindings).Count -ge 1)
    Assert-Test "Findings is an array" ($null -ne $CompatibleResult.findings)
    Assert-Test "Evidence references is an array" ($null -ne $CompatibleResult.evidence_references)

    $MismatchRequest = $Request.Clone()
    $MismatchRequest.request_id = "TEST-ADAPTER-002"
    $MismatchRequest.environment = "cloud"
    $MismatchResult = Invoke-RegistryResolverAdapter -Request $MismatchRequest -RegistryPath $CompatiblePath
    Assert-Test "Environment mismatch returns INCOMPATIBLE" ($MismatchResult.status -eq "INCOMPATIBLE") ("Actual: " + $MismatchResult.status)

    $UnknownRequest = $Request.Clone()
    $UnknownRequest.request_id = "TEST-ADAPTER-003"
    $UnknownRequest.framework_capability_id = "capability_not_registered"
    $UnknownResult = Invoke-RegistryResolverAdapter -Request $UnknownRequest -RegistryPath $CompatiblePath
    Assert-Test "Unknown capability returns INCOMPATIBLE" ($UnknownResult.status -eq "INCOMPATIBLE") ("Actual: " + $UnknownResult.status)
    Assert-Test "Unknown capability has no matched candidates" (@($UnknownResult.matched_bindings).Count -eq 0)

    $EmptyPath = New-Fixture "empty" @{ bindings = @() }
    $EmptyResult = Invoke-RegistryResolverAdapter -Request $Request -RegistryPath $EmptyPath
    Assert-Test "Empty registry returns INCOMPATIBLE" ($EmptyResult.status -eq "INCOMPATIBLE") ("Actual: " + $EmptyResult.status)

    $MissingResourcesRequest = $Request.Clone()
    $MissingResourcesRequest.request_id = "TEST-ADAPTER-004"
    $MissingResourcesRequest.required_resources = @("gpu")
    $MissingResourcesResult = Invoke-RegistryResolverAdapter -Request $MissingResourcesRequest -RegistryPath $CompatiblePath
    Assert-Test "Unsupported resource returns INCOMPATIBLE" ($MissingResourcesResult.status -eq "INCOMPATIBLE") ("Actual: " + $MissingResourcesResult.status)

    $InvalidRequestRejected = $false
    try {
        Invoke-RegistryResolverAdapter -Request @{ framework_capability_id = "qai_experimentation" } -RegistryPath $CompatiblePath | Out-Null
    } catch {
        $InvalidRequestRejected = $true
    }
    Assert-Test "Missing request ID is rejected" $InvalidRequestRejected

    Write-Host ""
    Write-Host "Temporary fixture files were created outside the repository."
} catch {
    $script:Failed++
    Write-Host "[ERROR] $($_.Exception.Message)" -ForegroundColor Red
} finally {
    foreach ($Path in $TempFiles) {
        if (Test-Path -LiteralPath $Path) {
            Remove-Item -LiteralPath $Path -Force
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

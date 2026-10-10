[CmdletBinding()]
param()
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
$Base = "E:\Bhadale IT\github\holdco\general_factory\reference_implementations\registry_resolver"
$Evaluator = Join-Path $Base "src\Test-RegistryCompatibility.ps1"
if (-not (Test-Path -LiteralPath $Evaluator -PathType Leaf)) { throw "Evaluator not found: $Evaluator" }
. $Evaluator
$Results = @()
$Failures = @()
function Test-Status {
    param([string]$Id,[string]$Name,[System.Collections.IDictionary]$Request,[System.Collections.IDictionary]$Registry,[string]$Expected)
    try {
        $R = Test-RegistryCompatibility -Request $Request -Registry $Registry
        $Actual = [string]$R.status
        $Pass = $Actual -eq $Expected
        $script:Results += [pscustomobject]@{TestId=$Id;Scenario=$Name;Expected=$Expected;Actual=$Actual;Result=$(if($Pass){"PASS"}else{"FAIL"})}
        if (-not $Pass) { $script:Failures += "$Id expected $Expected, got $Actual" }
    } catch {
        $script:Results += [pscustomobject]@{TestId=$Id;Scenario=$Name;Expected=$Expected;Actual="ERROR: $($_.Exception.Message)";Result="FAIL"}
        $script:Failures += "$Id unexpected error: $($_.Exception.Message)"
    }
}
function Test-Error {
    param([string]$Id,[string]$Name,[System.Collections.IDictionary]$Request,[System.Collections.IDictionary]$Registry)
    $Caught = $false
    try { $null = Test-RegistryCompatibility -Request $Request -Registry $Registry } catch { $Caught = $true }
    $script:Results += [pscustomobject]@{TestId=$Id;Scenario=$Name;Expected="ERROR";Actual=$(if($Caught){"ERROR raised"}else{"No error"});Result=$(if($Caught){"PASS"}else{"FAIL"})}
    if (-not $Caught) { $script:Failures += "$Id expected a validation error" }
}
$Req = @{request_id="TEST-001";framework_capability_id="qai_experimentation";environment="local";execution_mode="virtual";implementation_version="1.0.0";required_resources=@("cpu")}
$Good = @{binding_id="GOOD";framework_capability_id="qai_experimentation";environment="local";execution_mode="virtual";implementation_version="1.0.0";supported_resources=@("cpu","gpu")}
$Cloud = @{binding_id="CLOUD";framework_capability_id="qai_experimentation";environment="cloud";execution_mode="virtual";implementation_version="1.0.0";supported_resources=@("cpu")}
Test-Status "EVAL-01" "All constraints match" $Req @{bindings=@($Good)} "COMPATIBLE"
Test-Status "EVAL-02" "Environment mismatch" $Req @{bindings=@($Cloud)} "INCOMPATIBLE"
$NoEnv = @{binding_id="NO-ENV";framework_capability_id="qai_experimentation";execution_mode="virtual";implementation_version="1.0.0";supported_resources=@("cpu")}
Test-Status "EVAL-03" "Environment metadata missing" $Req @{bindings=@($NoEnv)} "INSUFFICIENT_INFORMATION"
$GpuReq = $Req.Clone(); $GpuReq["required_resources"] = @("cpu","gpu")
Test-Status "EVAL-04" "GPU requirement not supported" $GpuReq @{bindings=@($Cloud)} "INCOMPATIBLE"
$NoResources = @{binding_id="NO-RESOURCES";framework_capability_id="qai_experimentation";environment="local";execution_mode="virtual";implementation_version="1.0.0"}
Test-Status "EVAL-05" "Resource metadata missing" $Req @{bindings=@($NoResources)} "INSUFFICIENT_INFORMATION"
$VersionReq = $Req.Clone(); $VersionReq["implementation_version"] = "2.0.0"
Test-Status "EVAL-06" "Version mismatch" $VersionReq @{bindings=@($Good)} "INCOMPATIBLE"
Test-Status "EVAL-07" "Compatible candidate among multiple" $Req @{bindings=@($Cloud,$Good)} "COMPATIBLE"
$Other = @{binding_id="OTHER";framework_capability_id="different_capability"}
Test-Status "EVAL-08" "No capability candidate" $Req @{bindings=@($Other)} "INCOMPATIBLE"
$Minimal = @{request_id="TEST-MINIMAL";framework_capability_id="qai_experimentation"}
Test-Status "EVAL-09" "Optional constraints omitted" $Minimal @{bindings=@($Good)} "COMPATIBLE"
Test-Error "EVAL-10" "Bindings collection missing" $Req @{registry_id="MALFORMED"}
Test-Error "EVAL-11" "Request ID missing" @{framework_capability_id="qai_experimentation"} @{bindings=@($Good)}
Write-Host ""; Write-Host "=== Evaluator Test Results ==="
$Results | Format-Table TestId,Result,Scenario,Expected,Actual -AutoSize | Out-Host
$Passed = @($Results | Where-Object { $_.Result -eq "PASS" }).Count
Write-Host ""; Write-Host "Passed: $Passed / $($Results.Count)"
if ($Failures.Count -gt 0) { $Failures | ForEach-Object { Write-Host $_ }; throw "Evaluator tests failed." }
Write-Host "ALL BEHAVIORAL TESTS PASSED."
Write-Host "Only in-memory synthetic data was used."
Write-Host "Production registry and Bootstrapper were not modified."

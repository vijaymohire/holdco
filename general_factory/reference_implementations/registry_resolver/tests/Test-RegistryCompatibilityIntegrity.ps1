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
function Add-Check {
    param([string]$Id,[string]$Name,[bool]$Passed,[string]$Detail)
    $script:Results += [pscustomobject]@{TestId=$Id;Check=$Name;Result=$(if($Passed){"PASS"}else{"FAIL"});Detail=$Detail}
    if (-not $Passed) { $script:Failures += "$Id - $Name : $Detail" }
}
$Req = @{request_id="INTEGRITY-001";framework_capability_id="qai_experimentation";environment="local";execution_mode="virtual";implementation_version="1.0.0";required_resources=@("cpu","gpu")}
$Good = @{binding_id="BINDING-GOOD";framework_capability_id="qai_experimentation";environment="local";execution_mode="virtual";implementation_version="1.0.0";supported_resources=@("cpu","gpu")}
$Registry = @{registry_id="SYNTHETIC-INTEGRITY";bindings=@($Good)}
$Result = Test-RegistryCompatibility -Request $Req -Registry $Registry
Write-Host ""; Write-Host "=== Compatibility Result Integrity Tests ==="
Add-Check "INT-01" "Request ID returned" ($Result.request_id -eq $Req.request_id) "request_id must match the input."
Add-Check "INT-02" "Status belongs to contract enum" (@("COMPATIBLE","INCOMPATIBLE","INSUFFICIENT_INFORMATION") -contains [string]$Result.status) "Unexpected status value."
Add-Check "INT-03" "Requested capability returned" ($Result.requested_capability -eq $Req.framework_capability_id) "Requested capability must be preserved."
Add-Check "INT-04" "Matched bindings is an array" ($Result.matched_bindings -is [array]) "matched_bindings should be an array."
Add-Check "INT-05" "Candidate results is an array" ($Result.candidate_results -is [array]) "candidate_results should be an array."
Add-Check "INT-06" "Findings is an array" ($Result.findings -is [array]) "findings should be an array."
Add-Check "INT-07" "Evidence references is an array" ($Result.evidence_references -is [array]) "evidence_references should be an array."
Add-Check "INT-08" "Compatible result has compatible candidate" (($Result.status -ne "COMPATIBLE") -or (@($Result.candidate_results | Where-Object { $_.status -eq "COMPATIBLE" }).Count -gt 0)) "Overall COMPATIBLE must have at least one compatible candidate."
Add-Check "INT-09" "Candidate has binding identifier" ($Result.candidate_results[0].binding_id -eq "BINDING-GOOD") "Candidate identity should be traceable."
Add-Check "INT-10" "Evidence references identify candidate" (@($Result.evidence_references) -contains "BINDING-GOOD") "Evidence should identify the evaluated candidate."
Add-Check "INT-11" "Findings include candidate status" (@($Result.findings | Where-Object { $_ -match "BINDING-GOOD" -and $_ -match "COMPATIBLE" }).Count -gt 0) "Findings should include candidate identity and status."
$UnknownBinding = @{binding_id="BINDING-UNKNOWN";framework_capability_id="qai_experimentation";execution_mode="virtual";implementation_version="1.0.0";supported_resources=@("cpu","gpu")}
$UnknownResult = Test-RegistryCompatibility -Request $Req -Registry @{bindings=@($UnknownBinding)}
Add-Check "INT-12" "Unknown metadata remains unresolved" ($UnknownResult.status -eq "INSUFFICIENT_INFORMATION") "Missing environment metadata must not be treated as success."
$Mixed = Test-RegistryCompatibility -Request $Req -Registry @{bindings=@($UnknownBinding,$Good)}
Add-Check "INT-13" "Compatible candidate wins over unresolved candidate" ($Mixed.status -eq "COMPATIBLE") "At least one compatible candidate should produce COMPATIBLE."
$Empty = Test-RegistryCompatibility -Request $Req -Registry @{bindings=@()}
Add-Check "INT-14" "Empty registry follows proposed contract" ($Empty.status -eq "INCOMPATIBLE" -and @($Empty.matched_bindings).Count -eq 0) "No matching candidates in a valid registry should be INCOMPATIBLE."
$BadBindingRejected = $false
try { $null = Test-RegistryCompatibility -Request $Req -Registry @{bindings=@("not-an-object")} } catch { $BadBindingRejected = $true }
Add-Check "INT-15" "Malformed binding rejected" $BadBindingRejected "A binding must be a dictionary/object."
Write-Host ""; Write-Host "=== Integrity Results ==="
$Results | Format-Table TestId,Result,Check,Detail -AutoSize | Out-Host
$Passed = @($Results | Where-Object { $_.Result -eq "PASS" }).Count
Write-Host ""; Write-Host "Passed: $Passed / $($Results.Count)"
if ($Failures.Count -gt 0) { Write-Host "Failures:"; $Failures | ForEach-Object { Write-Host " - $_" }; throw "Integrity checks failed." }
Write-Host "ALL INTEGRITY CHECKS PASSED."
Write-Host "Only synthetic in-memory data was used."
Write-Host "Evaluator source, production registry, and Bootstrapper were not modified."

[CmdletBinding()]
param()
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
$Root = "E:\Bhadale IT\github\holdco"
$Base = Join-Path $Root "general_factory\reference_implementations\registry_resolver"
$ResolverPath = Join-Path $Base "src\Resolve-RegistryBinding.ps1"
$EvaluatorPath = Join-Path $Base "src\Test-RegistryCompatibility.ps1"
foreach ($Path in @($ResolverPath,$EvaluatorPath)) { if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) { throw "Required source not found: $Path" } }
. $ResolverPath
. $EvaluatorPath
$TempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("GF-Adapter-Test-" + [guid]::NewGuid().ToString("N"))
$Results = @()
$Failures = @()
function ConvertTo-PlainData {
    param([object]$Value)
    if ($null -eq $Value) { return $null }
    if ($Value -is [System.Collections.IDictionary]) {
        $Output = @{}
        foreach ($Key in $Value.Keys) { $Output[[string]$Key] = ConvertTo-PlainData $Value[$Key] }
        return $Output
    }
    if ($Value -is [System.Collections.IEnumerable] -and $Value -isnot [string]) {
        $OutputArray = @()
        foreach ($Item in $Value) { $OutputArray += ,(ConvertTo-PlainData $Item) }
        return ,$OutputArray
    }
    if ($Value -is [System.Management.Automation.PSCustomObject]) {
        $Output = @{}
        foreach ($Property in $Value.PSObject.Properties) { $Output[$Property.Name] = ConvertTo-PlainData $Property.Value }
        return $Output
    }
    return $Value
}
function Invoke-RegistryResolverAdapter {
    param([System.Collections.IDictionary]$Request,[System.Collections.IDictionary]$Registry,[string]$RegistryPath)
    $Registry | ConvertTo-Json -Depth 20 | Set-Content -LiteralPath $RegistryPath -Encoding UTF8
    $Lookup = Resolve-RegistryBinding -RegistryPath $RegistryPath -CapabilityId ([string]$Request.framework_capability_id) -RequestId ([string]$Request.request_id)
    $CandidateBindings = @($Lookup.matched_bindings | ForEach-Object { ConvertTo-PlainData $_ })
    $EvaluationRegistry = @{bindings=@($CandidateBindings)}
    $Evaluation = Test-RegistryCompatibility -Request $Request -Registry $EvaluationRegistry
    return [pscustomobject]@{
        request_id = $Evaluation.request_id
        status = $Evaluation.status
        requested_capability = $Evaluation.requested_capability
        matched_bindings = @($CandidateBindings)
        candidate_results = @($Evaluation.candidate_results)
        findings = @($Evaluation.findings)
        evidence_references = @($Evaluation.evidence_references)
        lookup_findings = @($Lookup.findings)
    }
}
function Add-Check {
    param([string]$Id,[string]$Name,[string]$Expected,[string]$Actual)
    $Passed = $Expected -eq $Actual
    $script:Results += [pscustomobject]@{TestId=$Id;Scenario=$Name;Expected=$Expected;Actual=$Actual;Result=$(if($Passed){"PASS"}else{"FAIL"})}
    if (-not $Passed) { $script:Failures += "$Id expected $Expected but received $Actual" }
}
try {
    New-Item -ItemType Directory -Path $TempRoot -Force | Out-Null
    $Request = @{request_id="ADAPTER-001";framework_capability_id="qai_experimentation";environment="local";execution_mode="virtual";implementation_version="1.0.0";required_resources=@("cpu")}
    $Good = @{binding_id="ADAPTER-BINDING-001";framework_capability_id="qai_experimentation";environment="local";execution_mode="virtual";implementation_version="1.0.0";supported_resources=@("cpu","gpu")}
    $Cloud = @{binding_id="ADAPTER-BINDING-002";framework_capability_id="qai_experimentation";environment="cloud";execution_mode="virtual";implementation_version="1.0.0";supported_resources=@("cpu")}
    Write-Host ""; Write-Host "=== Registry Resolver Adapter Integration Tests ==="
    $Result = Invoke-RegistryResolverAdapter -Request $Request -Registry @{registry_id="SYNTHETIC-1";bindings=@($Good)} -RegistryPath (Join-Path $TempRoot "registry-compatible.json")
    Add-Check "ADAPTER-01" "Compatible candidate flows through lookup and evaluator" "COMPATIBLE" ([string]$Result.status)
    Add-Check "ADAPTER-02" "Request ID preserved" "ADAPTER-001" ([string]$Result.request_id)
    Add-Check "ADAPTER-03" "One candidate retained" "1" ([string]@($Result.matched_bindings).Count)
    $Result = Invoke-RegistryResolverAdapter -Request $Request -Registry @{registry_id="SYNTHETIC-2";bindings=@($Cloud)} -RegistryPath (Join-Path $TempRoot "registry-mismatch.json")
    Add-Check "ADAPTER-04" "Environment mismatch flows through evaluator" "INCOMPATIBLE" ([string]$Result.status)
    $Other = @{binding_id="ADAPTER-OTHER";framework_capability_id="different_capability"}
    $Result = Invoke-RegistryResolverAdapter -Request $Request -Registry @{registry_id="SYNTHETIC-3";bindings=@($Other)} -RegistryPath (Join-Path $TempRoot "registry-no-match.json")
    Add-Check "ADAPTER-05" "No matching capability is incompatible" "INCOMPATIBLE" ([string]$Result.status)
    Add-Check "ADAPTER-06" "No-match result contains zero candidates" "0" ([string]@($Result.matched_bindings).Count)
    Add-Check "ADAPTER-07" "Unified result includes findings array" "True" ([string]($null -ne $Result.findings -and $Result.findings -is [array]))
    Add-Check "ADAPTER-08" "Unified result includes evidence array" "True" ([string]($null -ne $Result.evidence_references -and $Result.evidence_references -is [array]))
    Write-Host ""; $Results | Format-Table TestId,Result,Scenario,Expected,Actual -AutoSize | Out-Host
    $Passed = @($Results | Where-Object { $_.Result -eq "PASS" }).Count
    Write-Host ""; Write-Host "Passed: $Passed / $($Results.Count)"
    if ($Failures.Count -gt 0) { $Failures | ForEach-Object { Write-Host $_ }; throw "Adapter integration tests failed." }
    Write-Host "ALL ADAPTER INTEGRATION CHECKS PASSED."
}
finally {
    if (Test-Path -LiteralPath $TempRoot -PathType Container) { Remove-Item -LiteralPath $TempRoot -Recurse -Force; Write-Host "Synthetic registry files cleaned up." }
}
Write-Host "Existing resolver, evaluator source, production registry, and Bootstrapper were not modified."

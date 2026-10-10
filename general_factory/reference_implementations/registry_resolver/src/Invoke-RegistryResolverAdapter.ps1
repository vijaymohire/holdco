function Invoke-RegistryResolverAdapter {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Collections.IDictionary]$Request,

        [Parameter(Mandatory)]
        [string]$RegistryPath
    )

    Set-StrictMode -Version Latest

    foreach ($Field in @("request_id", "framework_capability_id")) {
        if (-not $Request.Contains($Field) -or [string]::IsNullOrWhiteSpace([string]$Request[$Field])) {
            throw "Request is missing required field: $Field"
        }
    }

    if (-not (Test-Path -LiteralPath $RegistryPath -PathType Leaf)) {
        throw "Registry file not found: $RegistryPath"
    }

    $ModuleDir = Split-Path -Parent $PSCommandPath
    $ResolverPath = Join-Path $ModuleDir "Resolve-RegistryBinding.ps1"
    $EvaluatorPath = Join-Path $ModuleDir "Test-RegistryCompatibility.ps1"

    foreach ($Path in @($ResolverPath, $EvaluatorPath)) {
        if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
            throw "Required module file not found: $Path"
        }
    }

    # Load functions into this invocation scope.
    . $ResolverPath
    . $EvaluatorPath

    # Existing resolver reads the registry and selects capability candidates.
    $Lookup = Resolve-RegistryBinding -RegistryPath $RegistryPath -CapabilityId ([string]$Request["framework_capability_id"]) -RequestId ([string]$Request["request_id"])

    # Convert returned JSON-style objects into dictionaries for the evaluator.
    $Candidates = @()
    foreach ($Item in @($Lookup.matched_bindings)) {
        if ($Item -is [System.Collections.IDictionary]) {
            $Candidates += ,$Item
        }
        elseif ($null -ne $Item -and $Item -is [System.Management.Automation.PSCustomObject]) {
            $Candidate = @{}
            foreach ($Property in $Item.PSObject.Properties) {
                $Candidate[$Property.Name] = $Property.Value
            }
            $Candidates += ,$Candidate
        }
        else {
            throw "Resolver returned a candidate in an unsupported format."
        }
    }

    $EvaluationRegistry = @{ bindings = @($Candidates) }
    $Evaluation = Test-RegistryCompatibility -Request $Request -Registry $EvaluationRegistry

    return [pscustomobject]@{
        request_id = $Evaluation.request_id
        status = $Evaluation.status
        requested_capability = $Evaluation.requested_capability
        matched_bindings = @($Evaluation.matched_bindings)
        candidate_results = @($Evaluation.candidate_results)
        findings = @($Evaluation.findings)
        evidence_references = @($Evaluation.evidence_references)
        lookup_findings = @($Lookup.findings)
    }
}

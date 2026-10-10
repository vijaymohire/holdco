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
    $EvidenceEvaluatorPath = Join-Path $ModuleDir "Test-RegistryEvidence.ps1"

    foreach ($Path in @($ResolverPath, $EvaluatorPath, $EvidenceEvaluatorPath)) {
        if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
            throw "Required module file not found: $Path"
        }
    }

    # Load functions into this invocation scope.
    . $ResolverPath
    . $EvaluatorPath
    . $EvidenceEvaluatorPath

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

    # Assess evidence independently from metadata compatibility.
    $EvidenceRecords = @()
    if ($Request.Contains("evidence_records")) {
        $EvidenceRecords = @(
            foreach ($Record in @($Request["evidence_records"])) {
                if ($Record -is [System.Collections.IDictionary]) {
                    $Record
                } elseif ($null -ne $Record -and $Record -is [System.Management.Automation.PSCustomObject]) {
                    $RecordDictionary = @{}
                    foreach ($Property in $Record.PSObject.Properties) {
                        $RecordDictionary[$Property.Name] = $Property.Value
                    }
                    $RecordDictionary
                } else {
                    throw "Evidence records must be dictionaries or JSON-style objects."
                }
            }
        )
    }

    # No supplied requirement means evidence remains unresolved, not implicitly verified.
    $RequiredEvidenceTypes = @("test_report")
    if ($Request.Contains("required_evidence_types")) {
        $RequiredEvidenceTypes = @($Request["required_evidence_types"])
    }

    $EvidenceAssessment = Test-RegistryEvidence -EvidenceRecords $EvidenceRecords -RequiredEvidenceTypes $RequiredEvidenceTypes

    return [pscustomobject]@{
        request_id = $Evaluation.request_id
        status = $Evaluation.status
        requested_capability = $Evaluation.requested_capability
        matched_bindings = @($Evaluation.matched_bindings)
        candidate_results = @($Evaluation.candidate_results)
        findings = @($Evaluation.findings)
        evidence_references = @($Evaluation.evidence_references)
        lookup_findings = @($Lookup.findings)
        evidence_assessment = $EvidenceAssessment
    }
}

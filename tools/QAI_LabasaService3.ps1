$Root = "E:\Bhadale IT\github\holdco"
$Base = Join-Path $Root "qai_labaas\configuration"

if (-not (Test-Path -LiteralPath (Join-Path $Root "qai_labaas") -PathType Container)) {
    throw "qai_labaas directory not found. No changes made."
}

New-Item -ItemType Directory -Path $Base -Force | Out-Null

$Documents = [ordered]@{
    "README.md" = @'
# LabaaS Configuration

Defines the configuration contract for client environments and deployment profiles.

Configuration selects approved profiles and adapters. It must not bypass
identity, policy, resource, deployment, or evidence controls.

## Status

Documentation foundation; runtime loading and validation are pending.
'@
    "environment_variables.md" = @'
# Environment Variables

## Documented variables

| Variable | Purpose |
|---|---|
| QAI_ENVIRONMENT | Environment classification |
| QAI_PROJECT | Client project identifier |
| QAI_RUNTIME_MODE | Runtime mode |
| QAI_RESOURCE_PROFILE | Resource profile selection |
| QAI_STORAGE_PROFILE | Approved storage profile |
| QAI_DATABASE_PROFILE | Approved database profile |
| QAI_DEPLOYMENT_TARGET | Deployment target |
| QAI_HPC_ADAPTER | HPC adapter selection or none |
| QAI_GPU_ADAPTER | GPU adapter selection or none |
| QAI_QUANTUM_ADAPTER | Quantum adapter selection or none |
| QAI_COMMUNICATION_ADAPTER | Communication adapter selection or none |
| QAI_EVIDENCE_PATH | Approved evidence location |
| QAI_ARTIFACT_PATH | Approved artifact location |
| QAI_SECRET_PROVIDER | Approved secret-provider selection |

## Rules

- Configuration selects deployment profiles.
- Secrets remain outside source control.
- Secrets must be supplied through an approved identity or secret mechanism.
- Paths and profile names must be validated before use.
- Adapter selection does not prove that an adapter is installed or operational.
- Do not assume that an unspecified profile or adapter is available.

The exact variable names above are retained from the development plan.
'@
    "profile_selection.md" = @'
# Profile Selection

Profiles describe approved environment, resource, storage, database, and
deployment choices.

## Intended flow

1. Read configuration from an approved source.
2. Validate required values and allowed selections.
3. Resolve profile references.
4. Check compatibility with available implementations and policies.
5. Prepare a deployment plan for review.
6. Record relevant validation and provenance evidence.

This flow is a proposed design boundary, not an implemented runtime workflow.
The General Factory and QAI DevOps responsibilities should be reused where
appropriate rather than duplicated in LabaaS.
'@
    "validation_rules.md" = @'
# Configuration Validation Rules

## Initial requirements

- Distinguish required values from optional adapter selections.
- Reject unresolved placeholders before deployment.
- Validate profile identifiers against approved definitions.
- Validate deployment targets and resource requirements.
- Treat paths as references requiring authorization and existence checks.
- Do not log secret values.
- Do not store credentials, access tokens, or secret values in source control.
- Preserve the difference between validation failure and insufficient information.
- Record configuration version and validation outcome where appropriate.

Detailed schemas and executable validation are pending.
'@
}

foreach ($Entry in $Documents.GetEnumerator()) {
    $Path = Join-Path $Base $Entry.Key

    if (Test-Path -LiteralPath $Path -PathType Leaf) {
        Write-Host "[PRESERVED] $Path"
    }
    else {
        Set-Content -LiteralPath $Path -Value $Entry.Value -Encoding UTF8
        Write-Host "[CREATED]  $Path"
    }
}

Write-Host "`nConfiguration documentation pass completed."


# QAI DevOps - Environment Variable Binding Model
# Non-destructive: existing files are preserved.

$ErrorActionPreference = "Stop"

$RepoRoot = "E:\Bhadale IT\github\holdco"
$Root = Join-Path $RepoRoot "qai_devops"
$Docs = Join-Path $Root "docs"

if (-not (Test-Path -LiteralPath $Root -PathType Container)) {
    throw "QAI DevOps directory not found: $Root"
}

if (-not (Test-Path -LiteralPath $Docs -PathType Container)) {
    throw "QAI DevOps docs directory not found: $Docs"
}

$Documentation = @'
# Environment Variable Binding Model

## Purpose

Environment variables select or parameterize deployment profiles.
They must not turn core QAI application code into a collection of
vendor-specific implementations.

The binding model separates deployment configuration from core
application logic. Adapter and provider implementations are selected
through configuration and the relevant supported interfaces.

## Variable definitions

| Variable | Documented value | Purpose |
|---|---|---|
| `QAI_ENVIRONMENT` | `client-prod` | Selects the deployment environment. |
| `QAI_PROJECT` | `client-modernization` | Identifies the project configuration. |
| `QAI_RUNTIME_MODE` | `production` | Selects the runtime mode. |
| `QAI_RESOURCE_PROFILE` | `client-existing` | Selects the resource profile. |
| `QAI_STORAGE_PROFILE` | `existing_nfs` | Selects the storage profile. |
| `QAI_DATABASE_PROFILE` | `client_database` | Selects the database profile. |
| `QAI_HPC_ADAPTER` | `slurm` | Selects the HPC adapter. |
| `QAI_GPU_ADAPTER` | `nvidia` | Selects the GPU adapter. |
| `QAI_QUANTUM_ADAPTER` | `generic_qpu` | Selects the quantum adapter. |
| `QAI_COMMUNICATION_ADAPTER` | `client_network` | Selects the communication adapter. |
| `QAI_DEPLOYMENT_TARGET` | `client_datacenter` | Selects the deployment target. |
| `QAI_EVIDENCE_PATH` | `<client-approved-location>` | Identifies the approved evidence location. |
| `QAI_ARTIFACT_PATH` | `<client-approved-location>` | Identifies the approved artifact location. |
| `QAI_SECRET_PROVIDER` | `<approved-secret-provider>` | Identifies the approved secret provider. |

## Binding rules

1. Variables select or parameterize environment, project, runtime,
   resource, storage, database, adapter, and deployment profiles.
2. Core QAI application code must remain independent of vendor-specific
   implementations.
3. Provider-specific behavior belongs behind explicit adapter or
   provider interfaces.
4. The deployment process must validate configured profiles and adapter
   availability before relying on them.
5. Evidence and artifact paths must be approved for the target client
   environment.
6. Secret values must not be stored in this document or committed to Git.
   Configure secret-provider access using the approved security mechanism.
7. The documented values describe the supplied client-production
   example. They do not establish that the corresponding environment,
   profiles, adapters, paths, or providers have been implemented or tested.

## Example configuration

The companion `.env.example` file records the documented bindings using
placeholders where client-specific locations or provider details are
required. Replace placeholders only in an appropriately controlled
deployment configuration.

## Implementation status

Status: Specification documented; runtime binding and validation
implementation pending.
'@

$EnvironmentExample = @'
# QAI DevOps - Environment Variable Binding Model
# Example only; not a production credential file.

QAI_ENVIRONMENT=client-prod
QAI_PROJECT=client-modernization
QAI_RUNTIME_MODE=production
QAI_RESOURCE_PROFILE=client-existing
QAI_STORAGE_PROFILE=existing_nfs
QAI_DATABASE_PROFILE=client_database
QAI_HPC_ADAPTER=slurm
QAI_GPU_ADAPTER=nvidia
QAI_QUANTUM_ADAPTER=generic_qpu
QAI_COMMUNICATION_ADAPTER=client_network
QAI_DEPLOYMENT_TARGET=client_datacenter
QAI_EVIDENCE_PATH=<client-approved-location>
QAI_ARTIFACT_PATH=<client-approved-location>
QAI_SECRET_PROVIDER=<approved-secret-provider>
'@

$Files = @{
    "docs\ENVIRONMENT_VARIABLE_BINDING_MODEL.md" = $Documentation
    ".env.example" = $EnvironmentExample
}

foreach ($RelativePath in $Files.Keys) {
    $Path = Join-Path $Root $RelativePath

    if (Test-Path -LiteralPath $Path -PathType Leaf) {
        Write-Host "[KEEP FILE] $RelativePath"
    }
    else {
        Set-Content -LiteralPath $Path -Value $Files[$RelativePath] -Encoding UTF8
        Write-Host "[CREATED FILE] $RelativePath"
    }
}

# Add safe ignore rules only if there is no existing .gitignore.
# Existing ignore policies are not overwritten.
$GitIgnore = Join-Path $Root ".gitignore"

if (-not (Test-Path -LiteralPath $GitIgnore -PathType Leaf)) {
    @(
        "# Local environment configuration"
        ".env"
        ".env.*"
        "!.env.example"
        ""
        "# Local secret material"
        "*.pem"
        "*.key"
        "secrets/**"
        "!secrets/README.md"
    ) | Set-Content -LiteralPath $GitIgnore -Encoding UTF8

    Write-Host "[CREATED FILE] .gitignore"
}
else {
    Write-Host "[KEEP FILE] .gitignore already exists; inspect its rules before editing."
}

Write-Host ""
Write-Host "Environment binding specification step completed."
Write-Host "No runtime variables were set in the current PowerShell session."



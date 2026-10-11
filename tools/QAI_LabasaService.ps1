
$ErrorActionPreference = "Stop"
$Root = (Get-Location).Path

if ((Split-Path -Leaf $Root) -ne "holdco") {
    throw "Run this script from the holdco repository root."
}

$Structure = @{
    "qai_faep" = @(
        "ecosystem",
        "governance",
        "federation",
        "fabrics",
        "deployment",
        "evidence"
    )
    "qai_labaas" = @(
        "client_workspace",
        "client_catalog",
        "tenancy",
        "lifecycle",
        "runtime",
        "resources",
        "experiments",
        "evidence",
        "adapters",
        "docs"
    )
}

foreach ($Boundary in $Structure.Keys) {
    $BoundaryPath = Join-Path $Root $Boundary

    if (-not (Test-Path -LiteralPath $BoundaryPath)) {
        New-Item -ItemType Directory -Path $BoundaryPath | Out-Null
        Write-Host "[CREATED] $Boundary"
    } else {
        Write-Host "[EXISTS]  $Boundary"
    }

    foreach ($RelativePath in $Structure[$Boundary]) {
        $Path = Join-Path $BoundaryPath $RelativePath

        if (-not (Test-Path -LiteralPath $Path)) {
            New-Item -ItemType Directory -Path $Path | Out-Null
            Write-Host "[CREATED] $Boundary\$RelativePath"
        } else {
            Write-Host "[EXISTS]  $Boundary\$RelativePath"
        }
    }
}

$Readmes = @{
    "qai_faep\README.md" = @'
# FAEP

FAEP is the ecosystem-level boundary for governance, federation,
capability fabrics, deployment coordination, and evidence.

This directory establishes a product and documentation boundary.
Existing implementations remain in their current repository locations.

## Existing integration points

- `general_framework/`
- `enterprise_hierarchy/`
- `enterprise_os/`
- `general_factory/`

No implementation logic is introduced by this scaffold.
'@
    "qai_faep\VERSION" = "0.1.0`n"
    "qai_labaas\README.md" = @'
# QAI LabaaS

QAI LabaaS is the governed, client-facing QAI laboratory and
platform-as-a-service boundary.

Its intended lifecycle includes client workspace setup, co-design,
experimentation, development, testing, validation, evidence capture,
and transition to an agreed delivery pathway.

## Design constraints

- Prefer reuse of existing factory and laboratory assets.
- Keep logical resources separate from physical infrastructure.
- Do not introduce cloud or Kubernetes as mandatory dependencies.
- Keep credentials and secrets outside source-controlled files.
- Require explicit approval before infrastructure-changing actions.
- Do not silently substitute simulation for unsupported hardware.

This scaffold contains no implementation logic.
'@
    "qai_labaas\VERSION" = "0.1.0`n"
}

foreach ($RelativeFile in $Readmes.Keys) {
    $FilePath = Join-Path $Root $RelativeFile

    if (-not (Test-Path -LiteralPath $FilePath)) {
        $Parent = Split-Path -Parent $FilePath
        New-Item -ItemType Directory -Path $Parent -Force | Out-Null
        Set-Content -LiteralPath $FilePath `
            -Value $Readmes[$RelativeFile] -Encoding utf8
        Write-Host "[CREATED] $RelativeFile"
    } else {
        Write-Host "[PRESERVED] $RelativeFile already exists"
    }
}

Write-Host "`nScaffold creation complete. No existing files were intentionally overwritten."

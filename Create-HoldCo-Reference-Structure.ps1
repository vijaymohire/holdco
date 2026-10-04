
# ============================================================
# HoldCo Reference Implementation Structure Bootstrap
# Run from: E:\Bhadale IT\github\holdco
#
# Purpose:
#   1. Ensure HoldCo strategy documentation folders exist.
#   2. Extend General Factory reference implementations.
#   3. Add Government / PPP and dynamic asset allocation models.
#   4. Preserve all existing files; never overwrite READMEs.
# ============================================================

$ErrorActionPreference = "Stop"

$RepoRoot = "E:\Bhadale IT\github\holdco"
$DocsRoot = Join-Path $RepoRoot "blueprints\holdco\docs"
$RefRoot  = Join-Path $RepoRoot "general_factory\reference_implementations"

# Validate execution location and expected repository structure.
if (-not (Test-Path -LiteralPath $RepoRoot -PathType Container)) {
    throw "Repository root not found: $RepoRoot"
}

if ((Get-Location).Path.TrimEnd('\') -ne $RepoRoot.TrimEnd('\')) {
    throw "Run this script from: $RepoRoot"
}

if (-not (Test-Path -LiteralPath (Join-Path $RepoRoot ".git"))) {
    throw "Git repository metadata not found. Check the repository root."
}

# ------------------------------------------------------------
# 1. HoldCo strategy documentation categories
# ------------------------------------------------------------

$DocFolders = @(
    "01_vision_strategy",
    "02_operating_model",
    "03_asset_and_resource_economics",
    "04_reference_implementations",
    "05_ip_and_governance"
)

foreach ($Folder in $DocFolders) {
    $Path = Join-Path $DocsRoot $Folder

    if (-not (Test-Path -LiteralPath $Path)) {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
        Write-Host "[CREATED] $Path" -ForegroundColor Green
    }
    else {
        Write-Host "[EXISTS ] $Path" -ForegroundColor DarkGray
    }
}

# ------------------------------------------------------------
# 2. General Factory cross-cutting reference implementations
# ------------------------------------------------------------

$ReferenceAreas = @(
    @{
        Name = "ri_01_repository_project_bootstrap"
        Title = "RI-01 — Repository and Project Bootstrap"
        Purpose = "A reusable reference for project definition, template selection, workspace creation and bootstrap validation."
        Source = "https://github.com/vijaymohire/iafe-repository-bootstrap"
        Workflow = "Project request -> project definition -> template selection -> bootstrap -> workspace validation."
    },
    @{
        Name = "ri_02_federated_ecosystem"
        Title = "RI-02 — Federated Ecosystem"
        Purpose = "A reference for coordinating HoldCo portfolios, programs, tracks, working groups, projects and federated capabilities."
        Source = "https://github.com/vijaymohire/iafe_ecosystem"
        Workflow = "HoldCo -> portfolio -> program -> working groups -> projects -> federated capabilities -> products and services."
    },
    @{
        Name = "ri_03_product_foundry"
        Title = "RI-03 — Product Foundry"
        Purpose = "A reference for the lifecycle from validated need and research through requirements, engineering, verification and commercialisation."
        Source = "https://github.com/vijaymohire/qai_product_foundry"
        Workflow = "Need -> idea -> research -> requirements -> architecture -> engineering -> verification -> product -> commercialisation."
    },
    @{
        Name = "ri_04_organization_program_model"
        Title = "RI-04 — Organisation and Program Framework"
        Purpose = "A reference for translating strategic intent into operating models, capabilities, working groups, projects and measurable outcomes."
        Source = "https://github.com/vijaymohire/organization_frameworks"
        Workflow = "Strategic intent -> operating model -> programs -> capabilities -> teams -> projects -> outcomes."
    },
    @{
        Name = "ri_05_dynamic_asset_allocation"
        Title = "RI-05 — Dynamic Asset Allocation"
        Purpose = "A technology-neutral reference for shared assets, capability pools, partner resources, usage measurement and resource reuse."
        Source = "Internal HoldCo reference; detailed implementation to be linked when identified."
        Workflow = "Discover -> catalogue -> request -> approve -> provision -> allocate -> use -> measure -> charge -> release -> reuse."
    },
    @{
        Name = "ri_06_government_ppp_ecosystem"
        Title = "RI-06 — Government Capability-to-Project Ecosystem"
        Purpose = "A proposed reference model connecting government outcomes, funding and procurement pathways, experts, SMEs, partners, shared resources and project delivery."
        Source = "Internal HoldCo reference; proposed model requiring validation through suitable engagements or pilots."
        Workflow = "Public outcome -> program and funding -> capability matching -> procurement or PPP pathway -> delivery configuration -> outcomes measurement -> reuse or scale."
    }
)

# Shared reference implementation layout.
$StandardSubfolders = @(
    "configuration",
    "deployment",
    "evidence",
    "execution",
    "results",
    "samples",
    "workflows"
)

foreach ($Area in $ReferenceAreas) {
    $AreaPath = Join-Path $RefRoot $Area.Name

    if (-not (Test-Path -LiteralPath $AreaPath)) {
        New-Item -ItemType Directory -Path $AreaPath -Force | Out-Null
        Write-Host "[CREATED] $AreaPath" -ForegroundColor Green
    }
    else {
        Write-Host "[EXISTS ] $AreaPath" -ForegroundColor DarkGray
    }

    foreach ($Subfolder in $StandardSubfolders) {
        $SubPath = Join-Path $AreaPath $Subfolder

        if (-not (Test-Path -LiteralPath $SubPath)) {
            New-Item -ItemType Directory -Path $SubPath -Force | Out-Null
            Write-Host "  [CREATED] $Subfolder" -ForegroundColor Green
        }
    }

    # Create a starter README only when one does not already exist.
    $ReadmePath = Join-Path $AreaPath "README.md"

    if (-not (Test-Path -LiteralPath $ReadmePath)) {
        $ReadmeContent = @"
# $($Area.Title)

## Purpose

$($Area.Purpose)

## Reference Workflow

$($Area.Workflow)

## Inputs

- Validated business, government, industry or project need
- Relevant requirements and constraints
- Available capabilities, resources and governance criteria

## Outputs

- Defined workflow and interfaces
- Project or capability configuration
- Evidence and validation records
- Reusable implementation patterns, where demonstrated

## Relationship to HoldCo

This reference supports the HoldCo portfolio, program and project operating model.
It is intended to provide a concise interface to deeper engineering implementations.

## Source / Implementation Boundary

$($Area.Source)

This reference does not duplicate the full engineering repository.
Implementation claims must be supported by the relevant code, tests and evidence.

## Evidence and Maturity

Initial status: Designed / Documented — implementation and validation status to be assessed.

Do not imply government adoption, procurement eligibility, funding approval,
compliance, commercial demand or validated economic benefits without supporting evidence.

## Next Steps

- Define inputs, outputs and interface contracts.
- Add a minimal, technology-neutral sample.
- Link applicable authoritative implementation repositories.
- Record validation evidence and outstanding gaps.
"@

        Set-Content -LiteralPath $ReadmePath `
            -Value $ReadmeContent `
            -Encoding UTF8

        Write-Host "[CREATED] $ReadmePath" -ForegroundColor Green
    }
    else {
        Write-Host "[PRESERVED] Existing README: $ReadmePath" -ForegroundColor Yellow
    }
}

# ------------------------------------------------------------
# 3. Final summary
# ------------------------------------------------------------

Write-Host ""
Write-Host "============================================================"
Write-Host "HoldCo structure bootstrap completed."
Write-Host "============================================================"
Write-Host "HoldCo documentation: $DocsRoot"
Write-Host "General Factory references: $RefRoot"
Write-Host ""
Write-Host "Review created files before committing."
Write-Host "No existing README files were overwritten."
Write-Host "No existing files or folders were deleted."

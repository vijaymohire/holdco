
# ============================================================
# Australia QAI / FAEP Government Alignment Structure
# Run from: E:\Bhadale IT\github\holdco
# Date: 2026-10-03
# Existing files are preserved; missing files are created.
# ============================================================

$ErrorActionPreference = "Stop"

$AustraliaRoot = Join-Path (Get-Location).Path `
    "qai_platform_development\country_priorities\countries\australia"

if (-not (Test-Path $AustraliaRoot -PathType Container)) {
    throw "Australia directory not found: $AustraliaRoot"
}

Write-Host "`nAustralia root: $AustraliaRoot" -ForegroundColor Cyan

# ------------------------------------------------------------
# 1. Define directory and Markdown file structure
# ------------------------------------------------------------

$Structure = @{
    "frameworks" = @(
        "README.md",
        "government_development_alignment.md",
        "public_needs_framework.md",
        "policy_to_capability_mapping.md",
        "technology_priority_framework.md",
        "standards_assurance_framework.md",
        "procurement_alignment_framework.md",
        "commercialization_pathways.md",
        "jurisdictional_compliance.md"
    )

    "digital_landscape" = @(
        "README.md",
        "national_digital_landscape.md",
        "nsw_digital_landscape.md",
        "act_digital_landscape.md",
        "government_project_lifecycle.md",
        "private_project_lifecycle.md",
        "digital_architecture_hierarchy.md"
    )

    "states\nsw" = @(
        "README.md",
        "state_priorities.md",
        "technology_priorities.md",
        "defence_aerospace.md",
        "digital_ai.md",
        "cyber_security.md",
        "quantum_pqc.md",
        "sector_alignment.md",
        "pilot_opportunities.md",
        "commercialization.md",
        "unsolicited_proposals.md"
    )

    "states\act" = @(
        "README.md",
        "territory_priorities.md",
        "technology_priorities.md",
        "digital_ai.md",
        "cyber_security.md",
        "quantum_pqc.md",
        "sector_alignment.md",
        "pilot_opportunities.md",
        "commercialization.md"
    )

    "procurement" = @(
        "README.md",
        "buyer_portals.md",
        "opportunity_classification.md",
        "tender_assessment.md",
        "capability_to_tender_mapping.md",
        "evidence_requirements.md"
    )

    "commercialization" = @(
        "local_capability.md",
        "australian_supply_chain.md",
        "market_entry.md"
    )

    "commercialization\australian_made" = @(
        "README.md",
        "eligibility.md",
        "manufacturing_model.md",
        "supply_chain.md",
        "local_value_add.md",
        "product_origin.md",
        "certification_evidence.md"
    )
}

# ------------------------------------------------------------
# 2. Create directories and missing Markdown files
# ------------------------------------------------------------

$CreatedDirectories = 0
$CreatedFiles = 0
$ExistingFiles = 0

foreach ($RelativeDirectory in $Structure.Keys) {

    $DirectoryPath = Join-Path $AustraliaRoot $RelativeDirectory

    if (-not (Test-Path $DirectoryPath -PathType Container)) {
        New-Item -ItemType Directory -Path $DirectoryPath -Force |
            Out-Null

        $CreatedDirectories++
        Write-Host "[DIR+] $RelativeDirectory" -ForegroundColor Green
    }
    else {
        Write-Host "[DIR=] $RelativeDirectory" -ForegroundColor DarkGray
    }

    foreach ($FileName in $Structure[$RelativeDirectory]) {

        $FilePath = Join-Path $DirectoryPath $FileName

        if (-not (Test-Path $FilePath -PathType Leaf)) {

            $Title = [System.IO.Path]::GetFileNameWithoutExtension(
                $FileName
            ) -replace "_", " "

            $Title = (Get-Culture).TextInfo.ToTitleCase($Title)

            $Content = @"
# $Title

Status: Planned

Purpose:
Document the relevant Australian government, jurisdictional,
technology, procurement, or commercialization requirements.

Next steps:
- Identify authoritative sources.
- Record applicable requirements and their scope.
- Map requirements to relevant QAI / FAEP capabilities.
- Record evidence, gaps, and follow-up actions.

Last reviewed: Not yet reviewed.
"@

            Set-Content -LiteralPath $FilePath `
                -Value $Content -Encoding UTF8

            $CreatedFiles++
            Write-Host "[FILE+] $RelativeDirectory\$FileName" `
                -ForegroundColor Green
        }
        else {
            $ExistingFiles++
            Write-Host "[FILE=] $RelativeDirectory\$FileName (preserved)" `
                -ForegroundColor DarkGray
        }
    }
}

# ------------------------------------------------------------
# 3. Create a procurement opportunities folder structure
# ------------------------------------------------------------

$OpportunityDirectories = @(
    "procurement\opportunities",
    "procurement\opportunities\2026",
    "procurement\opportunities\2026\nsw",
    "procurement\opportunities\2026\act",
    "procurement\opportunities\archive"
)

foreach ($RelativeDirectory in $OpportunityDirectories) {

    $DirectoryPath = Join-Path $AustraliaRoot $RelativeDirectory

    if (-not (Test-Path $DirectoryPath -PathType Container)) {
        New-Item -ItemType Directory -Path $DirectoryPath -Force |
            Out-Null

        $CreatedDirectories++
        Write-Host "[DIR+] $RelativeDirectory" -ForegroundColor Green
    }
}

# ------------------------------------------------------------
# 4. Summary
# ------------------------------------------------------------

Write-Host "`n============================================" `
    -ForegroundColor Cyan
Write-Host "Australia structure setup complete" `
    -ForegroundColor Cyan
Write-Host "Directories created : $CreatedDirectories"
Write-Host "Files created       : $CreatedFiles"
Write-Host "Existing files kept : $ExistingFiles"
Write-Host "============================================`n" `
    -ForegroundColor Cyan

Write-Host "Review the structure in VS Code Explorer." `
    -ForegroundColor Yellow

# Optional: open the Australia root in VS Code
# code $AustraliaRoot

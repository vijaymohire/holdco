# Phase 1 — Asset Virtualization
# Generate the Phase 1 folder and file structure
#
# Run from:
# E:\Bhadale IT\github\holdco
#
# This script creates directories and empty Markdown files only.
# Content will be added separately, file-by-file.

$Phase1Root = "E:\Bhadale IT\github\holdco\industries\agriculture\digital_farm\profiles\pilot\phase_1"

# -------------------------------------------------------------------
# Phase 1 directories
# -------------------------------------------------------------------

$Directories = @(
    "virtualization",
    "assets",
    "relationships",
    "mappings",
    "state",
    "models",
    "interfaces",
    "workflows",
    "scenarios",
    "execution",
    "validation",
    "review"
)

foreach ($Directory in $Directories) {
    $Path = Join-Path $Phase1Root $Directory

    New-Item -ItemType Directory -Path $Path -Force | Out-Null
}

# -------------------------------------------------------------------
# Phase 1 files
# -------------------------------------------------------------------

$Files = @(
    "README.md",

    "virtualization\01_virtualization_model.md",

    "assets\02_virtual_asset_model.md",
    "assets\03_virtual_asset_registry.md",

    "relationships\04_asset_relationship_model.md",
    "relationships\05_asset_relationship_registry.md",

    "mappings\06_asset_twin_mapping.md",
    "mappings\07_physical_virtual_mapping.md",

    "state\08_virtual_state_model.md",

    "models\09_virtual_behavior_models.md",

    "interfaces\10_virtual_interfaces.md",

    "workflows\11_virtual_workflows.md",

    "scenarios\12_virtual_scenarios.md",

    "execution\13_virtual_execution_scope.md",

    "validation\14_virtualization_validation.md",

    "review\15_formal_review.md"
)

foreach ($File in $Files) {
    $Path = Join-Path $Phase1Root $File

    if (-not (Test-Path $Path)) {
        New-Item -ItemType File -Path $Path -Force | Out-Null
    }
}

# -------------------------------------------------------------------
# Summary
# -------------------------------------------------------------------

Write-Host ""
Write-Host "Phase 1 structure created successfully." -ForegroundColor Green
Write-Host ""
Write-Host "Root:"
Write-Host $Phase1Root
Write-Host ""
Write-Host "Directories:"
$Directories | ForEach-Object {
    Write-Host "  $_"
}
Write-Host ""
Write-Host "Files:"
$Files | ForEach-Object {
    Write-Host "  $_"
}
Write-Host ""
Write-Host "Phase 1 file count: $($Files.Count)"
Write-Host "Phase 1 directory count: $($Directories.Count)"
Write-Host ""
Write-Host "Next step: populate phase_1\README.md and proceed file-by-file."

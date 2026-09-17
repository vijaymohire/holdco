# ============================================================
# FAEP / QAI Digital Farm Pilot
# Phase 7 — Model Validation & Promotion
# Create Folder and File Structure
# ============================================================

$PilotRoot = "E:\Bhadale IT\github\holdco\industries\agriculture\digital_farm\profiles\pilot"

$Phase7 = Join-Path $PilotRoot "phase_7"

# ------------------------------------------------------------
# Create Phase 7 root
# ------------------------------------------------------------

New-Item `
    -ItemType Directory `
    -Path $Phase7 `
    -Force | Out-Null

# ------------------------------------------------------------
# Phase 7 folders
# ------------------------------------------------------------

$Folders = @(
    "models",
    "provenance",
    "assumptions",
    "boundaries",
    "validation",
    "tests",
    "test_cases",
    "scenarios",
    "sensitivity",
    "robustness",
    "faults",
    "evidence",
    "results",
    "metrics",
    "execution",
    "promotion",
    "rollback",
    "governance",
    "review",
    "notebook"
)

foreach ($Folder in $Folders) {

    $FolderPath = Join-Path $Phase7 $Folder

    New-Item `
        -ItemType Directory `
        -Path $FolderPath `
        -Force | Out-Null
}

# ------------------------------------------------------------
# Phase 7 root files
# ------------------------------------------------------------

New-Item `
    -ItemType File `
    -Path (Join-Path $Phase7 "README.md") `
    -Force | Out-Null

# ------------------------------------------------------------
# Notebook files
# ------------------------------------------------------------

$NotebookPath = Join-Path `
    $Phase7 `
    "notebook\QAI_Agriculture_Optimization_Phase7_ModelValidationPromotion.ipynb"

$NotebookReadmePath = Join-Path `
    $Phase7 `
    "notebook\README.md"

New-Item `
    -ItemType File `
    -Path $NotebookPath `
    -Force | Out-Null

New-Item `
    -ItemType File `
    -Path $NotebookReadmePath `
    -Force | Out-Null

# ------------------------------------------------------------
# Display resulting structure
# ------------------------------------------------------------

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " Phase 7 Structure Created" -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Pilot Root:" -ForegroundColor Yellow
Write-Host $PilotRoot

Write-Host ""
Write-Host "Phase 7:" -ForegroundColor Yellow
Write-Host $Phase7

Write-Host ""
Write-Host "Created structure:" -ForegroundColor Yellow
Write-Host ""

Get-ChildItem `
    -Path $Phase7 `
    -Recurse |
    Select-Object FullName |
    ForEach-Object {
        Write-Host $_.FullName
    }

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " Phase 7 — Model Validation & Promotion" -ForegroundColor Green
Write-Host " Structure creation complete." -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Cyan

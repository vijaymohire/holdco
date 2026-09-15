# ============================================================
# FAEP / QAI Digital Farm Pilot
# Phase 6 — QAI Advantage & Value Evaluation
# Create Folder and File Structure
# ============================================================

$PilotRoot = "E:\Bhadale IT\github\holdco\industries\agriculture\digital_farm\profiles\pilot"

$Phase6 = Join-Path $PilotRoot "phase_6"

# ------------------------------------------------------------
# Create Phase 6 root
# ------------------------------------------------------------

New-Item -ItemType Directory -Path $Phase6 -Force | Out-Null

# ------------------------------------------------------------
# Phase 6 folders
# ------------------------------------------------------------

$Folders = @(
    "advantage",
    "baselines",
    "comparison",
    "decisions",
    "economic",
    "evidence",
    "execution",
    "experiments",
    "intelligence",
    "metrics",
    "models",
    "notebook",
    "optimization",
    "results",
    "scenarios",
    "simulation",
    "states",
    "validation",
    "value"
)

foreach ($Folder in $Folders) {

    $FolderPath = Join-Path $Phase6 $Folder

    New-Item `
        -ItemType Directory `
        -Path $FolderPath `
        -Force | Out-Null
}

# ------------------------------------------------------------
# Phase 6 root files
# ------------------------------------------------------------

$ReadmePath = Join-Path $Phase6 "README.md"

New-Item `
    -ItemType File `
    -Path $ReadmePath `
    -Force | Out-Null

# ------------------------------------------------------------
# Notebook files
# ------------------------------------------------------------

$NotebookPath = Join-Path `
    $Phase6 `
    "notebook\QAI_Agriculture_Optimization_Phase6_AdvantageValue.ipynb"

$NotebookReadmePath = Join-Path `
    $Phase6 `
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
# Display result
# ------------------------------------------------------------

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " Phase 6 Structure Created" -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Pilot Root:" -ForegroundColor Yellow
Write-Host $PilotRoot

Write-Host ""
Write-Host "Phase 6:" -ForegroundColor Yellow
Write-Host $Phase6

Write-Host ""
Write-Host "Created structure:" -ForegroundColor Yellow
Write-Host ""

Get-ChildItem `
    -Path $Phase6 `
    -Recurse |
    Select-Object FullName |
    ForEach-Object {
        Write-Host $_.FullName
    }

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " Phase 6 — QAI Advantage & Value Evaluation" -ForegroundColor Green
Write-Host " Structure creation complete." -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Cyan

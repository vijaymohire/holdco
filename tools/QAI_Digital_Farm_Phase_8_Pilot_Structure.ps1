# ============================================================
# FAEP Agriculture Digital Farm Pilot
# Phase 8 — Digital Twin Production Transition
# Folder and File Structure
# ============================================================

$Root = "E:\Bhadale IT\github\holdco\industries\agriculture\digital_farm\profiles\pilot"

$Phase = Join-Path $Root "phase_8"

Write-Host ""
Write-Host "Creating Phase 8 — Digital Twin Production Transition" -ForegroundColor Cyan
Write-Host "Root: $Phase"
Write-Host ""

# ------------------------------------------------------------
# Phase 8 folders
# ------------------------------------------------------------

$Folders = @(
    "assets",
    "configuration",
    "data",
    "deployment",
    "digital_twin",
    "evidence",
    "execution",
    "fallback",
    "governance",
    "interfaces",
    "metrics",
    "models",
    "monitoring",
    "notebook",
    "observability",
    "operations",
    "provenance",
    "rollback",
    "runtime",
    "safety",
    "scenarios",
    "security",
    "state",
    "synchronization",
    "tests",
    "validation",
    "value"
)

# ------------------------------------------------------------
# Create Phase 8 root
# ------------------------------------------------------------

New-Item -ItemType Directory -Path $Phase -Force | Out-Null

# ------------------------------------------------------------
# Create folders
# ------------------------------------------------------------

foreach ($Folder in $Folders) {

    $Path = Join-Path $Phase $Folder

    New-Item -ItemType Directory -Path $Path -Force | Out-Null

    Write-Host "Created: $Folder" -ForegroundColor Green
}

# ------------------------------------------------------------
# Create Phase 8 README
# ------------------------------------------------------------

$Readme = Join-Path $Phase "README.md"

if (-not (Test-Path $Readme)) {
    New-Item -ItemType File -Path $Readme -Force | Out-Null
    Write-Host "Created: README.md" -ForegroundColor Yellow
}
else {
    Write-Host "Exists: README.md" -ForegroundColor DarkYellow
}

# ------------------------------------------------------------
# Create notebook README
# ------------------------------------------------------------

$NotebookReadme = Join-Path $Phase "notebook\README.md"

if (-not (Test-Path $NotebookReadme)) {
    New-Item -ItemType File -Path $NotebookReadme -Force | Out-Null
    Write-Host "Created: notebook\README.md" -ForegroundColor Yellow
}
else {
    Write-Host "Exists: notebook\README.md" -ForegroundColor DarkYellow
}

# ------------------------------------------------------------
# Create Phase 8 notebook placeholder
# ------------------------------------------------------------

$Notebook = Join-Path $Phase "notebook\QAI_Agriculture_Optimization_Phase8_ProductionDigitalTwin.ipynb"

if (-not (Test-Path $Notebook)) {

    @'
{
  "cells": [],
  "metadata": {},
  "nbformat": 4,
  "nbformat_minor": 5
}
'@ | Set-Content -Path $Notebook -Encoding UTF8

    Write-Host "Created: QAI_Agriculture_Optimization_Phase8_ProductionDigitalTwin.ipynb" -ForegroundColor Yellow
}
else {
    Write-Host "Exists: QAI_Agriculture_Optimization_Phase8_ProductionDigitalTwin.ipynb" -ForegroundColor DarkYellow
}

# ------------------------------------------------------------
# Display final structure
# ------------------------------------------------------------

Write-Host ""
Write-Host "Phase 8 structure created successfully." -ForegroundColor Cyan
Write-Host ""

Get-ChildItem -Path $Phase -Recurse |
    Select-Object FullName |
    Format-Table -AutoSize

Write-Host ""
Write-Host "Phase 8 ready for README definition and notebook lineage." -ForegroundColor Cyan
Write-Host ""

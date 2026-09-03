# ============================================================
# HoldCo - Agriculture Digital Farm
# Phase 0 - Implementation Readiness Folder Structure
# ============================================================
#
# Purpose:
# Create the NEW Phase 0 deliverable folders for defining
# and preparing the first callable Digital Farm Pilot.
#
# Architectural principle:
#
#   digital_farm/
#       = managerial / service / orchestration layer
#
#   technical realization remains in:
#       Digital Twin
#       CPS
#       QAI
#       Simulation
#       Sensing
#       Edge
#       Networking
#       etc.
#
# Phase 0 artifacts therefore live under:
#
#   digital_farm/profiles/pilot/phase_0/
#
# ============================================================

$Root = "E:\Bhadale IT\github\holdco"

$Phase0 = Join-Path `
    $Root `
    "industries\agriculture\digital_farm\profiles\pilot\phase_0"

$Folders = @(
    "use_case",
    "assets",
    "functions",
    "interfaces",
    "workflows",
    "scenarios",
    "baselines",
    "qai_evaluation",
    "kpis",
    "value",
    "acceptance",
    "scope"
)

Write-Host ""
Write-Host "============================================================"
Write-Host "Creating Digital Farm Phase 0 folder structure"
Write-Host "============================================================"
Write-Host ""
Write-Host "Root:"
Write-Host $Phase0
Write-Host ""

foreach ($Folder in $Folders) {

    $Path = Join-Path $Phase0 $Folder

    if (-not (Test-Path -LiteralPath $Path)) {

        New-Item `
            -ItemType Directory `
            -Path $Path `
            -Force | Out-Null

        Write-Host "CREATED: $Path"
    }
    else {

        Write-Host "EXISTS : $Path"
    }
}

Write-Host ""
Write-Host "============================================================"
Write-Host "Phase 0 folder creation completed."
Write-Host "Folders processed: $($Folders.Count)"
Write-Host "============================================================"
Write-Host ""

# ============================================================
# Phase 2 — Create Directory and File Structure
# ============================================================
#
# Script location:
#   <repo>\tools\create_phase_2_structure.ps1
#
# Repository root is automatically detected from $PSScriptRoot.
#
# Target:
#   <repo>\industries\agriculture\digital_farm\profiles\pilot\phase_2
#
# The script:
#   1. Creates the Phase 2 directories.
#   2. Creates the Phase 2 Markdown files.
#   3. Does NOT overwrite existing files.
#   4. Displays the resulting Phase 2 tree.
#
# ============================================================

$ErrorActionPreference = "Stop"

# ------------------------------------------------------------
# Determine repository root from the script location
# ------------------------------------------------------------

$toolsRoot = $PSScriptRoot
$repoRoot  = Split-Path -Parent $toolsRoot

# ------------------------------------------------------------
# Define Digital Farm and Phase 2 locations
# ------------------------------------------------------------

$digitalFarm = Join-Path $repoRoot "industries\agriculture\digital_farm"
$phase2      = Join-Path $digitalFarm "profiles\pilot\phase_2"

# ------------------------------------------------------------
# Validate Digital Farm path
# ------------------------------------------------------------

if (-not (Test-Path -LiteralPath $digitalFarm)) {
    throw "Digital Farm directory was not found: $digitalFarm"
}

Write-Host ""
Write-Host "============================================================"
Write-Host "Phase 2 Structure Creation"
Write-Host "============================================================"
Write-Host "Repository : $repoRoot"
Write-Host "Digital Farm: $digitalFarm"
Write-Host "Phase 2    : $phase2"
Write-Host ""

# ------------------------------------------------------------
# Phase 2 directories
# ------------------------------------------------------------

$directories = @(
    "$phase2\emulation",
    "$phase2\simulation",
    "$phase2\structural_integrity",
    "$phase2\calibration",
    "$phase2\fidelity",
    "$phase2\conditions",
    "$phase2\cps",
    "$phase2\qai_pipeline",
    "$phase2\integration",
    "$phase2\testing",
    "$phase2\validation",
    "$phase2\review"
)

# ------------------------------------------------------------
# Phase 2 files
# ------------------------------------------------------------

$files = @(

    # --------------------------------------------------------
    # Phase 2 root
    # --------------------------------------------------------

    "$phase2\README.md",

    # --------------------------------------------------------
    # Emulation
    # --------------------------------------------------------

    "$phase2\emulation\README.md",
    "$phase2\emulation\01_emulation_environment.md",
    "$phase2\emulation\02_emulator_architecture.md",
    "$phase2\emulation\03_emulator_asset_model.md",
    "$phase2\emulation\04_emulator_asset_inventory.md",
    "$phase2\emulation\05_emulator_component_model.md",
    "$phase2\emulation\06_emulator_state_model.md",
    "$phase2\emulation\07_emulator_behavior_model.md",
    "$phase2\emulation\08_emulator_interface_model.md",
    "$phase2\emulation\09_emulator_execution_model.md",
    "$phase2\emulation\10_emulator_fault_model.md",

    # --------------------------------------------------------
    # Simulation
    # --------------------------------------------------------

    "$phase2\simulation\README.md",
    "$phase2\simulation\11_simulation_environment.md",
    "$phase2\simulation\12_simulation_model.md",
    "$phase2\simulation\13_simulation_asset_model.md",
    "$phase2\simulation\14_simulation_scenario_model.md",
    "$phase2\simulation\15_simulation_parameter_model.md",
    "$phase2\simulation\16_simulation_open_loop.md",
    "$phase2\simulation\17_simulation_closed_loop.md",
    "$phase2\simulation\18_simulation_perturbation_model.md",
    "$phase2\simulation\19_simulation_execution_model.md",

    # --------------------------------------------------------
    # Structural Integrity
    # --------------------------------------------------------

    "$phase2\structural_integrity\README.md",
    "$phase2\structural_integrity\20_structural_model.md",
    "$phase2\structural_integrity\21_completeness_checks.md",
    "$phase2\structural_integrity\22_identity_checks.md",
    "$phase2\structural_integrity\23_relationship_checks.md",
    "$phase2\structural_integrity\24_mapping_checks.md",
    "$phase2\structural_integrity\25_dependency_checks.md",
    "$phase2\structural_integrity\26_freshness_checks.md",
    "$phase2\structural_integrity\27_interface_checks.md",
    "$phase2\structural_integrity\28_integrity_gate.md",

    # --------------------------------------------------------
    # Calibration
    # --------------------------------------------------------

    "$phase2\calibration\README.md",
    "$phase2\calibration\29_reference_model.md",
    "$phase2\calibration\30_calibration_model.md",
    "$phase2\calibration\31_calibration_parameters.md",
    "$phase2\calibration\32_calibration_workflow.md",

    # --------------------------------------------------------
    # Fidelity
    # --------------------------------------------------------

    "$phase2\fidelity\README.md",
    "$phase2\fidelity\33_fidelity_model.md",
    "$phase2\fidelity\34_error_model.md",
    "$phase2\fidelity\35_tolerance_model.md",
    "$phase2\fidelity\36_drift_model.md",
    "$phase2\fidelity\37_fidelity_validation.md",

    # --------------------------------------------------------
    # Operating Conditions
    # --------------------------------------------------------

    "$phase2\conditions\README.md",
    "$phase2\conditions\38_operating_condition_model.md",
    "$phase2\conditions\39_nominal_condition.md",
    "$phase2\conditions\40_perturbed_condition.md",
    "$phase2\conditions\41_degraded_condition.md",
    "$phase2\conditions\42_critical_condition.md",
    "$phase2\conditions\43_catastrophic_condition.md",

    # --------------------------------------------------------
    # CPS
    # --------------------------------------------------------

    "$phase2\cps\README.md",
    "$phase2\cps\44_cps_state_model.md",
    "$phase2\cps\45_cps_automata.md",
    "$phase2\cps\46_state_transition_model.md",
    "$phase2\cps\47_desired_state_model.md",
    "$phase2\cps\48_control_action_model.md",
    "$phase2\cps\49_feedback_model.md",

    # --------------------------------------------------------
    # QAI Pipeline
    # --------------------------------------------------------

    "$phase2\qai_pipeline\README.md",
    "$phase2\qai_pipeline\50_qai_pipeline_architecture.md",
    "$phase2\qai_pipeline\51_classical_pipeline.md",
    "$phase2\qai_pipeline\52_quantum_inspired_pipeline.md",
    "$phase2\qai_pipeline\53_hybrid_qai_pipeline.md",
    "$phase2\qai_pipeline\54_quantum_pipeline.md",
    "$phase2\qai_pipeline\55_comparative_evaluation.md",
    "$phase2\qai_pipeline\56_advantage_gate.md",
    "$phase2\qai_pipeline\57_closed_loop_qai.md",

    # --------------------------------------------------------
    # Integration
    # --------------------------------------------------------

    "$phase2\integration\README.md",
    "$phase2\integration\58_emulator_simulator_integration.md",
    "$phase2\integration\59_emulator_qai_integration.md",
    "$phase2\integration\60_simulator_qai_integration.md",
    "$phase2\integration\61_cps_qai_integration.md",
    "$phase2\integration\62_three_path_integration.md",
    "$phase2\integration\63_end_to_end_integration.md",

    # --------------------------------------------------------
    # Testing
    # --------------------------------------------------------

    "$phase2\testing\README.md",
    "$phase2\testing\64_unit_testing.md",
    "$phase2\testing\65_subsystem_testing.md",
    "$phase2\testing\66_interface_testing.md",
    "$phase2\testing\67_integration_testing.md",
    "$phase2\testing\68_closed_loop_testing.md",
    "$phase2\testing\69_regression_testing.md",

    # --------------------------------------------------------
    # Validation
    # --------------------------------------------------------

    "$phase2\validation\README.md",
    "$phase2\validation\70_emulator_validation.md",
    "$phase2\validation\71_simulation_validation.md",
    "$phase2\validation\72_cps_validation.md",
    "$phase2\validation\73_qai_validation.md",
    "$phase2\validation\74_phase_2_validation.md",

    # --------------------------------------------------------
    # Formal Review
    # --------------------------------------------------------

    "$phase2\review\README.md",
    "$phase2\review\75_formal_review.md"
)

# ------------------------------------------------------------
# Create directories
# ------------------------------------------------------------

Write-Host "Creating directories..."
Write-Host ""

foreach ($directory in $directories) {

    if (-not (Test-Path -LiteralPath $directory)) {

        New-Item `
            -ItemType Directory `
            -Path $directory `
            -Force |
            Out-Null

        Write-Host "[CREATED] Directory: $directory"
    }
    else {

        Write-Host "[EXISTS ] Directory: $directory"
    }
}

# ------------------------------------------------------------
# Create files
# ------------------------------------------------------------

Write-Host ""
Write-Host "Creating files..."
Write-Host ""

foreach ($file in $files) {

    if (-not (Test-Path -LiteralPath $file)) {

        New-Item `
            -ItemType File `
            -Path $file `
            -Force |
            Out-Null

        Write-Host "[CREATED] File:      $file"
    }
    else {

        Write-Host "[EXISTS ] File:      $file"
    }
}

# ------------------------------------------------------------
# Count resulting objects
# ------------------------------------------------------------

$createdDirectories = ($directories | Where-Object {
    Test-Path -LiteralPath $_ -PathType Container
}).Count

$createdFiles = ($files | Where-Object {
    Test-Path -LiteralPath $_ -PathType Leaf
}).Count

# ------------------------------------------------------------
# Final summary
# ------------------------------------------------------------

Write-Host ""
Write-Host "============================================================"
Write-Host "Phase 2 structure creation completed"
Write-Host "============================================================"
Write-Host ""
Write-Host "Phase 2 root:"
Write-Host "  $phase2"
Write-Host ""
Write-Host "Directories verified: $createdDirectories / $($directories.Count)"
Write-Host "Files verified      : $createdFiles / $($files.Count)"
Write-Host ""

# ------------------------------------------------------------
# Display resulting tree
# ------------------------------------------------------------

Write-Host "============================================================"
Write-Host "Resulting Phase 2 Tree"
Write-Host "============================================================"
Write-Host ""

Get-ChildItem `
    -LiteralPath $phase2 `
    -Recurse |
    Sort-Object FullName |
    ForEach-Object {

        $relative = $_.FullName.Substring($phase2.Length).TrimStart('\')

        if ($_.PSIsContainer) {
            Write-Host "[DIR ] $relative"
        }
        else {
            Write-Host "[FILE] $relative"
        }
    }

Write-Host ""
Write-Host "============================================================"
Write-Host "Done"
Write-Host "============================================================"

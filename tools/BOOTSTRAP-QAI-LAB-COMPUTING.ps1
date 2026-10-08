# ============================================================
# BOOTSTRAP-QAI-LAB-COMPUTING.ps1
#
# Purpose:
#   Establish the complete QAI Lab Computing capability tree.
#
# Run from:
#   PS E:\Bhadale IT\github\holdco>
#
# Design:
#   - Non-destructive
#   - Creates missing directories only
#   - Does not overwrite existing files
#   - Verifies the complete expected tree
# ============================================================

$ErrorActionPreference = "Stop"

# ------------------------------------------------------------
# Root
# ------------------------------------------------------------

$RepoRoot = "E:\Bhadale IT\github\holdco"
$ComputingRoot = Join-Path $RepoRoot "qai_lab\computing"

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " QAI LAB - COMPUTING BOOTSTRAP" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Repository root:" -ForegroundColor Yellow
Write-Host "  $RepoRoot"

Write-Host ""
Write-Host "Computing root:" -ForegroundColor Yellow
Write-Host "  $ComputingRoot"

# ------------------------------------------------------------
# Validate repository root
# ------------------------------------------------------------

if (-not (Test-Path $RepoRoot)) {
    throw "Repository root does not exist: $RepoRoot"
}

# ------------------------------------------------------------
# Define complete Computing tree
# ------------------------------------------------------------

$Directories = @(
    "qai_lab\computing",

    # Experiment catalogue
    "qai_lab\computing\experiments",
    "qai_lab\computing\experiments\problem_decomposition",
    "qai_lab\computing\experiments\digital_quantum",
    "qai_lab\computing\experiments\analog_quantum",
    "qai_lab\computing\experiments\digital_analog",
    "qai_lab\computing\experiments\analog_digital",
    "qai_lab\computing\experiments\annealing",
    "qai_lab\computing\experiments\virtual_qubits",
    "qai_lab\computing\experiments\dynamic_mapping",
    "qai_lab\computing\experiments\logical_qubits",
    "qai_lab\computing\experiments\qec",
    "qai_lab\computing\experiments\resource_reduction",
    "qai_lab\computing\experiments\result_assembly",
    "qai_lab\computing\experiments\cross_backend_validation",
    "qai_lab\computing\experiments\cross_track_experiments",
    "qai_lab\computing\experiments\client_co_design",
    "qai_lab\computing\experiments\integration_validation",
    "qai_lab\computing\experiments\comparative_benchmarks",

    # Capability / execution areas
    "qai_lab\computing\working_groups",
    "qai_lab\computing\reference_implementations",
    "qai_lab\computing\backends",
    "qai_lab\computing\hpc",
    "qai_lab\computing\hybrid",
    "qai_lab\computing\benchmarks",
    "qai_lab\computing\_templates"
)

# ------------------------------------------------------------
# Create directories
# ------------------------------------------------------------

$Created = 0
$Existing = 0
$Failed = 0

Write-Host ""
Write-Host "Creating / verifying directories..." -ForegroundColor Green
Write-Host ""

foreach ($RelativePath in $Directories) {

    $FullPath = Join-Path $RepoRoot $RelativePath

    try {

        if (Test-Path $FullPath -PathType Container) {

            Write-Host "[EXISTS] $RelativePath" -ForegroundColor DarkGray
            $Existing++

        }
        elseif (Test-Path $FullPath) {

            Write-Host "[FAIL]   Path exists but is not a directory: $RelativePath" -ForegroundColor Red
            $Failed++

        }
        else {

            New-Item -ItemType Directory -Path $FullPath -Force | Out-Null

            Write-Host "[CREATE] $RelativePath" -ForegroundColor Green
            $Created++
        }

    }
    catch {

        Write-Host "[FAIL]   $RelativePath" -ForegroundColor Red
        Write-Host "         $($_.Exception.Message)" -ForegroundColor Red
        $Failed++
    }
}

# ------------------------------------------------------------
# README
# ------------------------------------------------------------

$ReadmePath = Join-Path $ComputingRoot "README.md"

$ReadmeContent = @"
# QAI Computing

Computing capability domain of the QAI Lab.

The Computing Lab provides a product-agnostic experimentation and
validation environment spanning classical, quantum, hybrid, HPC,
GPU, FPGA, simulation, emulation and related execution models.

## Scope

- Computing experiments
- Quantum computing
- Classical and hybrid computing
- HPC
- GPU
- FPGA
- Quantum and classical backends
- Simulation and emulation
- Resource reduction
- Dynamic mapping
- Logical qubits and QEC experimentation
- Cross-backend validation
- Client co-design
- Comparative benchmarking
- Reference implementations

## Relationship to QAI Lab

The Computing Lab is a peer capability domain to:

- `qai_lab/communication`

Common QAI Lab documentation and evidence remain at:

- `qai_lab/docs`
- `qai_lab/evidence`

## Relationship to QAI Runtime

The Computing Lab is an experimentation, co-design and validation
environment.

Vendor-specific and target-specific execution implementations should
remain behind QAI Runtime interfaces and adapters where appropriate.

## Experiment Catalogue

The initial experiment catalogue includes:

- problem decomposition
- digital quantum
- analog quantum
- digital-analog
- analog-digital
- annealing
- VirtualQubits
- dynamic mapping
- logical qubits
- quantum error correction
- resource reduction
- result assembly
- cross-backend validation
- cross-track experiments
- client co-design
- integration validation
- comparative benchmarks

## Architectural Principle

QAI applications and experiments should operate against logical
capabilities and resource contracts wherever practical.

Target-specific products, hardware, cloud services and infrastructure
should be resolved through appropriate QAI Runtime / Resource Fabric
adapters.

This keeps the Computing Lab product-agnostic while allowing
progressive target-specific experimentation and validation.
"@

if (Test-Path $ReadmePath -PathType Leaf) {

    Write-Host ""
    Write-Host "[EXISTS] qai_lab\computing\README.md" -ForegroundColor DarkGray

}
elseif (Test-Path $ReadmePath) {

    Write-Host ""
    Write-Host "[FAIL] README path exists but is not a file." -ForegroundColor Red
    $Failed++

}
else {

    try {

        Set-Content `
            -Path $ReadmePath `
            -Value $ReadmeContent `
            -Encoding UTF8

        Write-Host ""
        Write-Host "[CREATE] qai_lab\computing\README.md" -ForegroundColor Green
        $Created++

    }
    catch {

        Write-Host ""
        Write-Host "[FAIL] Could not create README.md" -ForegroundColor Red
        Write-Host "       $($_.Exception.Message)" -ForegroundColor Red
        $Failed++
    }
}

# ------------------------------------------------------------
# Verification
# ------------------------------------------------------------

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " VERIFICATION" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

$Verified = 0

foreach ($RelativePath in $Directories) {

    $FullPath = Join-Path $RepoRoot $RelativePath

    if (Test-Path $FullPath -PathType Container) {
        $Verified++
    }
    else {
        Write-Host "[MISSING] $RelativePath" -ForegroundColor Red
    }
}

if (Test-Path $ReadmePath -PathType Leaf) {
    Write-Host "[VERIFIED] qai_lab\computing\README.md" -ForegroundColor Green
}
else {
    Write-Host "[MISSING] qai_lab\computing\README.md" -ForegroundColor Red
}

# ------------------------------------------------------------
# Summary
# ------------------------------------------------------------

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " SUMMARY" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan

Write-Host ""
Write-Host "Expected directories : $($Directories.Count)"
Write-Host "Verified directories  : $Verified"
Write-Host "Created               : $Created"
Write-Host "Already existed       : $Existing"
Write-Host "Failed                : $Failed"

Write-Host ""

if ($Failed -eq 0 -and $Verified -eq $Directories.Count -and (Test-Path $ReadmePath -PathType Leaf)) {

    Write-Host "SUCCESS: QAI Lab Computing tree is complete." -ForegroundColor Green

}
else {

    Write-Host "WARNING: Verification requires attention." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Computing tree:" -ForegroundColor Yellow
Write-Host ""

Get-ChildItem -Path $ComputingRoot -Recurse |
    Sort-Object FullName |
    ForEach-Object {

        $Relative = $_.FullName.Substring($ComputingRoot.Length).TrimStart('\')

        if ([string]::IsNullOrWhiteSpace($Relative)) {
            Write-Host "qai_lab\computing"
        }
        else {
            Write-Host "qai_lab\computing\$Relative"
        }
    }

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " END" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

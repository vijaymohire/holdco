# ================================================================
# Bhadale IT HoldCo
# QAI Lab — HPC Dynamic Qubit Mapping & Cycle-Time Bootstrap
#
# Purpose:
#   Establish VS Code workspace structure for:
#   - HPC-assisted QAI cycle-time optimisation
#   - phased execution
#   - quantum critical path analysis
#   - VirtualQubit allocation
#   - physical-qubit characterisation
#   - dynamic physical/logical mapping
#   - timing and synchronisation experiments
#   - effective quantum capacity
#
# Design principles:
#   - Non-destructive
#   - Create missing directories only
#   - Preserve existing files
#   - No vendor-specific implementation
#   - No physical-QPU capability claims
#   - 500–1,000 qubits are planning/experimental envelope only
# ================================================================

$ErrorActionPreference = "Stop"

$root = Join-Path (Get-Location) "qai_lab"

Write-Host ""
Write-Host "==============================================================="
Write-Host " QAI LAB — HPC DYNAMIC MAPPING & CYCLE-TIME BOOTSTRAP"
Write-Host "==============================================================="
Write-Host ""
Write-Host "Root: $root"
Write-Host ""

# ----------------------------------------------------------------
# Directory helper
# ----------------------------------------------------------------

function Ensure-Directory {
    param(
        [string]$Path
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
        Write-Host "[CREATED] $Path"
    }
    else {
        Write-Host "[EXISTS ] $Path"
    }
}

function Ensure-Readme {
    param(
        [string]$Path,
        [string]$Content
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        Set-Content -LiteralPath $Path -Value $Content -Encoding UTF8
        Write-Host "[CREATED] $Path"
    }
    else {
        Write-Host "[EXISTS ] $Path"
    }
}

# ----------------------------------------------------------------
# Root verification
# ----------------------------------------------------------------

if (-not (Test-Path -LiteralPath $root)) {
    throw "qai_lab directory was not found. Run this script from the HoldCo root."
}

# ----------------------------------------------------------------
# HPC cycle-time architecture
# ----------------------------------------------------------------

$directories = @(
    "hpc/cycle_time",
    "hpc/cycle_time/models",
    "hpc/cycle_time/metrics",
    "hpc/cycle_time/evidence",

    "hpc/phases",
    "hpc/phases/prefetch",
    "hpc/phases/load",
    "hpc/phases/precompute",
    "hpc/phases/quantum_critical",
    "hpc/phases/postprocess",

    "hpc/timing",
    "hpc/timing/clocks",
    "hpc/timing/synchronisation",
    "hpc/timing/deadlines",
    "hpc/timing/jitter",
    "hpc/timing/time_bins",

    "quantum_runtime/qubit_allocation",
    "quantum_runtime/qubit_allocation/roles",
    "quantum_runtime/qubit_allocation/policies",
    "quantum_runtime/qubit_allocation/lifecycle",

    "quantum_runtime/mapping",
    "quantum_runtime/mapping/static",
    "quantum_runtime/mapping/characterisation_aware",
    "quantum_runtime/mapping/virtual_qubit_aware",
    "quantum_runtime/mapping/adaptive",
    "quantum_runtime/mapping/history",

    "quantum_runtime/characterisation",
    "quantum_runtime/characterisation/calibration",
    "quantum_runtime/characterisation/gate_errors",
    "quantum_runtime/characterisation/measurement",
    "quantum_runtime/characterisation/coherence",
    "quantum_runtime/characterisation/connectivity",
    "quantum_runtime/characterisation/noise",
    "quantum_runtime/characterisation/fidelity",

    "quantum_runtime/critical_path",
    "quantum_runtime/critical_path/models",
    "quantum_runtime/critical_path/measurement",
    "quantum_runtime/critical_path/optimisation",

    "experiments/cycle_time",
    "experiments/cycle_time/baselines",
    "experiments/cycle_time/phased_execution",
    "experiments/cycle_time/quantum_critical_path",

    "experiments/dynamic_mapping",
    "experiments/dynamic_mapping/static_mapping",
    "experiments/dynamic_mapping/characterisation_aware",
    "experiments/dynamic_mapping/virtual_qubit_aware",
    "experiments/dynamic_mapping/adaptive",

    "experiments/qubit_characterisation",
    "experiments/qubit_characterisation/calibration",
    "experiments/qubit_characterisation/noise",
    "experiments/qubit_characterisation/fidelity",

    "experiments/effective_capacity",
    "experiments/effective_capacity/physical_logical",
    "experiments/effective_capacity/resource_budget",
    "experiments/effective_capacity/quality",

    "evidence/cycle_time",
    "evidence/critical_path",
    "evidence/dynamic_mapping",
    "evidence/qubit_characterisation",
    "evidence/effective_capacity",
    "evidence/timing"
)

Write-Host "Creating HPC dynamic mapping and cycle-time directories..."
Write-Host ""

foreach ($relativePath in $directories) {
    Ensure-Directory (Join-Path $root $relativePath)
}

# ----------------------------------------------------------------
# Architecture README files
# ----------------------------------------------------------------

$readmes = @{}

$readmes["hpc/cycle_time/README.md"] = @"
# QAI HPC Cycle-Time

Workspace for measuring and optimising end-to-end QAI execution cycle time.

Primary phases:

1. Prefetch
2. Load
3. Precompute
4. Quantum Critical
5. Postprocess

The objective is to minimise unnecessary waiting, data movement,
synchronisation and conversion overhead.

This is an experimental architecture. Results must distinguish
measured behaviour from planned or simulated behaviour.
"@

$readmes["hpc/phases/README.md"] = @"
# QAI Execution Phases

The QAI pipeline separates preparation and post-processing from the
quantum-critical execution window.

## Phases

- Prefetch
- Load
- Precompute
- Quantum Critical
- Postprocess

The quantum-critical phase should contain only operations that genuinely
require the quantum execution resource.

The phase model is configurable and should be validated experimentally.
"@

$readmes["hpc/timing/README.md"] = @"
# QAI Timing and Synchronisation

Workspace for timing references, synchronisation, deadlines, jitter,
time bins and cycle-time control.

A precise common timing reference is treated as a future/optional
capability and must not be assumed to exist at a particular facility
without verification.

Timing experiments should record planned and observed phase durations.
"@

$readmes["quantum_runtime/qubit_allocation/README.md"] = @"
# VirtualQubit Allocation

Defines experimental allocation policies for different VirtualQubit roles.

Potential roles include:

- Computational
- Communication
- Memory
- Ancilla
- Syndrome
- Control/Support

Allocation role describes why a resource is required.

Physical mapping remains a separate concern and may change according to
characterisation, workload requirements, timing and approved policies.

These are architectural abstractions and do not imply equivalent physical
hardware capabilities.
"@

$readmes["quantum_runtime/mapping/README.md"] = @"
# Dynamic Qubit Mapping

Workspace for progressively improving physical-to-logical mapping.

Experiment progression:

1. Static physical mapping
2. Characterisation-aware mapping
3. VirtualQubit-aware mapping
4. Adaptive remapping
5. Hardware-specific protected/encoded mapping where supported

Mapping decisions should use measured or explicitly modelled information
such as:

- gate error
- measurement quality
- coherence
- connectivity
- calibration state
- noise
- fidelity
- mapping confidence
- mapping history

No universal mapping advantage is assumed.
"@

$readmes["quantum_runtime/characterisation/README.md"] = @"
# Physical Qubit Characterisation

Experimental metadata and measurements relevant to resource selection.

Potential characterisation dimensions:

- calibration
- gate error
- measurement error
- coherence
- connectivity
- noise
- fidelity

Characterisation data should be timestamped and associated with the
relevant backend/resource where possible.

Measured hardware information must remain separate from simulated estimates.
"@

$readmes["quantum_runtime/critical_path/README.md"] = @"
# Quantum Critical Path

The quantum-critical path is the portion of the workload that genuinely
requires quantum execution.

The working objective is:

    minimise quantum-critical time
    while preserving required result quality

Useful measurements include:

- quantum-critical execution time
- total end-to-end time
- QPU idle time
- data movement
- synchronisation overhead
- conversion overhead
- jitter
- deadline compliance
- useful quantum work

Do not equate high QPU utilisation with optimal end-to-end performance.
"@

$readmes["experiments/cycle_time/README.md"] = @"
# Cycle-Time Experiments

Experiments compare end-to-end execution using phased preparation and
post-processing.

Initial comparisons may include:

- unoptimised baseline
- prefetch enabled
- precompute enabled
- phased execution
- reduced quantum-critical window
- synchronised execution
- measured versus estimated phase timing

Results must preserve the distinction between simulation, emulation and
physical execution.
"@

$readmes["experiments/dynamic_mapping/README.md"] = @"
# Dynamic Mapping Experiments

Evaluate whether characterisation-aware and VirtualQubit-aware mapping
improves execution quality or resource efficiency.

Suggested progression:

Static
    ->
Characterisation-aware
    ->
VirtualQubit-aware
    ->
Adaptive

Candidate metrics:

- fidelity
- error rate
- mapping stability
- remapping frequency
- execution time
- QPU occupancy
- retry/recovery rate
- result quality
"@

$readmes["experiments/qubit_characterisation/README.md"] = @"
# Qubit Characterisation Experiments

Controlled experiments for collecting or modelling resource-quality data.

Potential inputs:

- calibration
- gate fidelity
- measurement fidelity
- coherence
- connectivity
- noise

Use actual measurements when available.

Synthetic or simulated values must be labelled accordingly.
"@

$readmes["experiments/effective_capacity/README.md"] = @"
# Effective Quantum Capacity

Investigates useful validated computation relative to the total resource
burden.

Physical qubit count alone is not treated as computational capacity.

Potential dimensions include:

- physical qubits
- logical qubits
- VirtualQubit allocation
- QPU occupancy
- classical compute
- QPU calls
- shots
- communication
- latency
- approximation error
- final solution quality

The objective is evidence-based measurement rather than a universal
capacity claim.
"@

$readmes["evidence/cycle_time/README.md"] = @"
# Cycle-Time Evidence

Evidence records for end-to-end cycle-time experiments.

Record:

- workload
- backend
- execution mode
- phase durations
- total duration
- quantum-critical duration
- data movement
- synchronisation
- jitter
- result quality
- provenance

Keep simulated, emulated and physical evidence separate.
"@

$readmes["evidence/dynamic_mapping/README.md"] = @"
# Dynamic Mapping Evidence

Evidence for physical/logical/VirtualQubit mapping experiments.

Record the mapping policy, characterisation inputs, selected resources,
remapping events, execution results and quality measures.

Do not claim improved quantum performance without comparative evidence.
"@

$readmes["evidence/qubit_characterisation/README.md"] = @"
# Qubit Characterisation Evidence

Evidence repository for hardware or emulator characterisation.

Each observation should identify whether it is:

- simulated
- emulated
- experimentally measured
- externally supplied

Where available, preserve timestamp, backend, calibration context and
measurement methodology.
"@

$readmes["evidence/effective_capacity/README.md"] = @"
# Effective Capacity Evidence

Evidence for measuring useful computational work against total resource
requirements.

Physical qubit count, logical qubit count and effective capacity must not
be treated as interchangeable metrics.
"@

$readmes["evidence/timing/README.md"] = @"
# Timing Evidence

Evidence for timing, synchronisation, jitter and deadline experiments.

Do not assume availability of precision timing infrastructure until the
specific environment has been verified.
"@

foreach ($relativePath in $readmes.Keys) {
    Ensure-Readme (Join-Path $root $relativePath) $readmes[$relativePath]
}

# ----------------------------------------------------------------
# Specification notes
# ----------------------------------------------------------------

$specPath = Join-Path $root "hpc/cycle_time/docs"
Ensure-Directory $specPath

Ensure-Readme (Join-Path $specPath "README.md") @"
# HPC Dynamic Mapping and Cycle-Time Specification

This directory contains supporting implementation notes for the
HPC Dynamic Qubit Mapping and Cycle-Time development specification.

The authoritative working specification is maintained separately.

Implementation should proceed experimentally and incrementally.
"@

# ----------------------------------------------------------------
# Verification
# ----------------------------------------------------------------

Write-Host ""
Write-Host "==============================================================="
Write-Host " VERIFICATION"
Write-Host "==============================================================="
Write-Host ""

$verificationPaths = @(
    "hpc/cycle_time",
    "hpc/phases/prefetch",
    "hpc/phases/load",
    "hpc/phases/precompute",
    "hpc/phases/quantum_critical",
    "hpc/phases/postprocess",
    "hpc/timing",
    "hpc/timing/synchronisation",

    "quantum_runtime/qubit_allocation",
    "quantum_runtime/mapping",
    "quantum_runtime/characterisation",
    "quantum_runtime/critical_path",

    "experiments/cycle_time",
    "experiments/dynamic_mapping",
    "experiments/qubit_characterisation",
    "experiments/effective_capacity",

    "evidence/cycle_time",
    "evidence/critical_path",
    "evidence/dynamic_mapping",
    "evidence/qubit_characterisation",
    "evidence/effective_capacity",
    "evidence/timing",

    "hpc/cycle_time/README.md",
    "hpc/phases/README.md",
    "hpc/timing/README.md",
    "quantum_runtime/qubit_allocation/README.md",
    "quantum_runtime/mapping/README.md",
    "quantum_runtime/characterisation/README.md",
    "quantum_runtime/critical_path/README.md",
    "experiments/cycle_time/README.md",
    "experiments/dynamic_mapping/README.md",
    "experiments/qubit_characterisation/README.md",
    "experiments/effective_capacity/README.md",
    "evidence/cycle_time/README.md",
    "evidence/dynamic_mapping/README.md",
    "evidence/qubit_characterisation/README.md",
    "evidence/effective_capacity/README.md",
    "evidence/timing/README.md"
)

$verified = 0
$failed = 0

foreach ($relativePath in $verificationPaths) {
    $fullPath = Join-Path $root $relativePath

    if (Test-Path -LiteralPath $fullPath) {
        Write-Host "[OK] $relativePath"
        $verified++
    }
    else {
        Write-Host "[FAILED] $relativePath"
        $failed++
    }
}

Write-Host ""
Write-Host "==============================================================="
Write-Host " SUMMARY"
Write-Host "==============================================================="
Write-Host ""
Write-Host "Verified: $verified"
Write-Host "Failed:   $failed"
Write-Host ""

if ($failed -gt 0) {
    throw "Verification failed. Review the paths above."
}

Write-Host "QAI HPC Dynamic Mapping and Cycle-Time structure created successfully."
Write-Host "Existing files were preserved."
Write-Host "No vendor-specific implementation code was created."
Write-Host "No physical-QPU capability was assumed."
Write-Host ""
Write-Host "Next step:"
Write-Host "  git status --short"
Write-Host ""

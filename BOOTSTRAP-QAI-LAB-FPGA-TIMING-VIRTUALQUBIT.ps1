# ================================================================
# Bhadale IT HoldCo
# QAI Lab — FPGA, Timing & VirtualQubit Experiment Bootstrap
#
# Purpose:
#   Establish VS Code workspace structure for:
#   - FPGA-assisted QAI runtime experiments
#   - deterministic switching/control experiments
#   - timing and synchronisation
#   - VirtualQubit role allocation
#   - memory-qubit experimentation
#   - low-latency feedback
#   - streaming/event processing
#   - emulator-based resource experiments
#
# Design principles:
#   - Non-destructive
#   - Create missing directories only
#   - Preserve existing files
#   - No vendor-specific implementation
#   - No physical hardware availability assumptions
#   - FPGA emulation is not treated as a general quantum simulator
#   - Experimental evidence remains separate from planned capability
# ================================================================

$ErrorActionPreference = "Stop"

$root = Join-Path (Get-Location) "qai_lab"

Write-Host ""
Write-Host "==============================================================="
Write-Host " QAI LAB — FPGA, TIMING & VIRTUALQUBIT EXPERIMENT BOOTSTRAP"
Write-Host "==============================================================="
Write-Host ""
Write-Host "Root: $root"
Write-Host ""

# ----------------------------------------------------------------
# Helpers
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
# FPGA architecture
# ----------------------------------------------------------------

$directories = @(
    "fpga",
    "fpga/runtime",
    "fpga/emulation",
    "fpga/state_machine",
    "fpga/switching",
    "fpga/control",
    "fpga/streaming",
    "fpga/event_processing",
    "fpga/feedback",
    "fpga/resource_control",
    "fpga/interfaces",
    "fpga/adapters",
    "fpga/models",
    "fpga/tests",

    "hpc/fpga_integration",
    "hpc/fpga_integration/control_path",
    "hpc/fpga_integration/data_path",
    "hpc/fpga_integration/timing",
    "hpc/fpga_integration/events",
    "hpc/fpga_integration/feedback",

    "hpc/timing/precision_reference",
    "hpc/timing/clock_models",
    "hpc/timing/synchronisation_experiments",

    "quantum_runtime/virtual_qubit_roles",
    "quantum_runtime/virtual_qubit_roles/computational",
    "quantum_runtime/virtual_qubit_roles/communication",
    "quantum_runtime/virtual_qubit_roles/memory",
    "quantum_runtime/virtual_qubit_roles/ancilla",
    "quantum_runtime/virtual_qubit_roles/syndrome",
    "quantum_runtime/virtual_qubit_roles/control_support",

    "quantum_runtime/memory_qubits",
    "quantum_runtime/memory_qubits/models",
    "quantum_runtime/memory_qubits/allocation",
    "quantum_runtime/memory_qubits/state_lifetime",
    "quantum_runtime/memory_qubits/emulation",
    "quantum_runtime/memory_qubits/transitions",

    "quantum_runtime/switching",
    "quantum_runtime/switching/state_transitions",
    "quantum_runtime/switching/resource_transitions",
    "quantum_runtime/switching/time_bins",
    "quantum_runtime/switching/control_events",

    "quantum_runtime/feedback",
    "quantum_runtime/feedback/low_latency",
    "quantum_runtime/feedback/event_driven",
    "quantum_runtime/feedback/closed_loop",

    "experiments/fpga",
    "experiments/fpga/software_baseline",
    "experiments/fpga/emulation",
    "experiments/fpga/state_machine",
    "experiments/fpga/switching",
    "experiments/fpga/streaming",
    "experiments/fpga/feedback",

    "experiments/timing",
    "experiments/timing/precision_reference",
    "experiments/timing/synchronisation",
    "experiments/timing/time_bins",
    "experiments/timing/jitter",
    "experiments/timing/deadlines",

    "experiments/virtual_qubit_roles",
    "experiments/virtual_qubit_roles/computational",
    "experiments/virtual_qubit_roles/communication",
    "experiments/virtual_qubit_roles/memory",
    "experiments/virtual_qubit_roles/ancilla",
    "experiments/virtual_qubit_roles/syndrome",
    "experiments/virtual_qubit_roles/control_support",

    "experiments/memory_qubits",
    "experiments/memory_qubits/software_emulation",
    "experiments/memory_qubits/fpga_emulation",
    "experiments/memory_qubits/state_lifetime",
    "experiments/memory_qubits/role_transition",

    "experiments/low_latency_feedback",
    "experiments/low_latency_feedback/software",
    "experiments/low_latency_feedback/fpga",
    "experiments/low_latency_feedback/comparison",

    "evidence/fpga",
    "evidence/fpga/emulation",
    "evidence/fpga/timing",
    "evidence/fpga/switching",
    "evidence/fpga/feedback",

    "evidence/timing/precision",
    "evidence/timing/synchronisation",
    "evidence/timing/jitter",

    "evidence/virtual_qubit_roles",
    "evidence/memory_qubits",
    "evidence/low_latency_feedback"
)

Write-Host "Creating FPGA, timing and VirtualQubit experiment directories..."
Write-Host ""

foreach ($relativePath in $directories) {
    Ensure-Directory (Join-Path $root $relativePath)
}

# ----------------------------------------------------------------
# README content
# ----------------------------------------------------------------

$readmes = @{}

$readmes["fpga/README.md"] = @"
# QAI FPGA-Assisted Runtime and Emulation

FPGA is treated as an optional intermediate execution and emulation
layer between software models and physical quantum hardware.

Potential uses:

- deterministic state-machine transitions
- fast switching/control
- time-bin control
- event processing
- streaming
- low-latency feedback
- resource-control experiments

An FPGA-assisted emulator is not assumed to be a general quantum-state
simulator.

Hardware availability and device-specific capabilities must be verified
before implementation.
"@

$readmes["fpga/emulation/README.md"] = @"
# FPGA Emulation

Experiments that reproduce selected runtime, timing and resource-control
behaviour using FPGA technology.

The purpose is controlled experimentation around execution behaviour,
not replacement of a physical quantum processor.
"@

$readmes["fpga/state_machine/README.md"] = @"
# FPGA State Machine

Workspace for deterministic runtime state transitions.

Potential applications:

- phase transitions
- resource allocation transitions
- VirtualQubit role transitions
- control events
- timing states
- execution-state tracking

The actual hardware implementation remains experimental.
"@

$readmes["fpga/switching/README.md"] = @"
# FPGA Switching

Experiments for fast switching between defined runtime states,
resources or execution phases.

Candidate areas include:

- time-bin switching
- resource selection
- VirtualQubit role transitions
- control signalling
- event-driven transitions

Measured switching performance must be kept separate from modelled
or simulated performance.
"@

$readmes["fpga/feedback/README.md"] = @"
# FPGA Feedback

Low-latency feedback experiments between runtime events and control logic.

Potential applications:

- measurement-event processing
- syndrome-processing experiments
- adaptive control
- resource reallocation
- timing correction
- runtime state transitions

No claim is made that these mechanisms constitute a complete QEC or
fault-tolerant control system.
"@

$readmes["hpc/fpga_integration/README.md"] = @"
# HPC–FPGA Integration

Defines the experimental boundary between HPC/GPU workloads and
FPGA-assisted low-latency control.

Potential separation:

HPC/GPU
    |
    | preparation / computation / analysis
    v
FPGA
    |
    | deterministic control / events / timing
    v
Quantum Runtime / Emulator / Backend

The boundary is experimental and should be validated against actual
hardware and workload requirements.
"@

$readmes["quantum_runtime/virtual_qubit_roles/README.md"] = @"
# VirtualQubit Allocation Roles

VirtualQubit resources may be allocated according to workload role.

Initial experimental roles:

- Computational
- Communication
- Memory
- Ancilla
- Syndrome
- Control/Support

Role allocation is separate from physical mapping.

A physical resource may potentially serve different roles in different
execution phases where the hardware and workload permit safe reuse.
"@

$readmes["quantum_runtime/memory_qubits/README.md"] = @"
# Memory-Qubit Experiments

Workspace for experimenting with memory-oriented VirtualQubit allocation.

Topics include:

- state lifetime
- memory allocation
- memory resource policies
- emulator behaviour
- role transitions
- memory-to-compute and compute-to-memory transitions

A metadata/state registry is not automatically equivalent to a physical
quantum memory.

Physical quantum-memory capability must be demonstrated independently.
"@

$readmes["quantum_runtime/switching/README.md"] = @"
# QAI Runtime Switching

Runtime switching experiments for VirtualQubit roles, resource states
and execution phases.

Potential transition examples:

Computational -> Memory
Memory -> Computational
Computational -> Ancilla
Computational -> Syndrome

Transitions are experimental policies and require validation against
resource lifetime, hardware constraints and workload safety.
"@

$readmes["quantum_runtime/feedback/README.md"] = @"
# QAI Runtime Feedback

Closed-loop runtime feedback experiments.

Possible inputs:

- measurement events
- resource state
- timing events
- quality metrics
- calibration state
- execution results

Possible actions:

- remapping
- role transition
- timing adjustment
- retry
- fallback
- controlled re-execution

Feedback policies must remain bounded and observable.
"@

$readmes["experiments/fpga/README.md"] = @"
# FPGA Experiments

Controlled experiments comparing software-only execution with
FPGA-assisted execution.

Initial progression:

Software model
    ->
FPGA-assisted emulation
    ->
Accelerated implementation
    ->
Physical backend integration where available

The experiment must identify exactly which behaviour is being accelerated.
"@

$readmes["experiments/timing/README.md"] = @"
# Timing Experiments

Experiments involving:

- precision references
- synchronisation
- time bins
- jitter
- deadlines

Record planned versus observed timing.

Do not assume a particular precision-clock facility is available until
the relevant environment has been verified.
"@

$readmes["experiments/virtual_qubit_roles/README.md"] = @"
# VirtualQubit Role Experiments

Evaluate whether role-aware allocation provides useful resource
management compared with simple undifferentiated qubit allocation.

Candidate roles:

- Computational
- Communication
- Memory
- Ancilla
- Syndrome
- Control/Support

Measure resource use, timing, quality and role-transition overhead.
"@

$readmes["experiments/memory_qubits/README.md"] = @"
# Memory-Qubit Experiments

Initial experiments can use software emulation before hardware access.

Suggested progression:

1. software allocation model
2. state-lifetime model
3. software memory-role emulation
4. FPGA-assisted emulation
5. compatible quantum-memory hardware experiment

Do not equate software state storage with physical quantum memory.
"@

$readmes["experiments/low_latency_feedback/README.md"] = @"
# Low-Latency Feedback Experiments

Compare software and FPGA-assisted feedback paths.

Potential metrics:

- event-to-action latency
- jitter
- throughput
- dropped events
- control stability
- resource transition latency
- end-to-end cycle time

The purpose is to establish evidence for runtime architecture decisions.
"@

$readmes["evidence/fpga/README.md"] = @"
# FPGA Evidence

Evidence associated with FPGA-assisted QAI experiments.

Classify evidence as:

- simulated
- software-emulated
- FPGA-emulated
- hardware-measured

Do not merge these categories when reporting performance.
"@

$readmes["evidence/timing/README.md"] = @"
# Timing Evidence

Timing evidence should identify:

- timing source
- clock/reference
- synchronisation method
- phase
- measured duration
- jitter
- deadline
- measurement environment

Precision timing claims require actual measurement.
"@

$readmes["evidence/virtual_qubit_roles/README.md"] = @"
# VirtualQubit Role Evidence

Evidence for role-aware resource allocation.

Record:

- requested role
- allocated VirtualQubit
- physical/logical mapping where available
- phase
- lifetime
- transitions
- resource utilisation
- quality
- timing
- provenance
"@

$readmes["evidence/memory_qubits/README.md"] = @"
# Memory-Qubit Evidence

Evidence for memory-oriented VirtualQubit experiments.

Keep software/emulation evidence separate from physical quantum-memory
measurements.

Relevant observations may include:

- state lifetime model
- allocation duration
- transition latency
- memory capacity
- fidelity/quality where measurable
- re-use behaviour
"@

$readmes["evidence/low_latency_feedback/README.md"] = @"
# Low-Latency Feedback Evidence

Evidence for feedback latency and control experiments.

Compare software-only and FPGA-assisted paths where appropriate.

Record latency, jitter, throughput, event loss, control response and
end-to-end impact.
"@

foreach ($relativePath in $readmes.Keys) {
    Ensure-Readme (Join-Path $root $relativePath) $readmes[$relativePath]
}

# ----------------------------------------------------------------
# Development documentation
# ----------------------------------------------------------------

$docsPath = Join-Path $root "fpga/docs"
Ensure-Directory $docsPath

Ensure-Readme (Join-Path $docsPath "README.md") @"
# FPGA-Assisted QAI Development Notes

Supporting implementation notes for FPGA-assisted QAI runtime,
emulation, timing and feedback experiments.

The architecture remains technology-neutral.

Specific FPGA vendors, boards, interfaces and toolchains should be
introduced only when an actual experimental environment is selected.
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
    "fpga",
    "fpga/runtime",
    "fpga/emulation",
    "fpga/state_machine",
    "fpga/switching",
    "fpga/control",
    "fpga/streaming",
    "fpga/event_processing",
    "fpga/feedback",
    "fpga/resource_control",
    "fpga/interfaces",
    "fpga/adapters",
    "fpga/models",
    "fpga/tests",

    "hpc/fpga_integration",
    "hpc/fpga_integration/control_path",
    "hpc/fpga_integration/data_path",
    "hpc/fpga_integration/timing",
    "hpc/fpga_integration/events",
    "hpc/fpga_integration/feedback",

    "quantum_runtime/virtual_qubit_roles",
    "quantum_runtime/virtual_qubit_roles/computational",
    "quantum_runtime/virtual_qubit_roles/communication",
    "quantum_runtime/virtual_qubit_roles/memory",
    "quantum_runtime/virtual_qubit_roles/ancilla",
    "quantum_runtime/virtual_qubit_roles/syndrome",
    "quantum_runtime/virtual_qubit_roles/control_support",

    "quantum_runtime/memory_qubits",
    "quantum_runtime/memory_qubits/models",
    "quantum_runtime/memory_qubits/allocation",
    "quantum_runtime/memory_qubits/state_lifetime",
    "quantum_runtime/memory_qubits/emulation",
    "quantum_runtime/memory_qubits/transitions",

    "quantum_runtime/switching",
    "quantum_runtime/feedback",

    "experiments/fpga",
    "experiments/timing",
    "experiments/virtual_qubit_roles",
    "experiments/memory_qubits",
    "experiments/low_latency_feedback",

    "evidence/fpga",
    "evidence/timing",
    "evidence/virtual_qubit_roles",
    "evidence/memory_qubits",
    "evidence/low_latency_feedback",

    "fpga/README.md",
    "fpga/emulation/README.md",
    "fpga/state_machine/README.md",
    "fpga/switching/README.md",
    "fpga/feedback/README.md",
    "hpc/fpga_integration/README.md",
    "quantum_runtime/virtual_qubit_roles/README.md",
    "quantum_runtime/memory_qubits/README.md",
    "quantum_runtime/switching/README.md",
    "quantum_runtime/feedback/README.md",
    "experiments/fpga/README.md",
    "experiments/timing/README.md",
    "experiments/virtual_qubit_roles/README.md",
    "experiments/memory_qubits/README.md",
    "experiments/low_latency_feedback/README.md",
    "evidence/fpga/README.md",
    "evidence/timing/README.md",
    "evidence/virtual_qubit_roles/README.md",
    "evidence/memory_qubits/README.md",
    "evidence/low_latency_feedback/README.md"
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

Write-Host "QAI FPGA, Timing and VirtualQubit experiment structure created successfully."
Write-Host "Existing files were preserved."
Write-Host "No vendor-specific implementation code was created."
Write-Host "No FPGA, precision-clock or quantum-memory availability was assumed."
Write-Host ""
Write-Host "Next step:"
Write-Host "  git status --short"
Write-Host ""

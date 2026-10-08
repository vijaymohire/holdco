# ============================================================
# Bhadale IT - QAI Lab
# Bootstrap: HPC Gateway & Slurm Integration
# ============================================================
#
# Run from:
# PS E:\Bhadale IT\github\holdco>
#
# Purpose:
#   Create the VS Code workspace structure for:
#   QAI HPC Gateway + Slurm + Quantum Runtime Integration
#
# Design principles:
#   - Non-destructive
#   - Existing files are preserved
#   - No packages are installed
#   - No HPC/Slurm commands are executed
#   - No QPU/provider-specific implementation is created
#   - Existing General Factory Modular Planner is NOT duplicated
#   - QAI Lab contains orchestration/integration experiments
# ============================================================

$ErrorActionPreference = "Stop"

# ------------------------------------------------------------
# 1. Validate execution location
# ------------------------------------------------------------

$Root = (Get-Location).Path

if ((Split-Path $Root -Leaf) -ne "holdco") {
    Write-Host ""
    Write-Host "ERROR: This script should be run from the HoldCo root." -ForegroundColor Red
    Write-Host ""
    Write-Host "Expected:"
    Write-Host "  PS E:\Bhadale IT\github\holdco>"
    Write-Host ""
    Write-Host "Current:"
    Write-Host "  $Root"
    exit 1
}

Write-Host ""
Write-Host "============================================================"
Write-Host " QAI LAB - HPC GATEWAY & SLURM INTEGRATION"
Write-Host "============================================================"
Write-Host ""
Write-Host "HoldCo root:"
Write-Host "  $Root"
Write-Host ""

# ------------------------------------------------------------
# 2. Helper functions
# ------------------------------------------------------------

function Ensure-Directory {
    param (
        [string]$Path
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
        Write-Host "[DIR ] $Path" -ForegroundColor Cyan
    }
    else {
        Write-Host "[KEEP] $Path" -ForegroundColor DarkGray
    }
}

function Write-FileIfMissing {
    param (
        [string]$Path,
        [string]$Content
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        $Parent = Split-Path $Path -Parent

        if (-not (Test-Path -LiteralPath $Parent)) {
            New-Item -ItemType Directory -Path $Parent -Force | Out-Null
        }

        Set-Content -LiteralPath $Path -Value $Content -Encoding UTF8

        Write-Host "[FILE] $Path" -ForegroundColor Green
    }
    else {
        Write-Host "[KEEP] $Path" -ForegroundColor DarkGray
    }
}

# ------------------------------------------------------------
# 3. Root paths
# ------------------------------------------------------------

$QaiLab = Join-Path $Root "qai_lab"

$Gateway = Join-Path $QaiLab "gateway"
$Hpc = Join-Path $QaiLab "hpc"
$QuantumRuntime = Join-Path $QaiLab "quantum_runtime"
$Interfaces = Join-Path $QaiLab "interfaces"
$Planners = Join-Path $QaiLab "planners"
$Experiments = Join-Path $QaiLab "experiments"

Write-Host "QAI Lab:"
Write-Host "  $QaiLab"
Write-Host ""

# ------------------------------------------------------------
# 4. Directory structure
# ------------------------------------------------------------

$Directories = @(

    # Gateway
    $Gateway
    "$Gateway\contracts"
    "$Gateway\routing"
    "$Gateway\resource_profiles"
    "$Gateway\job_state"
    "$Gateway\evidence"
    "$Gateway\adapters"

    # HPC
    $Hpc
    "$Hpc\slurm"
    "$Hpc\slurm\job_templates"
    "$Hpc\slurm\resource_profiles"
    "$Hpc\slurm\heterogeneous_jobs"
    "$Hpc\slurm\adapters"
    "$Hpc\cpu"
    "$Hpc\gpu"
    "$Hpc\simulation"
    "$Hpc\optimization"

    # Quantum Runtime
    $QuantumRuntime
    "$QuantumRuntime\scheduler"
    "$QuantumRuntime\balancer"
    "$QuantumRuntime\mixer"
    "$QuantumRuntime\phase_control"
    "$QuantumRuntime\time_bins"
    "$QuantumRuntime\qubit_allocation"
    "$QuantumRuntime\mapping"
    "$QuantumRuntime\transpilation"
    "$QuantumRuntime\evidence"
    "$QuantumRuntime\adapters"

    # Interfaces
    $Interfaces
    "$Interfaces\qpi"
    "$Interfaces\workload_contracts"
    "$Interfaces\resource_contracts"
    "$Interfaces\execution_contracts"
    "$Interfaces\evidence_contracts"

    # Planner reference
    $Planners
    "$Planners\modular_planner"

    # Experiments
    $Experiments
    "$Experiments\active"
    "$Experiments\completed"
    "$Experiments\baselines"
    "$Experiments\evidence"
)

foreach ($Directory in $Directories) {
    Ensure-Directory $Directory
}

# ------------------------------------------------------------
# 5. Gateway README
# ------------------------------------------------------------

$GatewayReadme = @"
# QAI Gateway

## Purpose

The QAI Gateway is the classical integration and coordination
boundary between QAI workloads and execution resources.

## Responsibilities

- receive workload/execution requests
- validate execution metadata
- evaluate resource requirements
- route workloads to appropriate execution paths
- coordinate HPC/Slurm execution
- coordinate quantum runtime execution
- maintain execution state
- correlate job/task identifiers
- support simple scheduling and resource balancing
- capture execution evidence

## Execution Paths

QAI Gateway may route work toward:

- HPC CPU
- HPC GPU
- quantum simulation
- quantum backend
- hybrid execution

## Boundary

The Gateway is a classical coordination layer.

It is not:

- a QPU
- a quantum controller
- a replacement for Slurm
- a replacement for the Modular Planner
- a nanosecond-level quantum control system

## Initial Principle

Keep the first implementation simple and reliable.

Advanced multi-client quantum/classical interleaving is a later
capability and should be introduced only when actual shared-hardware
demand justifies it.
"@

Write-FileIfMissing "$Gateway\README.md" $GatewayReadme

# ------------------------------------------------------------
# 6. Gateway subarea READMEs
# ------------------------------------------------------------

Write-FileIfMissing "$Gateway\contracts\README.md" @"
# Gateway Contracts

Contracts between QAI workloads, the Gateway and execution resources.
"@

Write-FileIfMissing "$Gateway\routing\README.md" @"
# Gateway Routing

Routing logic for selecting HPC, simulation, quantum or hybrid
execution paths.

Initial routing should remain simple and policy-driven.
"@

Write-FileIfMissing "$Gateway\resource_profiles\README.md" @"
# Gateway Resource Profiles

Resource requirements and execution profiles used by the Gateway.

Examples may include:

- CPU
- GPU
- simulator
- quantum backend
- configurable qubit profiles

Do not treat example profiles as universal hardware standards.
"@

Write-FileIfMissing "$Gateway\job_state\README.md" @"
# Gateway Job State

Execution state and correlation of:

- QAI workload IDs
- task IDs
- Gateway requests
- Slurm job IDs
- quantum execution IDs
"@

Write-FileIfMissing "$Gateway\evidence\README.md" @"
# Gateway Evidence

Evidence associated with Gateway routing and execution decisions.

Candidate information:

- routing decision
- resource request
- resource allocation
- execution path
- timing
- job identifiers
- result status
- retries
- fallback
"@

Write-FileIfMissing "$Gateway\adapters\README.md" @"
# Gateway Adapters

Integration adapters for external execution/resource systems.

Provider-specific implementations should only be added after
actual capabilities and interface requirements are known.
"@

# ------------------------------------------------------------
# 7. HPC README
# ------------------------------------------------------------

$HpcReadme = @"
# HPC Integration

## Purpose

Provide conventional high-performance computing resources for QAI
workloads that benefit from CPU, GPU and scalable classical compute.

## Typical Workloads

- quantum simulation
- quantum emulation
- classical preprocessing
- optimisation
- parameter search
- tensor processing
- graph processing
- data preparation
- result analysis
- statistical benchmarking
- result fusion

## Slurm

Slurm remains the conventional HPC workload manager.

The QAI layer integrates with Slurm rather than replacing it.

## Principle

Heavy classical workloads should use conventional HPC/GPU resources
where appropriate.

Scarce quantum resources should be reserved for subproblems where
their use is justified and measurable.
"@

Write-FileIfMissing "$Hpc\README.md" $HpcReadme

# ------------------------------------------------------------
# 8. Slurm README
# ------------------------------------------------------------

$SlurmReadme = @"
# Slurm Integration

## Purpose

Define the QAI integration boundary with Slurm.

## Role of Slurm

Slurm remains responsible for conventional HPC resource scheduling.

The QAI Gateway may translate QAI workload requirements into
appropriate Slurm job/resource requests.

## Candidate Concepts

- job templates
- resource profiles
- heterogeneous jobs
- job/task identifiers
- CPU/GPU allocation
- simulation jobs
- optimisation jobs

## Quantum Resources

A quantum resource may be represented conceptually as a managed
resource/profile.

This does NOT mean Slurm directly controls a QPU.

An appropriate quantum platform adapter or runtime boundary is
required.

## Guardrail

Actual Slurm integration must be validated against the target
cluster configuration before implementation.
"@

Write-FileIfMissing "$Hpc\slurm\README.md" $SlurmReadme

Write-FileIfMissing "$Hpc\slurm\job_templates\README.md" @"
# Slurm Job Templates

Reserved for tested Slurm job templates.

Do not add cluster-specific commands until an actual HPC environment
and execution requirements are known.
"@

Write-FileIfMissing "$Hpc\slurm\resource_profiles\README.md" @"
# Slurm Resource Profiles

Definitions for CPU, GPU and other conventional HPC resource profiles.

Cluster-specific values must be validated before use.
"@

Write-FileIfMissing "$Hpc\slurm\heterogeneous_jobs\README.md" @"
# Heterogeneous Jobs

Reference designs for workloads requiring multiple conventional
resource types.

Example:

CPU → GPU → CPU

Quantum stages should use an explicit quantum execution boundary.
"@

Write-FileIfMissing "$Hpc\slurm\adapters\README.md" @"
# Slurm Adapters

Adapter layer between QAI Gateway contracts and Slurm.

The adapter should isolate Slurm-specific commands and APIs from
the QAI workload model.
"@

# ------------------------------------------------------------
# 9. HPC resource READMEs
# ------------------------------------------------------------

Write-FileIfMissing "$Hpc\cpu\README.md" @"
# HPC CPU

CPU-based classical execution resources.

Potential uses:

- preprocessing
- optimisation
- data analysis
- workflow coordination
- result fusion
"@

Write-FileIfMissing "$Hpc\gpu\README.md" @"
# HPC GPU

GPU-based classical acceleration resources.

Potential uses:

- machine learning
- tensor processing
- simulation
- numerical optimisation
- accelerated data processing
"@

Write-FileIfMissing "$Hpc\simulation\README.md" @"
# HPC Simulation

Large-scale quantum and classical simulation workloads.

Simulation results must remain clearly separated from physical-QPU
measurements.
"@

Write-FileIfMissing "$Hpc\optimization\README.md" @"
# HPC Optimisation

Classical optimisation and parameter-search workloads supporting
hybrid QAI experiments.
"@

# ------------------------------------------------------------
# 10. Quantum Runtime README
# ------------------------------------------------------------

$QuantumRuntimeReadme = @"
# QAI Quantum Runtime

## Purpose

Provide the runtime coordination layer for quantum execution.

## Initial Components

- scheduler
- balancer
- mixer
- phase control
- time-bin control
- qubit allocation
- mapping
- transpilation
- evidence
- backend adapters

## Initial Philosophy

The first implementation should be simple.

Focus on:

- reliable workload scheduling
- resource balancing
- compatible workload mixing
- phased execution
- time-bin gated operations
- dynamic qubit allocation
- evidence capture

Do not introduce complex multi-client quantum/classical
interleaving until actual shared-hardware demand justifies it.

## Time-Sensitive Boundary

Nanosecond-level quantum control belongs below this layer in the
appropriate quantum controller/clock/backend environment.

The QAI Runtime coordinates the execution but should not be treated
as the physical control system.
"@

Write-FileIfMissing "$QuantumRuntime\README.md" $QuantumRuntimeReadme

# ------------------------------------------------------------
# 11. Quantum Runtime component READMEs
# ------------------------------------------------------------

Write-FileIfMissing "$QuantumRuntime\scheduler\README.md" @"
# Quantum Scheduler

Initial workload ordering and execution eligibility.

Keep scheduling simple in the first milestone.
"@

Write-FileIfMissing "$QuantumRuntime\balancer\README.md" @"
# Quantum Resource Balancer

Select suitable available quantum execution resources based on
workload requirements and approved policies.
"@

Write-FileIfMissing "$QuantumRuntime\mixer\README.md" @"
# Quantum Workload Mixer

Identify compatible workloads that may be grouped or executed within
the same resource window.

Complex multi-client mixing is a later milestone.
"@

Write-FileIfMissing "$QuantumRuntime\phase_control\README.md" @"
# Phase Control

Coordinate major execution phases such as:

- preparation
- quantum execution
- measurement
- classical processing
- feedback
- result assembly
"@

Write-FileIfMissing "$QuantumRuntime\time_bins\README.md" @"
# Time-Bin Control

Represent controlled execution windows for time-sensitive operations.

Example phases:

state preparation
→ circuit segment
→ measurement
→ classical processing
→ feedback
→ next segment
"@

Write-FileIfMissing "$QuantumRuntime\qubit_allocation\README.md" @"
# Qubit Allocation

Dynamic quantum resource allocation.

The execution layer should not assume that every workload requires
the maximum available qubit count.

Example configurable profiles:

8
16
24
32
40
50

These are examples, not universal hardware standards.
"@

Write-FileIfMissing "$QuantumRuntime\mapping\README.md" @"
# Quantum Mapping

Runtime mapping of logical resources to available physical resources.

VirtualQubit metadata may inform mapping decisions.

Keep logical, virtual and physical qubit identities distinct.
"@

Write-FileIfMissing "$QuantumRuntime\transpilation\README.md" @"
# Runtime Transpilation

Backend-aware circuit transformation.

Potential inputs:

- topology
- connectivity
- calibration
- gate characteristics
- available qubits
- timing constraints
- backend/session semantics

Do not implement provider-specific assumptions until the target
backend is known.
"@

Write-FileIfMissing "$QuantumRuntime\evidence\README.md" @"
# Quantum Runtime Evidence

Capture:

- requested resources
- allocated resources
- actual resources used
- mapping
- backend
- calibration context
- timing
- shots
- quality
- retries
- remapping
- recovery actions
"@

Write-FileIfMissing "$QuantumRuntime\adapters\README.md" @"
# Quantum Backend Adapters

Adapters for simulators, local QPUs and external quantum providers.

An adapter must expose actual backend capabilities and session
semantics rather than assumed capabilities.
"@

# ------------------------------------------------------------
# 12. Interfaces
# ------------------------------------------------------------

$InterfacesReadme = @"
# QAI Execution Interfaces

Stable interfaces between:

QPI
→ QAI Framework
→ Gateway
→ HPC / Quantum Runtime
→ Evidence

The interfaces should hide implementation-specific details.
"@

Write-FileIfMissing "$Interfaces\README.md" $InterfacesReadme

Write-FileIfMissing "$Interfaces\qpi\README.md" @"
# QPI

Application-facing QAI interface.

The client should express workload intent without requiring direct
knowledge of Slurm or provider-specific QPU details.
"@

Write-FileIfMissing "$Interfaces\workload_contracts\README.md" @"
# Workload Contracts

Definitions for workload identity, stages, dependencies,
constraints and acceptance criteria.
"@

Write-FileIfMissing "$Interfaces\resource_contracts\README.md" @"
# Resource Contracts

Definitions for requested, allocated and observed resources.

May include:

- CPU
- GPU
- simulator
- logical qubits
- physical qubits
- QPU execution profile
"@

Write-FileIfMissing "$Interfaces\execution_contracts\README.md" @"
# Execution Contracts

Common execution lifecycle and state model across HPC,
simulation and quantum execution.
"@

Write-FileIfMissing "$Interfaces\evidence_contracts\README.md" @"
# Evidence Contracts

Common evidence schema for planning, scheduling, execution,
resource use, timing, quality and provenance.
"@

# ------------------------------------------------------------
# 13. Planner reference boundary
# ------------------------------------------------------------

Write-FileIfMissing "$Planners\README.md" @"
# QAI Planners

Planning components used by QAI Lab.

Reusable canonical planner implementations belong in the
appropriate General Factory location.
"@

Write-FileIfMissing "$Planners\modular_planner\README.md" @"
# Modular Planner Reference

This directory is a QAI Lab integration/reference point for the
canonical Modular Quantum Planner.

Canonical reusable implementation:

general_factory/reference_implementations/quantum/modular_planner/

Do NOT duplicate the canonical implementation here.

The QAI Lab should reference or invoke the General Factory
implementation through an appropriate interface.
"@

# ------------------------------------------------------------
# 14. Experiments
# ------------------------------------------------------------

Write-FileIfMissing "$Experiments\README.md" @"
# HPC / Gateway / Quantum Runtime Experiments

Experiments for validating the integration between:

- QAI Gateway
- Slurm/HPC
- Quantum Runtime
- quantum simulators
- quantum backends
- evidence collection

Initial focus should remain on simple, reliable execution.
"@

Write-FileIfMissing "$Experiments\active\README.md" @"
# Active Experiments

Experiments currently under development.
"@

Write-FileIfMissing "$Experiments\completed\README.md" @"
# Completed Experiments

Completed integration experiments and final records.
"@

Write-FileIfMissing "$Experiments\baselines\README.md" @"
# Baselines

Classical, HPC, simulator and other comparison baselines.
"@

Write-FileIfMissing "$Experiments\evidence\README.md" @"
# Evidence

Evidence generated by Gateway, HPC, Slurm, Runtime and quantum
execution experiments.
"@

# ------------------------------------------------------------
# 15. Architecture README
# ------------------------------------------------------------

$Architecture = @"
# QAI HPC Gateway & Slurm Integration Architecture

## Reference Flow

QAI LabaaS
    ↓
QPI / Application
    ↓
QAI Framework / Modular Planner
    ↓
QAI Gateway
    ├──→ HPC / Slurm
    │      ├── CPU
    │      ├── GPU
    │      ├── Simulation
    │      └── Optimisation
    │
    └──→ Quantum Runtime
           ├── Scheduler
           ├── Balancer
           ├── Mixer
           ├── Phase Control
           ├── Time-Bin Control
           ├── Qubit Allocation
           ├── Mapping
           ├── Transpilation
           └── Backend Adapter
                    ↓
                  QPU

## Separation of Concerns

QAI Framework
    What workload and resources are required?

Gateway
    Where should the workload be routed?

Slurm
    How should conventional HPC resources be scheduled?

Quantum Runtime
    How should quantum execution be coordinated?

Quantum Controller / Clock
    How should time-sensitive hardware operations occur?

QPU
    Where does physical quantum execution occur?

## Initial Milestone

Simple and reliable:

- workload scheduler
- resource balancer
- workload mixer
- phase controller
- time-bin gate
- dynamic qubit allocation
- evidence recorder

Advanced multi-client quantum/classical interleaving is deferred.

## Evidence

Every hybrid execution should distinguish:

- planned resources
- allocated resources
- observed resources
- predicted timing
- observed timing
- logical/physical mapping
- backend information
- calibration context
- results
- retries/recovery
"@

Write-FileIfMissing "$QaiLab\HPC_GATEWAY_SLURM_ARCHITECTURE.md" $Architecture

# ------------------------------------------------------------
# 16. Verification
# ------------------------------------------------------------

Write-Host ""
Write-Host "============================================================"
Write-Host " VERIFICATION"
Write-Host "============================================================"
Write-Host ""

$RequiredPaths = @(
    "$Gateway\README.md"
    "$Gateway\contracts\README.md"
    "$Gateway\routing\README.md"
    "$Gateway\resource_profiles\README.md"
    "$Gateway\job_state\README.md"
    "$Gateway\evidence\README.md"
    "$Gateway\adapters\README.md"

    "$Hpc\README.md"
    "$Hpc\slurm\README.md"
    "$Hpc\slurm\job_templates\README.md"
    "$Hpc\slurm\resource_profiles\README.md"
    "$Hpc\slurm\heterogeneous_jobs\README.md"
    "$Hpc\slurm\adapters\README.md"
    "$Hpc\cpu\README.md"
    "$Hpc\gpu\README.md"
    "$Hpc\simulation\README.md"
    "$Hpc\optimization\README.md"

    "$QuantumRuntime\README.md"
    "$QuantumRuntime\scheduler\README.md"
    "$QuantumRuntime\balancer\README.md"
    "$QuantumRuntime\mixer\README.md"
    "$QuantumRuntime\phase_control\README.md"
    "$QuantumRuntime\time_bins\README.md"
    "$QuantumRuntime\qubit_allocation\README.md"
    "$QuantumRuntime\mapping\README.md"
    "$QuantumRuntime\transpilation\README.md"
    "$QuantumRuntime\evidence\README.md"
    "$QuantumRuntime\adapters\README.md"

    "$Interfaces\README.md"
    "$Interfaces\qpi\README.md"
    "$Interfaces\workload_contracts\README.md"
    "$Interfaces\resource_contracts\README.md"
    "$Interfaces\execution_contracts\README.md"
    "$Interfaces\evidence_contracts\README.md"

    "$Planners\README.md"
    "$Planners\modular_planner\README.md"

    "$Experiments\README.md"
    "$Experiments\active\README.md"
    "$Experiments\completed\README.md"
    "$Experiments\baselines\README.md"
    "$Experiments\evidence\README.md"

    "$QaiLab\HPC_GATEWAY_SLURM_ARCHITECTURE.md"
)

$Passed = 0
$Failed = 0

foreach ($Path in $RequiredPaths) {
    if (Test-Path -LiteralPath $Path) {
        Write-Host "[OK  ] $Path" -ForegroundColor Green
        $Passed++
    }
    else {
        Write-Host "[FAIL] $Path" -ForegroundColor Red
        $Failed++
    }
}

Write-Host ""
Write-Host "============================================================"
Write-Host " SUMMARY"
Write-Host "============================================================"
Write-Host ""
Write-Host "Verified: $Passed"
Write-Host "Failed:   $Failed"
Write-Host ""

if ($Failed -eq 0) {
    Write-Host "QAI HPC Gateway & Slurm bootstrap completed." -ForegroundColor Green
    Write-Host ""
    Write-Host "Next recommended command:"
    Write-Host "  git status --short"
    Write-Host ""
    Write-Host "Do NOT commit yet. Review the generated tree first."
}
else {
    Write-Host "Bootstrap completed with verification failures." -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "============================================================"
Write-Host " END"
Write-Host "============================================================"

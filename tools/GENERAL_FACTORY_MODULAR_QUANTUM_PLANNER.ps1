# ============================================================
# Bhadale IT - General Factory
# Modular Quantum Planner Reference Implementation Bootstrap
#
# Execute from:
# PS E:\Bhadale IT\github\holdco>
#
# Canonical location:
# general_factory\reference_implementations\quantum\modular_planner
#
# IMPORTANT:
# This version intentionally does NOT use PowerShell here-strings.
# It writes files from arrays of lines to avoid parser issues.
#
# Non-destructive:
# Existing files are preserved.
# ============================================================

$ErrorActionPreference = "Stop"

# ============================================================
# 1. Validate root
# ============================================================

$HoldCoRoot = (Get-Location).Path

if ((Split-Path -Leaf $HoldCoRoot) -ne "holdco") {
    Write-Host ""
    Write-Host "ERROR: Run this script from the HoldCo root." -ForegroundColor Red
    Write-Host ""
    Write-Host "Expected:"
    Write-Host "PS E:\Bhadale IT\github\holdco>"
    Write-Host ""
    Write-Host "Current:"
    Write-Host "PS $HoldCoRoot>"
    Write-Host ""
    exit 1
}

# ============================================================
# 2. Target paths
# ============================================================

$ReferenceRoot = Join-Path $HoldCoRoot "general_factory\reference_implementations\quantum\modular_planner"
$DocsRoot      = Join-Path $ReferenceRoot "docs"
$ModuleRoot    = Join-Path $ReferenceRoot "qai_modular"
$TestsRoot     = Join-Path $ReferenceRoot "tests"

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " GENERAL FACTORY - MODULAR QUANTUM PLANNER" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Target:"
Write-Host $ReferenceRoot
Write-Host ""

# ============================================================
# 3. Helper functions
# ============================================================

function Ensure-Directory {
    param(
        [string]$Path
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
        Write-Host "[CREATED DIR ] $Path" -ForegroundColor Green
    }
    else {
        Write-Host "[EXISTS DIR  ] $Path" -ForegroundColor DarkGray
    }
}

function Write-FileIfMissing {
    param(
        [string]$Path,
        [string[]]$Lines
    )

    if (Test-Path -LiteralPath $Path) {
        Write-Host "[EXISTS FILE ] $Path" -ForegroundColor Yellow
        return
    }

    $Parent = Split-Path -Parent $Path

    if ($Parent) {
        Ensure-Directory $Parent
    }

    $Content = $Lines -join [Environment]::NewLine

    [System.IO.File]::WriteAllText(
        $Path,
        $Content,
        [System.Text.UTF8Encoding]::new($false)
    )

    Write-Host "[CREATED FILE] $Path" -ForegroundColor Green
}

# ============================================================
# 4. Create directory structure
# ============================================================

Ensure-Directory $ReferenceRoot
Ensure-Directory $DocsRoot
Ensure-Directory $ModuleRoot
Ensure-Directory $TestsRoot

# ============================================================
# 5. README.md
# ============================================================

$Readme = @(
"# Modular Quantum Planner",
"",
"## Purpose",
"",
"This directory contains the canonical General Factory reference implementation for modular quantum workload planning and simulated execution.",
"",
"The implementation provides a technology-aware but provider-neutral baseline for:",
"",
"- workload and task definitions;",
"- quantum resource/module profiles;",
"- resource-aware task mapping;",
"- execution-mode selection;",
"- simulated execution;",
"- metadata and experiment events;",
"- evidence capture;",
"- basic planning validation;",
"- rejection of unsupported execution requirements.",
"",
"This is a reference implementation and experimentation baseline.",
"",
"It is not a production quantum scheduler, compiler, physical QPU runtime, quantum-network service, QEC decoder or demonstration of universal quantum advantage.",
"",
"## Architectural Position",
"",
"```text",
"General Framework",
"        |",
"        v",
"General Factory",
"        |",
"        +-- Registered implementations",
"        +-- Adapters",
"        +-- Runtime services",
"        +-- Execution profiles",
"        |",
"        v",
"Modular Quantum Planner",
"        |",
"        +-- Workload analysis",
"        +-- Partitioning",
"        +-- Resource mapping",
"        +-- Execution-mode selection",
"        +-- Planning estimates",
"        |",
"        v",
"Resource / Runtime Layer",
"```",
"",
"## Responsibility Boundary",
"",
"### General Framework",
"",
"Defines technology-neutral workload semantics, constraints, decomposition contracts, acceptance criteria and governance.",
"",
"### General Factory",
"",
"Resolves logical capabilities to registered implementations, adapters, runtime services and execution profiles.",
"",
"### Modular Quantum Planner",
"",
"Provides a simple reusable baseline for:",
"",
"- candidate task partitioning;",
"- resource/module mapping;",
"- execution planning;",
"- capability validation;",
"- basic resource estimates;",
"- controlled execution decisions.",
"",
"### Resource Fabric",
"",
"The broader architecture treats the Resource Fabric as authoritative for:",
"",
"- resource capacity;",
"- availability;",
"- topology;",
"- supported operations;",
"- calibration;",
"- communication capabilities.",
"",
"### QAI Processor Modules",
"",
"Processor modules execute assigned tasks within actual backend constraints.",
"",
"A 50-qubit module, where used as an example profile, is a configurable profile rather than a universal hardware standard.",
"",
"### VirtualQubit Metadata",
"",
"VirtualQubit metadata represents stable logical identity and contextual information such as:",
"",
"- resource assignment;",
"- state transitions;",
"- error observations;",
"- provenance;",
"- experiment events.",
"",
"It does not represent a physical qubit, QEC decoder or quantum-link service.",
"",
"## Domain Separation",
"",
"Reusable planner contracts belong in the General Factory.",
"",
"Domain-specific workloads and acceptance criteria belong in pilot/reference implementations.",
"",
"The Agriculture Digital Farm pilot must not become the definition of the General Factory planner.",
"",
"## Execution Boundary",
"",
"The reference implementation does not assume:",
"",
"- physical QPUs;",
"- inter-QPU entanglement;",
"- quantum-state transfer;",
"- transduction;",
"- entanglement swapping;",
"- fault-tolerant quantum computing;",
"- quantum error correction execution.",
"",
"If a workload requires unsupported cross-QPU quantum capabilities, the planner should reject that execution path or use a valid alternative such as:",
"",
"- independent subproblems;",
"- classical coordination;",
"- appropriate circuit-knitting methods;",
"- simulation.",
"",
"## Evidence Discipline",
"",
"Simulated estimates must remain distinguishable from physical hardware measurements.",
"",
"Experimental conclusions should preserve:",
"",
"- baseline;",
"- assumptions;",
"- configuration;",
"- resource estimates;",
"- observed results;",
"- uncertainty;",
"- provenance;",
"- adaptation decisions.",
"",
"## Files",
"",
"```text",
"modular_planner/",
"|-- README.md",
"|-- docs/",
"|   `-- strategy.md",
"|-- qai_modular/",
"|   |-- __init__.py",
"|   |-- models.py",
"|   |-- planner.py",
"|   |-- runtime.py",
"|   `-- demo.py",
"`-- tests/",
"    `-- test_planner.py",
"```",
"",
"## Status",
"",
"Reference implementation / experimentation baseline.",
"",
"Capability maturity should be recorded separately from conceptual strategy.",
"",
"@vijaymohire"
)

Write-FileIfMissing `
    (Join-Path $ReferenceRoot "README.md") `
    $Readme

# ============================================================
# 6. docs/strategy.md
# ============================================================

$Strategy = @(
"# QAI Modular Processing, Adaptive Planning and FTQC Experimentation Strategy",
"",
"## 1. Purpose and Positioning",
"",
"This document captures an evolving architecture for client experimentation toward fault-tolerant quantum computing (FTQC).",
"",
"It combines:",
"",
"- classical reduction and learning;",
"- quantum algorithm experiments;",
"- resource-aware planning;",
"- modular execution;",
"- metadata-driven observability;",
"- adaptive control;",
"- evidence capture.",
"",
"This is a strategy and reference implementation guide.",
"",
"It is not a claim of demonstrated quantum advantage or production-ready FTQC.",
"",
"## 2. Architecture and Responsibilities",
"",
"### General Framework",
"",
"Provides technology-neutral:",
"",
"- workload semantics;",
"- constraints;",
"- decomposition contracts;",
"- acceptance criteria;",
"- governance.",
"",
"### General Factory",
"",
"Resolves logical capabilities to:",
"",
"- registered implementations;",
"- adapters;",
"- runtime services;",
"- execution profiles.",
"",
"### Advanced Planner",
"",
"The broader architecture may provide:",
"",
"- cost estimation;",
"- candidate partitions;",
"- task mappings;",
"- schedules;",
"- execution-mode selection;",
"- replanning decisions.",
"",
"The reference implementation in this directory provides only a simple planning baseline.",
"",
"### Resource Fabric",
"",
"Acts as the authoritative source for:",
"",
"- resource capacity;",
"- availability;",
"- topology;",
"- supported operations;",
"- calibration;",
"- communication capabilities.",
"",
"### QAI Processor Modules",
"",
"Execute assigned tasks within actual backend constraints.",
"",
"A 50-qubit module is a configurable profile and not a universal hardware standard.",
"",
"### VirtualQubit Metadata",
"",
"Provides stable logical identity and references to:",
"",
"- context;",
"- resource assignment;",
"- state transitions;",
"- error observations;",
"- provenance;",
"- experiment events.",
"",
"VirtualQubit metadata is not:",
"",
"- a physical qubit;",
"- a QEC decoder;",
"- a quantum-link service.",
"",
"### Evidence and Control",
"",
"The experimentation layer compares predicted and observed outcomes, preserves baselines, quantifies uncertainty and permits bounded, validated adaptations.",
"",
"## 3. Complementary Methods",
"",
"### Classical reduction and learning",
"",
"Classical neural networks, PCA/SVD, manifold learning and nonlinear representations may reduce or prioritize candidate spaces.",
"",
"Any reduction must be evaluated to verify that useful solutions and constraints are preserved.",
"",
"### Quaternion and geometric representations",
"",
"Quaternion or geometric representations may be useful where domain geometry supports them.",
"",
"They do not guarantee general compression.",
"",
"### MPS and tensor-network simulation",
"",
"Matrix Product States and related tensor-network approaches can represent suitable states compactly.",
"",
"Simulation cost can increase sharply for unfavorable entanglement structures.",
"",
"### QAOA and variable/adaptive circuits",
"",
"QAOA and variable/adaptive circuits may explore:",
"",
"- circuit depth;",
"- parameters;",
"- mixers;",
"- decomposition.",
"",
"They should be evaluated against strong classical baselines.",
"",
"### Quantum search and superposition",
"",
"Quantum search and superposition apply to specific algorithmic structures.",
"",
"Measurement does not reveal every alternative simultaneously.",
"",
"### Quantum error correction",
"",
"QEC codes and decoders require workload-specific evaluation of:",
"",
"- logical error;",
"- overhead;",
"- decoder latency;",
"- noise;",
"- connectivity.",
"",
"### Entanglement swapping and transduction",
"",
"These are future capabilities only when:",
"",
"- compatible hardware exists;",
"- required services exist;",
"- suitable links exist;",
"- validated protocols exist.",
"",
"## 4. Adaptive Planning and Control Loop",
"",
"1. Define target quality, resource ceilings, error thresholds, latency/cost goals and stop conditions.",
"2. Analyze workload dependencies and apply validated classical reductions where suitable.",
"3. Generate candidate partitions, circuit structures and resource mappings.",
"4. Estimate qubits, depth, gates, shots, expected quality, communication and recombination overhead.",
"5. Execute through the appropriate local, simulated, emulated or hardware-specific adapter.",
"6. Collect progress, configuration, backend/session information, calibration/noise model, error signals, resource use, results and provenance.",
"7. Compare outcomes with targets and baselines.",
"8. Distinguish simulator estimates from physical measurements.",
"9. Adapt parameters, circuit, schedule or mapping within approved boundaries.",
"10. Otherwise stop, fall back or request review.",
"11. Retain experiment records so future recommendations are evidence-based and reproducible.",
"",
"## 5. Classical Server-Farm Analogy and Its Boundary",
"",
"The software control plane can resemble a classical server farm by:",
"",
"- dispatching independent tasks;",
"- monitoring status;",
"- recording failures;",
"- aggregating classical results.",
"",
"Some decomposed workloads can use this model.",
"",
"Quantum workloads are not generally distributable like stateless classical jobs.",
"",
"Separate QPU sessions do not automatically share a coherent quantum state or entanglement.",
"",
"Ordinary Ethernet, InfiniBand, optical links and DWDM carry classical traffic and do not by themselves provide quantum-state transfer.",
"",
"If an algorithm requires:",
"",
"- cross-QPU entanglement;",
"- remote gates;",
"- teleportation;",
"- entanglement swapping;",
"",
"then the execution environment requires explicitly supported quantum-network services, compatible hardware, validated protocols and appropriate error/resource models.",
"",
"If unavailable, the execution path should be rejected or replaced with a valid alternative such as:",
"",
"- independent subproblems;",
"- classical coordination;",
"- circuit-knitting methods where appropriate;",
"- simulation.",
"",
"Aggregating measurement results is not arbitrary quantum-state recombination.",
"",
"## 6. Known Limitations and Guardrails",
"",
"The reference implementation assumes:",
"",
"- no inter-QPU entanglement service;",
"- no physical QPU;",
"- no quantum-state transfer;",
"- no transduction;",
"- no entanglement swapping;",
"- no QEC execution;",
"- no FTQC execution.",
"",
"The 50-qubit figure is a profile target where used.",
"",
"Physical and logical qubits must be distinguished.",
"",
"The sample planner is a simple mapping baseline.",
"",
"It is not:",
"",
"- an optimal scheduler;",
"- a compiler;",
"- a production resource estimator.",
"",
"Metadata records only instrumented observations.",
"",
"Noise detection requires valid telemetry, calibration, syndrome data or simulator evidence.",
"",
"Learning models may recommend configurations, but hardware control requires validated limits, interlocks and appropriate approval.",
"",
"Partitioning may increase communication, sampling, reconstruction and coordination costs or reduce global solution quality.",
"",
"Methods are workload-specific.",
"",
"No universal quantum advantage is presumed.",
"",
"Simulated estimates must be labelled separately from hardware measurements.",
"",
"## 7. Reference Implementation",
"",
"The reference implementation is a dependency-free Python mock containing:",
"",
"- module profiles;",
"- task definitions;",
"- a basic planner;",
"- simulated runtime;",
"- metadata events;",
"- demonstration code;",
"- unit tests.",
"",
"The planner explicitly rejects a cross-QPU entanglement task when no registered module advertises that capability.",
"",
"### Initial Experiments",
"",
"1. Dispatch independent tasks to separate sessions and compare solution quality and orchestration overhead.",
"2. Compare monolithic and decomposed workflows while recording runtime, data movement and aggregation costs.",
"3. Add simulated noise profiles and clearly label all results as simulated.",
"4. Add QAOA candidates and QEC code/decoder estimates as separate plugins with explicit assumptions.",
"5. Add provider adapters only after actual provider capabilities, session semantics, quotas, calibration data and networking contracts are known.",
"",
"## 8. Repository Placement",
"",
"```text",
"general_factory/",
"`-- reference_implementations/",
"    `-- quantum/",
"        `-- modular_planner/",
"            |-- README.md",
"            |-- docs/",
"            |   `-- strategy.md",
"            |-- qai_modular/",
"            |   |-- models.py",
"            |   |-- planner.py",
"            |   |-- runtime.py",
"            |   `-- demo.py",
"            `-- tests/",
"                `-- test_planner.py",
'```',
'',
'Keep reusable planner contracts in the General Factory.',
'Keep domain-specific workloads and acceptance criteria in pilot/reference implementations.',
'Do not make the Agriculture Digital Farm pilot the definition of the General Factory.',
'',
"## 9. Suggested Metrics",
"",
"### Solution Quality",
"",
"- solution quality;",
"- constraint violations;",
"- comparison with classical baseline.",
"",
"### Quantum Execution",
"",
"- circuit depth;",
"- gate counts;",
"- shots;",
"- execution time;",
"- sampling uncertainty.",
"",
"### Resource",
"",
"Estimated and observed:",
"",
"- physical resource costs;",
"- logical resource costs.",
"",
"These should remain separate.",
"",
"### Modular Execution",
"",
"- inter-module classical bytes;",
"- latency;",
"- scheduling overhead;",
"- result aggregation time.",
"",
"### Quantum Network",
"",
"Where real quantum links exist:",
"",
"- entanglement generation rate;",
"- link fidelity;",
"- success probability;",
"- memory lifetime;",
"- feed-forward latency;",
"- protocol overhead.",
"",
"### QEC",
"",
"Where QEC is evaluated:",
"",
"- logical error rate per operation/cycle;",
"- physical-to-logical overhead;",
"- decoder latency;",
"- decoder throughput;",
"- tested noise assumptions.",
"",
"### Adaptation",
"",
"- adaptation benefit versus baseline;",
"- adaptation overhead;",
"- reproducibility;",
"- rejected-plan frequency.",
"",
"## 10. Status and Evidence Classification",
"",
"Use explicit maturity labels:",
"",
"- Concept",
"- Documented",
"- Reference Implementation",
"- Demonstrated",
"- Experimentally Validated",
"- Prototype",
"- Production / Operational",
"",
"A strategy statement must not automatically be treated as implementation evidence.",
"",
"Simulated results must not be represented as physical-hardware measurements.",
"",
"@vijaymohire"
)

Write-FileIfMissing `
    (Join-Path $DocsRoot "strategy.md") `
    $Strategy

# ============================================================
# 7. qai_modular/models.py
# ============================================================

$Models = @(
'"""Reusable models for the General Factory Modular Quantum Planner."""',
"",
"from dataclasses import dataclass, field",
"from typing import Dict, List, Optional",
"",
"",
"@dataclass",
"class ModuleProfile:",
'    """Registered execution-module capability profile."""',
"",
"    module_id: str",
"    name: str",
"    qubit_capacity: int",
"    supported_operations: List[str] = field(default_factory=list)",
"    execution_modes: List[str] = field(default_factory=lambda: ['simulated'])",
"    supports_cross_qpu_entanglement: bool = False",
"    metadata: Dict[str, str] = field(default_factory=dict)",
"",
"",
"@dataclass",
"class QuantumTask:",
'    """Logical task definition."""',
"",
"    task_id: str",
"    name: str",
"    required_qubits: int = 1",
"    required_operations: List[str] = field(default_factory=list)",
"    execution_mode: str = 'simulated'",
"    requires_cross_qpu_entanglement: bool = False",
"    estimated_depth: int = 0",
"    estimated_gates: int = 0",
"    estimated_shots: int = 0",
"    metadata: Dict[str, str] = field(default_factory=dict)",
"",
"",
"@dataclass",
"class ResourceEstimate:",
'    """Estimated resources for a planned task."""',
"",
"    qubits: int",
"    depth: int",
"    gates: int",
"    shots: int",
"    estimated_execution_time: float = 0.0",
"    estimated_communication_bytes: int = 0",
"",
"",
"@dataclass",
"class TaskAssignment:",
'    """Mapping of a logical task to an execution module."""',
"",
"    task_id: str",
"    module_id: str",
"    execution_mode: str",
"    resource_estimate: ResourceEstimate",
"",
"",
"@dataclass",
"class ExecutionPlan:",
'    """Planner output."""',
"",
"    plan_id: str",
"    assignments: List[TaskAssignment] = field(default_factory=list)",
"    rejected_tasks: List[str] = field(default_factory=list)",
"    warnings: List[str] = field(default_factory=list)",
"    metadata: Dict[str, str] = field(default_factory=dict)",
"",
"",
"@dataclass",
"class VirtualQubitMetadata:",
'    """Logical metadata associated with a virtual qubit reference."""',
"",
"    virtual_qubit_id: str",
"    task_id: str",
"    module_id: Optional[str] = None",
"    state: str = 'unassigned'",
"    error_observation: Optional[float] = None",
"    provenance: Dict[str, str] = field(default_factory=dict)",
"",
"",
"@dataclass",
"class ExecutionEvent:",
'    """Evidence/provenance event emitted by the runtime."""',
"",
"    event_type: str",
"    task_id: Optional[str]",
"    timestamp: float",
"    data: Dict[str, object] = field(default_factory=dict)",
"",
"",
"@dataclass",
"class ExecutionResult:",
'    """Simulated execution result."""',
"",
"    task_id: str",
"    module_id: str",
"    execution_mode: str",
"    success: bool",
"    quality_score: float",
"    execution_time: float",
"    events: List[ExecutionEvent] = field(default_factory=list)",
"    metadata: Dict[str, object] = field(default_factory=dict)"
)

Write-FileIfMissing `
    (Join-Path $ModuleRoot "models.py") `
    $Models

# ============================================================
# 8. qai_modular/planner.py
# ============================================================

$Planner = @(
'"""Basic capability-aware Modular Quantum Planner."""',
"",
"from dataclasses import dataclass",
"from typing import Dict, Iterable",
"",
"from .models import (",
"    ExecutionPlan,",
"    ModuleProfile,",
"    QuantumTask,",
"    ResourceEstimate,",
"    TaskAssignment,",
")",
"",
"",
"class PlanningError(Exception):",
'    """Base planner exception."""',
"",
"",
"class UnsupportedExecutionError(PlanningError):",
'    """Raised when a requested execution capability is unavailable."""',
"",
"",
"@dataclass",
"class PlannerConfig:",
"    default_execution_time_per_depth: float = 0.001",
"    default_communication_bytes_per_task: int = 1024",
"",
"",
"class ModularQuantumPlanner:",
'    """Simple task-to-module planner baseline."""',
"",
"    def __init__(self, modules: Iterable[ModuleProfile], config=None):",
"        self.modules: Dict[str, ModuleProfile] = {",
"            module.module_id: module",
"            for module in modules",
"        }",
"        self.config = config or PlannerConfig()",
"",
"    def _supports_task(self, module: ModuleProfile, task: QuantumTask) -> bool:",
"        if task.required_qubits > module.qubit_capacity:",
"            return False",
"",
"        if not all(",
"            operation in module.supported_operations",
"            for operation in task.required_operations",
"        ):",
"            return False",
"",
"        if task.execution_mode not in module.execution_modes:",
"            return False",
"",
"        if (",
"            task.requires_cross_qpu_entanglement",
"            and not module.supports_cross_qpu_entanglement",
"        ):",
"            return False",
"",
"        return True",
"",
"    def _estimate_resources(self, task: QuantumTask) -> ResourceEstimate:",
"        execution_time = (",
"            task.estimated_depth",
"            * self.config.default_execution_time_per_depth",
"        )",
"",
"        return ResourceEstimate(",
"            qubits=task.required_qubits,",
"            depth=task.estimated_depth,",
"            gates=task.estimated_gates,",
"            shots=task.estimated_shots,",
"            estimated_execution_time=execution_time,",
"            estimated_communication_bytes=(",
"                self.config.default_communication_bytes_per_task",
"            ),",
"        )",
"",
"    def plan(self, tasks: Iterable[QuantumTask], plan_id='plan-001') -> ExecutionPlan:",
"        plan = ExecutionPlan(plan_id=plan_id)",
"",
"        for task in tasks:",
"            selected_module = None",
"",
"            for module in self.modules.values():",
"                if self._supports_task(module, task):",
"                    selected_module = module",
"                    break",
"",
"            if selected_module is None:",
"                plan.rejected_tasks.append(task.task_id)",
"",
"                if task.requires_cross_qpu_entanglement:",
"                    plan.warnings.append(",
'                        f"{task.task_id}: cross-QPU entanglement capability is not advertised by any registered module."',
"                    )",
"                else:",
"                    plan.warnings.append(",
'                        f"{task.task_id}: no registered module satisfies"',
"                        # Planner validates the task requirements.",
"                    )",
"",
"                continue",
"",
"            assignment = TaskAssignment(",
"                task_id=task.task_id,",
"                module_id=selected_module.module_id,",
"                execution_mode=task.execution_mode,",
"                resource_estimate=self._estimate_resources(task),",
"            )",
"",
"            plan.assignments.append(assignment)",
"",
"        return plan",
"",
"",
"def build_demo_planner() -> ModularQuantumPlanner:",
"    modules = [",
"        ModuleProfile(",
"            module_id='qmodule-01',",
"            name='Simulated Quantum Module 01',",
"            qubit_capacity=50,",
"            supported_operations=['single_qubit', 'two_qubit', 'measurement'],",
"            execution_modes=['simulated'],",
"            supports_cross_qpu_entanglement=False,",
"        ),",
"        ModuleProfile(",
"            module_id='qmodule-02',",
"            name='Simulated Quantum Module 02',",
"            qubit_capacity=50,",
"            supported_operations=['single_qubit', 'two_qubit', 'measurement'],",
"            execution_modes=['simulated'],",
"            supports_cross_qpu_entanglement=False,",
"        ),",
"    ]",
"",
"    return ModularQuantumPlanner(modules)"
)

Write-FileIfMissing `
    (Join-Path $ModuleRoot "planner.py") `
    $Planner

# ============================================================
# 9. qai_modular/runtime.py
# ============================================================

$Runtime = @(
'"""Dependency-free simulated runtime for the Modular Quantum Planner."""',
"",
"import time",
"",
"from .models import ExecutionEvent, ExecutionPlan, ExecutionResult",
"",
"",
"class SimulatedQuantumRuntime:",
'    """Execute planner assignments in a deterministic mock runtime."""',
"",
"    def __init__(self):",
"        self.events = []",
"",
"    def execute(self, plan: ExecutionPlan):",
"        results = []",
"",
"        for assignment in plan.assignments:",
"            start = time.perf_counter()",
"",
"            self.events.append(",
"                ExecutionEvent(",
"                    event_type='task_started',",
"                    task_id=assignment.task_id,",
"                    timestamp=time.time(),",
"                    data={",
"                        'module_id': assignment.module_id,",
"                        'execution_mode': assignment.execution_mode,",
"                    },",
"                )",
"            )",
"",
"            quality_score = 1.0",
"            elapsed = time.perf_counter() - start",
"",
"            completion_event = ExecutionEvent(",
"                event_type='task_completed',",
"                task_id=assignment.task_id,",
"                timestamp=time.time(),",
"                data={",
"                    'simulated': True,",
"                    'quality_score': quality_score,",
"                },",
"            )",
"",
"            result = ExecutionResult(",
"                task_id=assignment.task_id,",
"                module_id=assignment.module_id,",
"                execution_mode=assignment.execution_mode,",
"                success=True,",
"                quality_score=quality_score,",
"                execution_time=elapsed,",
"                events=[completion_event],",
"                metadata={",
"                    'simulated': True,",
"                    'physical_measurement': False,",
"                    'resource_estimate': {",
"                        'qubits': assignment.resource_estimate.qubits,",
"                        'depth': assignment.resource_estimate.depth,",
"                        'gates': assignment.resource_estimate.gates,",
"                        'shots': assignment.resource_estimate.shots,",
"                    },",
"                },",
"            )",
"",
"            results.append(result)",
"            self.events.extend(result.events)",
"",
"        return results"
)

Write-FileIfMissing `
    (Join-Path $ModuleRoot "runtime.py") `
    $Runtime

# ============================================================
# 10. qai_modular/demo.py
# ============================================================

$Demo = @(
'"""Demonstration of the dependency-free Modular Quantum Planner."""',
"",
"from .models import QuantumTask",
"from .planner import build_demo_planner",
"from .runtime import SimulatedQuantumRuntime",
"",
"",
"def main():",
"    planner = build_demo_planner()",
"",
"    tasks = [",
"        QuantumTask(",
"            task_id='task-001',",
"            name='Independent Optimization Task A',",
"            required_qubits=12,",
"            required_operations=['single_qubit', 'two_qubit', 'measurement'],",
"            execution_mode='simulated',",
"            estimated_depth=10,",
"            estimated_gates=80,",
"            estimated_shots=1000,",
"        ),",
"        QuantumTask(",
"            task_id='task-002',",
"            name='Independent Optimization Task B',",
"            required_qubits=20,",
"            required_operations=['single_qubit', 'two_qubit', 'measurement'],",
"            execution_mode='simulated',",
"            estimated_depth=15,",
"            estimated_gates=120,",
"            estimated_shots=1000,",
"        ),",
"        QuantumTask(",
"            task_id='task-003',",
"            name='Unsupported Cross-QPU Entanglement Task',",
"            required_qubits=10,",
"            required_operations=['single_qubit', 'two_qubit', 'measurement'],",
"            execution_mode='simulated',",
"            requires_cross_qpu_entanglement=True,",
"        ),",
"    ]",
"",
"    plan = planner.plan(tasks, plan_id='demo-plan-001')",
"",
"    print('=== Modular Quantum Planner Demo ===')",
"    print()",
"    print('Assignments:')",
"",
"    for assignment in plan.assignments:",
"        print(",
"            f'  {assignment.task_id} -> '",
"            f'{assignment.module_id} '",
"            f'({assignment.execution_mode})'",
"        )",
"",
"    print()",
"    print('Rejected tasks:')",
"",
"    for task_id in plan.rejected_tasks:",
"        print(f'  {task_id}')",
"",
"    print()",
"    print('Warnings:')",
"",
"    for warning in plan.warnings:",
"        print(f'  {warning}')",
"",
"    runtime = SimulatedQuantumRuntime()",
"    results = runtime.execute(plan)",
"",
"    print()",
"    print('Simulated Results:')",
"",
"    for result in results:",
"        print(",
"            f'  {result.task_id}: '",
"            f'success={result.success}, '",
"            f'quality={result.quality_score}, '",
"            f'simulated={result.metadata[",
"                'simulated'",
"            ]}'",
"        )",
"",
"",
"if __name__ == '__main__':",
"    main()"
)

Write-FileIfMissing `
    (Join-Path $ModuleRoot "demo.py") `
    $Demo

# ============================================================
# 11. qai_modular/__init__.py
# ============================================================

$Init = @(
'"""General Factory Modular Quantum Planner package."""'
)

Write-FileIfMissing `
    (Join-Path $ModuleRoot "__init__.py") `
    $Init

# ============================================================
# 12. tests/test_planner.py
# ============================================================

$Tests = @(
'"""Tests for the General Factory Modular Quantum Planner."""',
"",
"import unittest",
"",
"from qai_modular.models import ModuleProfile, QuantumTask",
"from qai_modular.planner import ModularQuantumPlanner",
"from qai_modular.runtime import SimulatedQuantumRuntime",
"",
"",
"class ModularQuantumPlannerTests(unittest.TestCase):",
"",
"    def setUp(self):",
"        self.modules = [",
"            ModuleProfile(",
"                module_id='module-a',",
"                name='Module A',",
"                qubit_capacity=50,",
"                supported_operations=['single_qubit', 'two_qubit', 'measurement'],",
"                execution_modes=['simulated'],",
"                supports_cross_qpu_entanglement=False,",
"            ),",
"            ModuleProfile(",
"                module_id='module-b',",
"                name='Module B',",
"                qubit_capacity=50,",
"                supported_operations=['single_qubit', 'two_qubit', 'measurement'],",
"                execution_modes=['simulated'],",
"                supports_cross_qpu_entanglement=False,",
"            ),",
"        ]",
"",
"        self.planner = ModularQuantumPlanner(self.modules)",
"",
"    def test_independent_task_is_planned(self):",
"        task = QuantumTask(",
"            task_id='task-001',",
"            name='Independent Task',",
"            required_qubits=10,",
"            required_operations=['single_qubit', 'two_qubit', 'measurement'],",
"            execution_mode='simulated',",
"        )",
"",
"        plan = self.planner.plan([task])",
"",
"        self.assertEqual(plan.rejected_tasks, [])",
"        self.assertEqual(len(plan.assignments), 1)",
"        self.assertEqual(plan.assignments[0].module_id, 'module-a')",
"",
"    def test_unsupported_cross_qpu_entanglement_is_rejected(self):",
"        task = QuantumTask(",
"            task_id='entanglement-task',",
"            name='Cross QPU Entanglement',",
"            required_qubits=10,",
"            required_operations=['single_qubit', 'two_qubit', 'measurement'],",
"            execution_mode='simulated',",
"            requires_cross_qpu_entanglement=True,",
"        )",
"",
"        plan = self.planner.plan([task])",
"",
"        self.assertEqual(plan.rejected_tasks, ['entanglement-task'])",
"        self.assertEqual(len(plan.assignments), 0)",
"",
"    def test_task_exceeding_qubit_capacity_is_rejected(self):",
"        task = QuantumTask(",
"            task_id='large-task',",
"            name='Oversized Task',",
"            required_qubits=100,",
"            execution_mode='simulated',",
"        )",
"",
"        plan = self.planner.plan([task])",
"",
"        self.assertEqual(plan.rejected_tasks, ['large-task'])",
"",
"    def test_simulated_runtime_produces_evidence(self):",
"        task = QuantumTask(",
"            task_id='runtime-task',",
"            name='Runtime Test',",
"            required_qubits=8,",
"            execution_mode='simulated',",
"        )",
"",
"        plan = self.planner.plan([task])",
"",
"        runtime = SimulatedQuantumRuntime()",
"        results = runtime.execute(plan)",
"",
"        self.assertEqual(len(results), 1)",
"        self.assertTrue(results[0].success)",
"        self.assertTrue(results[0].metadata['simulated'])",
"        self.assertFalse(results[0].metadata['physical_measurement'])",
"",
"",
"if __name__ == '__main__':",
"    unittest.main()"
)

Write-FileIfMissing `
    (Join-Path $TestsRoot "test_planner.py") `
    $Tests

# ============================================================
# 13. Verify files
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " VERIFYING FILES" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

$ExpectedFiles = @(
    "README.md",
    "docs\strategy.md",
    "qai_modular\__init__.py",
    "qai_modular\models.py",
    "qai_modular\planner.py",
    "qai_modular\runtime.py",
    "qai_modular\demo.py",
    "tests\test_planner.py"
)

$Missing = @()

foreach ($RelativePath in $ExpectedFiles) {

    $FullPath = Join-Path $ReferenceRoot $RelativePath

    if (Test-Path -LiteralPath $FullPath) {
        Write-Host "[OK] $RelativePath" -ForegroundColor Green
    }
    else {
        Write-Host "[MISSING] $RelativePath" -ForegroundColor Red
        $Missing += $RelativePath
    }
}

# ============================================================
# 14. Run tests
# ============================================================

Write-Host ""

$Python = Get-Command python -ErrorAction SilentlyContinue

if ($Python) {

    Write-Host "Python detected:" -ForegroundColor Cyan
    python --version

    Write-Host ""
    Write-Host "Running unit tests..." -ForegroundColor Cyan
    Write-Host ""

    Push-Location $ReferenceRoot

    try {
        python -m unittest discover -s tests -v
        $TestExitCode = $LASTEXITCODE
    }
    finally {
        Pop-Location
    }

    Write-Host ""

    if ($TestExitCode -eq 0) {
        Write-Host "UNIT TESTS PASSED." -ForegroundColor Green
    }
    else {
        Write-Host "UNIT TESTS RETURNED EXIT CODE $TestExitCode." -ForegroundColor Yellow
    }

}
else {

    Write-Host "Python was not detected on PATH." -ForegroundColor Yellow
    Write-Host "Files were still created."

}

# ============================================================
# 15. Final tree
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " FINAL MODULAR QUANTUM PLANNER TREE" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

tree $ReferenceRoot /F /A

# ============================================================
# 16. Completion
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " COMPLETE" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Canonical location:"
Write-Host $ReferenceRoot
Write-Host ""

if ($Missing.Count -eq 0) {
    Write-Host "All expected files are present." -ForegroundColor Green
}
else {
    Write-Host "Missing files:" -ForegroundColor Red

    foreach ($Item in $Missing) {
        Write-Host "  $Item"
    }
}

Write-Host ""
Write-Host "Architectural boundary:"
Write-Host "  General Factory = reusable planner contracts and implementation"
Write-Host "  Pilots = domain-specific workloads and acceptance criteria"
Write-Host "  QAI Lab = experimentation and client co-design"
Write-Host ""
Write-Host "Existing files were preserved."
Write-Host ""

"""Reusable models for the General Factory Modular Quantum Planner."""

from dataclasses import dataclass, field
from typing import Dict, List, Optional


@dataclass
class ModuleProfile:
    """Registered execution-module capability profile."""

    module_id: str
    name: str
    qubit_capacity: int
    supported_operations: List[str] = field(default_factory=list)
    execution_modes: List[str] = field(default_factory=lambda: ['simulated'])
    supports_cross_qpu_entanglement: bool = False
    metadata: Dict[str, str] = field(default_factory=dict)


@dataclass
class QuantumTask:
    """Logical task definition."""

    task_id: str
    name: str
    required_qubits: int = 1
    required_operations: List[str] = field(default_factory=list)
    execution_mode: str = 'simulated'
    requires_cross_qpu_entanglement: bool = False
    estimated_depth: int = 0
    estimated_gates: int = 0
    estimated_shots: int = 0
    metadata: Dict[str, str] = field(default_factory=dict)


@dataclass
class ResourceEstimate:
    """Estimated resources for a planned task."""

    qubits: int
    depth: int
    gates: int
    shots: int
    estimated_execution_time: float = 0.0
    estimated_communication_bytes: int = 0


@dataclass
class TaskAssignment:
    """Mapping of a logical task to an execution module."""

    task_id: str
    module_id: str
    execution_mode: str
    resource_estimate: ResourceEstimate


@dataclass
class ExecutionPlan:
    """Planner output."""

    plan_id: str
    assignments: List[TaskAssignment] = field(default_factory=list)
    rejected_tasks: List[str] = field(default_factory=list)
    warnings: List[str] = field(default_factory=list)
    metadata: Dict[str, str] = field(default_factory=dict)


@dataclass
class VirtualQubitMetadata:
    """Logical metadata associated with a virtual qubit reference."""

    virtual_qubit_id: str
    task_id: str
    module_id: Optional[str] = None
    state: str = 'unassigned'
    error_observation: Optional[float] = None
    provenance: Dict[str, str] = field(default_factory=dict)


@dataclass
class ExecutionEvent:
    """Evidence/provenance event emitted by the runtime."""

    event_type: str
    task_id: Optional[str]
    timestamp: float
    data: Dict[str, object] = field(default_factory=dict)


@dataclass
class ExecutionResult:
    """Simulated execution result."""

    task_id: str
    module_id: str
    execution_mode: str
    success: bool
    quality_score: float
    execution_time: float
    events: List[ExecutionEvent] = field(default_factory=list)
    metadata: Dict[str, object] = field(default_factory=dict)
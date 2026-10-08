from dataclasses import dataclass, field
from enum import Enum
from typing import Any, Dict, Optional


class ExecutionMode(str, Enum):
    SIMULATION = "simulation"
    EMULATION = "emulation"
    PHYSICAL = "physical"


class ExecutionStatus(str, Enum):
    CREATED = "created"
    PLANNED = "planned"
    ROUTED = "routed"
    RUNNING = "running"
    COMPLETED = "completed"
    FAILED = "failed"
    CANCELLED = "cancelled"


@dataclass(frozen=True)
class ExecutionRequest:
    """Execution intent submitted to the Runtime."""

    workload_id: str
    mode: ExecutionMode = ExecutionMode.SIMULATION
    resource_profile: Optional[str] = None
    backend: Optional[str] = None
    parameters: Dict[str, Any] = field(default_factory=dict)


@dataclass(frozen=True)
class ExecutionPlan:
    """Provider-neutral execution plan."""

    plan_id: str
    workload_id: str
    steps: list
    metadata: Dict[str, Any] = field(default_factory=dict)


@dataclass
class ExecutionContext:
    """Runtime state associated with one execution."""

    execution_id: str
    workload_id: str
    status: ExecutionStatus = ExecutionStatus.CREATED
    metadata: Dict[str, Any] = field(default_factory=dict)

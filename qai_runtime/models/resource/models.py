from dataclasses import dataclass, field
from typing import Dict, List, Optional


@dataclass(frozen=True)
class ResourceRequirement:
    """Logical resource requirements for a workload."""

    resource_type: str
    quantity: Optional[int] = None
    capabilities: List[str] = field(default_factory=list)
    constraints: Dict[str, str] = field(default_factory=dict)


@dataclass(frozen=True)
class ResourceProfile:
    """Provider-neutral description of a resource capability profile."""

    profile_id: str
    resource_type: str
    capabilities: List[str] = field(default_factory=list)
    capacity: Dict[str, float] = field(default_factory=dict)
    topology: Dict[str, str] = field(default_factory=dict)
    metadata: Dict[str, str] = field(default_factory=dict)

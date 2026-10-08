from dataclasses import dataclass, field
from typing import Dict, Optional


@dataclass(frozen=True)
class BackendDescriptor:
    """Provider-neutral description of an execution backend."""

    backend_id: str
    name: str
    backend_type: str
    capabilities: list = field(default_factory=list)
    metadata: Dict[str, str] = field(default_factory=dict)


@dataclass(frozen=True)
class Route:
    """Runtime routing decision."""

    route_id: str
    backend_id: str
    resource_profile: Optional[str] = None
    rationale: Optional[str] = None
    metadata: Dict[str, str] = field(default_factory=dict)

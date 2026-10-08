from dataclasses import dataclass, field
from typing import Dict, List


@dataclass(frozen=True)
class DomainDescriptor:
    """Logical workload-domain descriptor."""

    domain_id: str
    name: str
    description: str = ""
    capabilities: List[str] = field(default_factory=list)
    metadata: Dict[str, str] = field(default_factory=dict)

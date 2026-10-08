from dataclasses import dataclass, field
from typing import Any, Dict, Optional


@dataclass(frozen=True)
class Workload:
    """Logical workload submitted to the QAI Runtime."""

    workload_id: str
    name: str
    domain: str
    payload: Any = None
    metadata: Dict[str, Any] = field(default_factory=dict)
    priority: int = 0
    description: Optional[str] = None

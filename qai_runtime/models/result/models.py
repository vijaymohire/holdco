from dataclasses import dataclass, field
from typing import Any, Dict, Optional


@dataclass
class ExecutionResult:
    """Normalized result returned by the Runtime."""

    execution_id: str
    status: str
    value: Any = None
    metrics: Dict[str, Any] = field(default_factory=dict)
    backend: Optional[str] = None
    metadata: Dict[str, Any] = field(default_factory=dict)

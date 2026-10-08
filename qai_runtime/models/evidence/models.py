from dataclasses import dataclass, field
from datetime import datetime, timezone
from typing import Any, Dict


@dataclass
class EvidenceRecord:
    """Evidence generated during Runtime execution."""

    execution_id: str
    event_type: str
    timestamp: datetime = field(
        default_factory=lambda: datetime.now(timezone.utc)
    )
    data: Dict[str, Any] = field(default_factory=dict)

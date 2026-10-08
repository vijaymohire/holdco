from typing import Protocol
from qai_runtime.models.workload.models import Workload


class WorkloadContract(Protocol):
    def validate(self, workload: Workload) -> bool:
        """Validate a logical workload."""
        ...

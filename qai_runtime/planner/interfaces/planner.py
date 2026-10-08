from typing import Protocol

from qai_runtime.models.execution.models import (
    ExecutionPlan,
    ExecutionRequest,
)


class PlannerInterface(Protocol):
    """Runtime boundary for General Factory planning implementations."""

    def create_plan(
        self,
        request: ExecutionRequest,
    ) -> ExecutionPlan:
        ...

from typing import Protocol

from qai_runtime.models.execution.models import ExecutionPlan


class OptimiserInterface(Protocol):
    """Runtime boundary for execution-plan optimisation."""

    def optimise(
        self,
        plan: ExecutionPlan,
    ) -> ExecutionPlan:
        ...

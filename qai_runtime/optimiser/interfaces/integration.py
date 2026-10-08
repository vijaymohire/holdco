"""Optimiser integration protocol."""

from typing import Protocol, Optional

from qai_runtime.models.execution.models import ExecutionContext, ExecutionPlan


class OptimiserIntegration(Protocol):
    def optimise(
        self,
        plan: ExecutionPlan,
        context: Optional[ExecutionContext] = None,
    ) -> ExecutionPlan:
        ...

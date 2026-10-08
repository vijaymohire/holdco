"""Planner integration protocol."""

from typing import Protocol, Optional

from qai_runtime.models.execution.models import ExecutionContext, ExecutionPlan, ExecutionRequest


class PlannerIntegration(Protocol):
    def plan(
        self,
        request: ExecutionRequest,
        context: Optional[ExecutionContext] = None,
    ) -> ExecutionPlan:
        ...

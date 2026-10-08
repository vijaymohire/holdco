"""Gateway integration protocol."""

from typing import Any, Protocol, Optional

from qai_runtime.models.execution.models import ExecutionContext, ExecutionPlan
from qai_runtime.models.result.models import ExecutionResult


class GatewayIntegration(Protocol):
    def execute(
        self,
        route: Any,
        plan: ExecutionPlan,
        context: Optional[ExecutionContext] = None,
    ) -> ExecutionResult:
        ...

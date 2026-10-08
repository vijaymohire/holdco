"""Router integration protocol."""

from typing import Any, Protocol, Optional

from qai_runtime.models.execution.models import ExecutionContext, ExecutionPlan


class RouterIntegration(Protocol):
    def route(
        self,
        plan: ExecutionPlan,
        resource: Any,
        context: Optional[ExecutionContext] = None,
    ) -> Any:
        ...

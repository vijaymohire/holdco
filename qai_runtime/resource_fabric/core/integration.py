"""Resource Fabric integration protocol."""

from typing import Any, Protocol, Optional

from qai_runtime.models.execution.models import ExecutionContext, ExecutionPlan


class ResourceFabricIntegration(Protocol):
    def allocate(
        self,
        plan: ExecutionPlan,
        context: Optional[ExecutionContext] = None,
    ) -> Any:
        ...

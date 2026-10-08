"""QAI Runtime Phase 2B service composition."""

from dataclasses import dataclass
from typing import Any, Optional

from qai_runtime.models.execution.models import (
    ExecutionContext,
    ExecutionPlan,
    ExecutionRequest,
)
from qai_runtime.models.evidence.models import EvidenceRecord
from qai_runtime.models.result.models import ExecutionResult


@dataclass
class RuntimeServiceBundle:
    """Container for integrated runtime services."""

    hub: Any
    planner: Any
    optimiser: Any
    resource_fabric: Any
    router: Any
    gateway: Any


class RuntimeIntegrationError(RuntimeError):
    """Raised when an integrated service is unavailable."""


class RuntimeServices:
    """Coordinate Phase 2B runtime services."""

    def __init__(self, bundle: RuntimeServiceBundle):
        self.bundle = bundle

    def create_plan(
        self,
        request: ExecutionRequest,
        context: Optional[ExecutionContext] = None,
    ) -> ExecutionPlan:
        if self.bundle.planner is None:
            raise RuntimeIntegrationError(
                "Planner service is not configured."
            )

        return self.bundle.planner.plan(request, context)

    def optimise_plan(
        self,
        plan: ExecutionPlan,
        context: Optional[ExecutionContext] = None,
    ) -> ExecutionPlan:
        if self.bundle.optimiser is None:
            raise RuntimeIntegrationError(
                "Optimiser service is not configured."
            )

        return self.bundle.optimiser.optimise(plan, context)

    def allocate_resource(
        self,
        plan: ExecutionPlan,
        context: Optional[ExecutionContext] = None,
    ) -> Any:
        if self.bundle.resource_fabric is None:
            raise RuntimeIntegrationError(
                "Resource Fabric service is not configured."
            )

        return self.bundle.resource_fabric.allocate(plan, context)

    def route(
        self,
        plan: ExecutionPlan,
        resource: Any,
        context: Optional[ExecutionContext] = None,
    ) -> Any:
        if self.bundle.router is None:
            raise RuntimeIntegrationError(
                "Router service is not configured."
            )

        return self.bundle.router.route(
            plan,
            resource,
            context,
        )

    def execute(
        self,
        route: Any,
        plan: ExecutionPlan,
        context: Optional[ExecutionContext] = None,
    ) -> ExecutionResult:
        if self.bundle.gateway is None:
            raise RuntimeIntegrationError(
                "Gateway service is not configured."
            )

        return self.bundle.gateway.execute(
            route,
            plan,
            context,
        )

    def create_evidence(
        self,
        result: ExecutionResult,
        context: Optional[ExecutionContext] = None,
    ) -> EvidenceRecord:
        """Create evidence using the Phase 2A EvidenceRecord contract."""

        execution_id = result.execution_id

        if context is not None:
            execution_id = context.execution_id

        return EvidenceRecord(
            execution_id=execution_id,
            event_type="runtime_execution",
            data={
                "status": result.status,
                "value": result.value,
                "metrics": result.metrics,
                "backend": result.backend,
                "metadata": result.metadata,
            },
        )

"""QAI Runtime Phase 2B execution orchestration."""

from dataclasses import dataclass
from typing import Any, Optional

from qai_runtime.integration.services.runtime_services import RuntimeServiceBundle, RuntimeServices
from qai_runtime.models.execution.models import ExecutionContext, ExecutionRequest
from qai_runtime.models.result.models import ExecutionResult


@dataclass
class ExecutionOutcome:
    """Complete Phase 2B execution outcome."""

    request: ExecutionRequest
    plan: Any
    resource: Any
    route: Any
    result: ExecutionResult
    evidence: Any


class ExecutionOrchestrator:
    """Execute a workload through the integrated runtime flow."""

    def __init__(self, bundle: RuntimeServiceBundle):
        self.services = RuntimeServices(bundle)

    def run(self, request: ExecutionRequest, context: Optional[ExecutionContext] = None) -> ExecutionOutcome:
        plan = self.services.create_plan(request, context)
        plan = self.services.optimise_plan(plan, context)
        resource = self.services.allocate_resource(plan, context)
        route = self.services.route(plan, resource, context)
        result = self.services.execute(route, plan, context)
        evidence = self.services.create_evidence(result, context)

        return ExecutionOutcome(
            request=request,
            plan=plan,
            resource=resource,
            route=route,
            result=result,
            evidence=evidence,
        )

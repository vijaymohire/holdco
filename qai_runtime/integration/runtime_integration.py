"""QAI Runtime Phase 2B execution facade."""

from typing import Optional

from qai_runtime.integration.orchestration.execution_orchestrator import ExecutionOrchestrator, ExecutionOutcome
from qai_runtime.integration.services.runtime_services import RuntimeServiceBundle
from qai_runtime.models.execution.models import ExecutionContext, ExecutionRequest


class QAIExecutionEngine:
    """Contract-oriented QAI Runtime execution engine."""

    def __init__(self, services: RuntimeServiceBundle):
        self.orchestrator = ExecutionOrchestrator(services)

    def submit(self, request: ExecutionRequest, context: Optional[ExecutionContext] = None) -> ExecutionOutcome:
        return self.orchestrator.run(request, context)

"""Controlled Phase 2B mock execution boundary."""

from qai_runtime.models.result.models import ExecutionResult


class MockExecutionBoundary:
    """Non-provider execution boundary for integration validation."""

    def execute(self, route, plan, context=None):
        execution_id = getattr(plan, "execution_id", "execution-unknown")
        backend_id = getattr(route, "backend_id", "mock-backend")

        return ExecutionResult(
            result_id=f"result-{execution_id}",
            execution_id=execution_id,
            status="completed",
            data={
                "execution_mode": "mock",
                "backend": backend_id,
                "phase": "2B",
            },
            metadata={
                "provider_execution": False,
                "purpose": "contract_integration_validation",
            },
        )

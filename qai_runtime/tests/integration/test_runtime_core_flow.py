"""Phase 2B QAI Runtime core integration tests."""

from dataclasses import dataclass

from qai_runtime.integration.runtime_integration import QAIExecutionEngine
from qai_runtime.integration.services.runtime_services import RuntimeServiceBundle
from qai_runtime.models.execution.models import ExecutionContext, ExecutionRequest
from qai_runtime.models.result.models import ExecutionResult


@dataclass
class IntegrationPlan:
    plan_id: str
    workload_id: str
    steps: list
    metadata: dict


class TestPlanner:
    def plan(self, request, context=None):
        execution_id = (
            context.execution_id
            if context is not None
            else "execution-unknown"
        )

        return IntegrationPlan(
            plan_id=f"plan-{execution_id}",
            workload_id=request.workload_id,
            steps=["test-execution"],
            metadata={
                "execution_id": execution_id,
            },
        )


class TestOptimiser:
    def optimise(self, plan, context=None):
        return plan


class TestResourceFabric:
    def allocate(self, plan, context=None):
        return {
            "resource_id": "resource-test-001",
            "resource_type": "classical-test",
        }


class TestRouter:
    def route(self, plan, resource, context=None):
        return type(
            "TestRoute",
            (),
            {
                "backend_id": "backend-test-001",
                "resource": resource,
            },
        )()


class TestGateway:
    def execute(self, route, plan, context=None):
        execution_id = (
            context.execution_id
            if context is not None
            else "execution-unknown"
        )

        return ExecutionResult(
            execution_id=execution_id,
            status="completed",
            value={
                "execution": "phase-2b-test",
                "workload_id": plan.workload_id,
            },
            metrics={
                "test_steps": len(plan.steps),
            },
            backend=route.backend_id,
            metadata={
                "integration_test": True,
            },
        )


def build_test_engine():
    bundle = RuntimeServiceBundle(
        hub=None,
        planner=TestPlanner(),
        optimiser=TestOptimiser(),
        resource_fabric=TestResourceFabric(),
        router=TestRouter(),
        gateway=TestGateway(),
    )

    return QAIExecutionEngine(bundle)


def test_runtime_core_end_to_end_flow():
    engine = build_test_engine()

    request = ExecutionRequest(
        workload_id="workload-001",
    )

    context = ExecutionContext(
        execution_id="execution-001",
        workload_id="workload-001",
    )

    outcome = engine.submit(
        request=request,
        context=context,
    )

    assert outcome.request.workload_id == "workload-001"
    assert outcome.plan.plan_id == "plan-execution-001"
    assert outcome.plan.workload_id == "workload-001"
    assert outcome.resource["resource_id"] == "resource-test-001"
    assert outcome.route.backend_id == "backend-test-001"

    assert outcome.result.execution_id == "execution-001"
    assert outcome.result.status == "completed"
    assert outcome.result.backend == "backend-test-001"
    assert outcome.result.value["workload_id"] == "workload-001"
    assert outcome.result.metrics["test_steps"] == 1

    assert outcome.evidence.execution_id == "execution-001"
    assert outcome.evidence.event_type == "runtime_execution"


def test_runtime_result_and_evidence_are_connected():
    engine = build_test_engine()

    request = ExecutionRequest(
        workload_id="workload-002",
    )

    context = ExecutionContext(
        execution_id="execution-002",
        workload_id="workload-002",
    )

    outcome = engine.submit(
        request=request,
        context=context,
    )

    assert outcome.result.execution_id == "execution-002"
    assert outcome.result.backend == "backend-test-001"
    assert outcome.result.metadata["integration_test"] is True

    assert outcome.evidence.execution_id == "execution-002"
    assert outcome.evidence.event_type == "runtime_execution"
    assert outcome.evidence.data["status"] == "completed"
    assert outcome.evidence.data["backend"] == "backend-test-001"
    assert outcome.evidence.data["metrics"]["test_steps"] == 1

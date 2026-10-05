"""Dependency-free simulated runtime for the Modular Quantum Planner."""

import time

from .models import ExecutionEvent, ExecutionPlan, ExecutionResult


class SimulatedQuantumRuntime:
    """Execute planner assignments in a deterministic mock runtime."""

    def __init__(self):
        self.events = []

    def execute(self, plan: ExecutionPlan):
        results = []

        for assignment in plan.assignments:
            start = time.perf_counter()

            self.events.append(
                ExecutionEvent(
                    event_type='task_started',
                    task_id=assignment.task_id,
                    timestamp=time.time(),
                    data={
                        'module_id': assignment.module_id,
                        'execution_mode': assignment.execution_mode,
                    },
                )
            )

            quality_score = 1.0
            elapsed = time.perf_counter() - start

            completion_event = ExecutionEvent(
                event_type='task_completed',
                task_id=assignment.task_id,
                timestamp=time.time(),
                data={
                    'simulated': True,
                    'quality_score': quality_score,
                },
            )

            result = ExecutionResult(
                task_id=assignment.task_id,
                module_id=assignment.module_id,
                execution_mode=assignment.execution_mode,
                success=True,
                quality_score=quality_score,
                execution_time=elapsed,
                events=[completion_event],
                metadata={
                    'simulated': True,
                    'physical_measurement': False,
                    'resource_estimate': {
                        'qubits': assignment.resource_estimate.qubits,
                        'depth': assignment.resource_estimate.depth,
                        'gates': assignment.resource_estimate.gates,
                        'shots': assignment.resource_estimate.shots,
                    },
                },
            )

            results.append(result)
            self.events.extend(result.events)

        return results
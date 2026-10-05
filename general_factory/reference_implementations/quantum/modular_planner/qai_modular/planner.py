"""Basic capability-aware Modular Quantum Planner."""

from dataclasses import dataclass
from typing import Dict, Iterable

from .models import (
    ExecutionPlan,
    ModuleProfile,
    QuantumTask,
    ResourceEstimate,
    TaskAssignment,
)


class PlanningError(Exception):
    """Base planner exception."""


class UnsupportedExecutionError(PlanningError):
    """Raised when a requested execution capability is unavailable."""


@dataclass
class PlannerConfig:
    default_execution_time_per_depth: float = 0.001
    default_communication_bytes_per_task: int = 1024


class ModularQuantumPlanner:
    """Simple task-to-module planner baseline."""

    def __init__(self, modules: Iterable[ModuleProfile], config=None):
        self.modules: Dict[str, ModuleProfile] = {
            module.module_id: module
            for module in modules
        }
        self.config = config or PlannerConfig()

    def _supports_task(self, module: ModuleProfile, task: QuantumTask) -> bool:
        if task.required_qubits > module.qubit_capacity:
            return False

        if not all(
            operation in module.supported_operations
            for operation in task.required_operations
        ):
            return False

        if task.execution_mode not in module.execution_modes:
            return False

        if (
            task.requires_cross_qpu_entanglement
            and not module.supports_cross_qpu_entanglement
        ):
            return False

        return True

    def _estimate_resources(self, task: QuantumTask) -> ResourceEstimate:
        execution_time = (
            task.estimated_depth
            * self.config.default_execution_time_per_depth
        )

        return ResourceEstimate(
            qubits=task.required_qubits,
            depth=task.estimated_depth,
            gates=task.estimated_gates,
            shots=task.estimated_shots,
            estimated_execution_time=execution_time,
            estimated_communication_bytes=(
                self.config.default_communication_bytes_per_task
            ),
        )

    def plan(self, tasks: Iterable[QuantumTask], plan_id='plan-001') -> ExecutionPlan:
        plan = ExecutionPlan(plan_id=plan_id)

        for task in tasks:
            selected_module = None

            for module in self.modules.values():
                if self._supports_task(module, task):
                    selected_module = module
                    break

            if selected_module is None:
                plan.rejected_tasks.append(task.task_id)

                if task.requires_cross_qpu_entanglement:
                    plan.warnings.append(
                        f"{task.task_id}: cross-QPU entanglement capability is not advertised by any registered module."
                    )
                else:
                    plan.warnings.append(
                        f"{task.task_id}: no registered module satisfies"
                        # Planner validates the task requirements.
                    )

                continue

            assignment = TaskAssignment(
                task_id=task.task_id,
                module_id=selected_module.module_id,
                execution_mode=task.execution_mode,
                resource_estimate=self._estimate_resources(task),
            )

            plan.assignments.append(assignment)

        return plan


def build_demo_planner() -> ModularQuantumPlanner:
    modules = [
        ModuleProfile(
            module_id='qmodule-01',
            name='Simulated Quantum Module 01',
            qubit_capacity=50,
            supported_operations=['single_qubit', 'two_qubit', 'measurement'],
            execution_modes=['simulated'],
            supports_cross_qpu_entanglement=False,
        ),
        ModuleProfile(
            module_id='qmodule-02',
            name='Simulated Quantum Module 02',
            qubit_capacity=50,
            supported_operations=['single_qubit', 'two_qubit', 'measurement'],
            execution_modes=['simulated'],
            supports_cross_qpu_entanglement=False,
        ),
    ]

    return ModularQuantumPlanner(modules)
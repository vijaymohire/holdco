"""Demonstration of the dependency-free Modular Quantum Planner."""

from .models import QuantumTask
from .planner import build_demo_planner
from .runtime import SimulatedQuantumRuntime


def main():
    planner = build_demo_planner()

    tasks = [
        QuantumTask(
            task_id='task-001',
            name='Independent Optimization Task A',
            required_qubits=12,
            required_operations=['single_qubit', 'two_qubit', 'measurement'],
            execution_mode='simulated',
            estimated_depth=10,
            estimated_gates=80,
            estimated_shots=1000,
        ),
        QuantumTask(
            task_id='task-002',
            name='Independent Optimization Task B',
            required_qubits=20,
            required_operations=['single_qubit', 'two_qubit', 'measurement'],
            execution_mode='simulated',
            estimated_depth=15,
            estimated_gates=120,
            estimated_shots=1000,
        ),
        QuantumTask(
            task_id='task-003',
            name='Unsupported Cross-QPU Entanglement Task',
            required_qubits=10,
            required_operations=['single_qubit', 'two_qubit', 'measurement'],
            execution_mode='simulated',
            requires_cross_qpu_entanglement=True,
        ),
    ]

    plan = planner.plan(tasks, plan_id='demo-plan-001')

    print('=== Modular Quantum Planner Demo ===')
    print()
    print('Assignments:')

    for assignment in plan.assignments:
        print(
            f'  {assignment.task_id} -> '
            f'{assignment.module_id} '
            f'({assignment.execution_mode})'
        )

    print()
    print('Rejected tasks:')

    for task_id in plan.rejected_tasks:
        print(f'  {task_id}')

    print()
    print('Warnings:')

    for warning in plan.warnings:
        print(f'  {warning}')

    runtime = SimulatedQuantumRuntime()
    results = runtime.execute(plan)

    print()
    print('Simulated Results:')

    for result in results:
        print(
            f'  {result.task_id}: '
            f'success={result.success}, '
            f'quality={result.quality_score}, '
            f'simulated={result.metadata[
                'simulated'
            ]}'
        )


if __name__ == '__main__':
    main()
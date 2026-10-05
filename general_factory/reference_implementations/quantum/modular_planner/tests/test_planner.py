"""Tests for the General Factory Modular Quantum Planner."""

import unittest

from qai_modular.models import ModuleProfile, QuantumTask
from qai_modular.planner import ModularQuantumPlanner
from qai_modular.runtime import SimulatedQuantumRuntime


class ModularQuantumPlannerTests(unittest.TestCase):

    def setUp(self):
        self.modules = [
            ModuleProfile(
                module_id='module-a',
                name='Module A',
                qubit_capacity=50,
                supported_operations=['single_qubit', 'two_qubit', 'measurement'],
                execution_modes=['simulated'],
                supports_cross_qpu_entanglement=False,
            ),
            ModuleProfile(
                module_id='module-b',
                name='Module B',
                qubit_capacity=50,
                supported_operations=['single_qubit', 'two_qubit', 'measurement'],
                execution_modes=['simulated'],
                supports_cross_qpu_entanglement=False,
            ),
        ]

        self.planner = ModularQuantumPlanner(self.modules)

    def test_independent_task_is_planned(self):
        task = QuantumTask(
            task_id='task-001',
            name='Independent Task',
            required_qubits=10,
            required_operations=['single_qubit', 'two_qubit', 'measurement'],
            execution_mode='simulated',
        )

        plan = self.planner.plan([task])

        self.assertEqual(plan.rejected_tasks, [])
        self.assertEqual(len(plan.assignments), 1)
        self.assertEqual(plan.assignments[0].module_id, 'module-a')

    def test_unsupported_cross_qpu_entanglement_is_rejected(self):
        task = QuantumTask(
            task_id='entanglement-task',
            name='Cross QPU Entanglement',
            required_qubits=10,
            required_operations=['single_qubit', 'two_qubit', 'measurement'],
            execution_mode='simulated',
            requires_cross_qpu_entanglement=True,
        )

        plan = self.planner.plan([task])

        self.assertEqual(plan.rejected_tasks, ['entanglement-task'])
        self.assertEqual(len(plan.assignments), 0)

    def test_task_exceeding_qubit_capacity_is_rejected(self):
        task = QuantumTask(
            task_id='large-task',
            name='Oversized Task',
            required_qubits=100,
            execution_mode='simulated',
        )

        plan = self.planner.plan([task])

        self.assertEqual(plan.rejected_tasks, ['large-task'])

    def test_simulated_runtime_produces_evidence(self):
        task = QuantumTask(
            task_id='runtime-task',
            name='Runtime Test',
            required_qubits=8,
            execution_mode='simulated',
        )

        plan = self.planner.plan([task])

        runtime = SimulatedQuantumRuntime()
        results = runtime.execute(plan)

        self.assertEqual(len(results), 1)
        self.assertTrue(results[0].success)
        self.assertTrue(results[0].metadata['simulated'])
        self.assertFalse(results[0].metadata['physical_measurement'])


if __name__ == '__main__':
    unittest.main()
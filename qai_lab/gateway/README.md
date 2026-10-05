# QAI Gateway

## Purpose

The QAI Gateway is the classical integration and coordination
boundary between QAI workloads and execution resources.

## Responsibilities

- receive workload/execution requests
- validate execution metadata
- evaluate resource requirements
- route workloads to appropriate execution paths
- coordinate HPC/Slurm execution
- coordinate quantum runtime execution
- maintain execution state
- correlate job/task identifiers
- support simple scheduling and resource balancing
- capture execution evidence

## Execution Paths

QAI Gateway may route work toward:

- HPC CPU
- HPC GPU
- quantum simulation
- quantum backend
- hybrid execution

## Boundary

The Gateway is a classical coordination layer.

It is not:

- a QPU
- a quantum controller
- a replacement for Slurm
- a replacement for the Modular Planner
- a nanosecond-level quantum control system

## Initial Principle

Keep the first implementation simple and reliable.

Advanced multi-client quantum/classical interleaving is a later
capability and should be introduced only when actual shared-hardware
demand justifies it.

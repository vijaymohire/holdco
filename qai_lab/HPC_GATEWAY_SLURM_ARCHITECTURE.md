# QAI HPC Gateway & Slurm Integration Architecture

## Reference Flow

QAI LabaaS
    ↓
QPI / Application
    ↓
QAI Framework / Modular Planner
    ↓
QAI Gateway
    ├──→ HPC / Slurm
    │      ├── CPU
    │      ├── GPU
    │      ├── Simulation
    │      └── Optimisation
    │
    └──→ Quantum Runtime
           ├── Scheduler
           ├── Balancer
           ├── Mixer
           ├── Phase Control
           ├── Time-Bin Control
           ├── Qubit Allocation
           ├── Mapping
           ├── Transpilation
           └── Backend Adapter
                    ↓
                  QPU

## Separation of Concerns

QAI Framework
    What workload and resources are required?

Gateway
    Where should the workload be routed?

Slurm
    How should conventional HPC resources be scheduled?

Quantum Runtime
    How should quantum execution be coordinated?

Quantum Controller / Clock
    How should time-sensitive hardware operations occur?

QPU
    Where does physical quantum execution occur?

## Initial Milestone

Simple and reliable:

- workload scheduler
- resource balancer
- workload mixer
- phase controller
- time-bin gate
- dynamic qubit allocation
- evidence recorder

Advanced multi-client quantum/classical interleaving is deferred.

## Evidence

Every hybrid execution should distinguish:

- planned resources
- allocated resources
- observed resources
- predicted timing
- observed timing
- logical/physical mapping
- backend information
- calibration context
- results
- retries/recovery

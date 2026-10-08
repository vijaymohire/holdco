# QAI Runtime

QAI Runtime is the native, product-neutral execution platform for the HoldCo QAI ecosystem.

It provides the execution layer between logical QAI workloads and heterogeneous physical or virtual resources.

## Architectural Position

QAI Application
      |
QAI Workflow
      |
QAI Runtime
      |
QAI Resource Fabric
      |
CPU / GPU / FPGA / HPC / QPU / Storage / Communication

## Core Components

- QAI OS
- QAI Hub
- QAI Router
- QAI Planner
- QAI Optimiser
- QAI Gateway
- QAI Resource Fabric
- QAI Memory
- QAI Result Assembly
- QAI Evidence
- QAI Workflow
- QAI Storage

## Design Principles

1. Provider-neutral
2. Product-neutral
3. Portable across deployment targets
4. Contract-driven
5. Evidence-led
6. Adapter-based integration
7. Separation of workload, execution and infrastructure
8. Explicit client IP and data boundaries

## Phase 1B Boundary

Phase 1B establishes the development foundation only.

Runtime implementation is intentionally deferred until the foundation is verified and committed.

## Future Dependency Boundary

FAEP
  |
QAI LabaaS
  |
Client / Project Workspace
  |
Deployment Operator
  |
QAI DevOps
  |
QAI Runtime
  |
Resource Fabric
  |
Physical / Virtual Resources

The above is an architectural dependency direction, not a source-code coupling requirement.

Provider-specific runtimes remain adapters and are not the QAI Runtime core.

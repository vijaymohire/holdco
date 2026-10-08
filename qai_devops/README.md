# QAI DevOps

QAI DevOps defines portable environment and deployment intent for QAI workloads.

## Five-Part Model

WHAT  = Environment Definition
WHY   = Environment Type
WHERE = Deployment Target
HOW   = Deployment Adapter
WHAT RUNS = QAI Runtime

## Scope

- environment definitions
- environment types
- deployment manifests
- resource profiles
- deployment adapters
- validation
- promotion
- rollback
- infrastructure-as-code boundaries
- evidence

## Future Deployment Operator

The future Deployment Operator is expected to consume QAI DevOps definitions and orchestrate environment realization and deployment lifecycle.

Phase 1B does not implement the Deployment Operator.

## Guardrail

Environment definitions describe requirements and capabilities rather than hard-coding one cloud, scheduler, data centre or hardware vendor.

# QAI Runtime Integration

Phase 2B integrates the Phase 2A QAI Runtime components through
contracts and interfaces.

## Core flow

Workload -> Runtime -> Hub -> Planner -> Optimiser -> Resource Fabric -> Router -> Gateway

The execution flow produces Result and Evidence.

## Design principles

- Contract-first integration
- Provider-neutral runtime
- Separation of concerns
- No provider-specific execution in Phase 2B
- No duplication of General Factory planning logic
- Controlled execution boundary for integration testing

Provider adapters are deferred to later phases.

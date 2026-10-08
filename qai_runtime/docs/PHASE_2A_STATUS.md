# Phase 2A — QAI Runtime Core Contracts

Phase 2A establishes the initial implementation vocabulary for the
native QAI Runtime.

## Core model groups

- Workload
- Execution
- Resource
- Routing
- Result
- Evidence
- Lifecycle

## Runtime domains

Domains identify the logical workload/problem area and remain separate
from resources, backends and deployment infrastructure.

## Boundaries

General Factory implementations are consumed through interfaces.

Provider-specific runtimes remain adapters.

The Runtime core remains provider-neutral.

## Current status

This phase establishes contract-level implementation foundations.
It does not yet provide production execution.

Next expected increments:

1. Runtime lifecycle
2. Hub registry/discovery
3. Resource Fabric discovery/allocation
4. Router policy
5. Planner integration
6. Optimiser integration
7. Gateway execution boundary
8. Evidence and result assembly

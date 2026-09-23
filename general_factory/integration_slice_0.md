# Integration Slice 0

## Objective

Prove that the General Framework and General Factory can reference and invoke existing implementation assets without copying their architecture or source code.

Integration Slice 0 is the first controlled integration proof between the General Framework and General Factory.

It is intentionally narrow.

The purpose is not to build the complete Factory. The purpose is to demonstrate that the Framework can define a capability and contract, while the Factory can resolve and invoke an existing implementation through controlled bindings, connectors and adapters.

~~~

## 1. Architectural Principle

Integration Slice 0 validates the following principle:

> Existing implementation assets remain where they are. The General Factory integrates with them rather than absorbing or duplicating them.

The integration therefore follows:

```text
General Framework
       ↓
Framework Contract
       ↓
Factory Binding
       ↓
Connector
       ↓
Adapter
       ↓
Existing Implementation
       ↓
Result
       ↓
Evidence
```

The existing implementation remains the system of record for its own source code and implementation architecture.

~~~

## 2. Integration Boundary

The slice establishes the following boundary:

```text
                    GENERAL ENGINEERING PLATFORM

┌──────────────────────────────────────────────────────┐
│ General Framework                                    │
│                                                      │
│ Capability                                           │
│ Contract                                              │
│ Logical Requirements                                 │
└──────────────────────┬───────────────────────────────┘
                       │
                       ▼
┌──────────────────────────────────────────────────────┐
│ General Factory                                      │
│                                                      │
│ Binding → Connector → Adapter                        │
└──────────────────────┬───────────────────────────────┘
                       │
                       ▼
              Existing Implementation
                       │
                       ▼
                    Result
                       │
                       ▼
                   Evidence
```

~~~

## 3. Candidate Integrations

Integration Slice 0 contains two candidate implementation paths.

### Candidate 1 — Microsoft Fabric Dataflows Gen2

Capability:

`FABRIC_DATAFLOW_EXECUTION`

Expected path:

```text
Framework Contract
      ↓
Factory Binding
      ↓
Connector
      ↓
Adapter
      ↓
Fabric Implementation
      ↓
Result
      ↓
Evidence
```

The existing Microsoft Fabric implementation remains external to the General Factory architecture.

The General Factory provides the integration boundary required to invoke it.

~~~

### Candidate 2 — QAI Lab / GitLab Runner / GitHub Notebook

Capability:

`QAI_EXPERIMENT_EXECUTION`

Expected path:

```text
Framework Contract
      ↓
Factory Binding
      ↓
GitLab Connector
      ↓
Runner
      ↓
Notebook
      ↓
Experiment Result
      ↓
Evidence
```

The notebook, runner and associated project remain existing implementation assets.

The General Factory references and invokes them through the integration boundary rather than copying their implementation.

~~~

## 4. Candidate 1 Integration Model

The Microsoft Fabric path demonstrates integration with an external technology platform.

```text
FABRIC_DATAFLOW_EXECUTION
        ↓
Framework Interface / Contract
        ↓
Factory Runtime Binding
        ↓
Microsoft Fabric Connector
        ↓
Fabric Adapter
        ↓
Dataflow Gen2
        ↓
Execution Result
        ↓
Evidence
```

The integration should preserve the distinction between:

- Framework capability
- Factory binding
- Connector
- Adapter
- Microsoft Fabric implementation

Microsoft Fabric is therefore treated as a **reference implementation**, not as the definition of the Framework capability.

~~~

## 5. Candidate 2 Integration Model

The QAI Lab path demonstrates integration with an existing engineering and experimentation workflow.

```text
QAI_EXPERIMENT_EXECUTION
        ↓
Framework Interface / Contract
        ↓
Factory Runtime Binding
        ↓
GitLab Connector
        ↓
Runner
        ↓
GitHub Notebook
        ↓
Experiment Execution
        ↓
Experiment Result
        ↓
Evidence
```

The existing notebook and runner remain independently managed implementation assets.

~~~

## 6. What Integration Slice 0 Must Demonstrate

The slice should demonstrate at least the following:

1. A Framework capability can be identified.
2. A corresponding Framework contract can be identified.
3. The Factory can resolve an implementation binding.
4. The Factory can identify the appropriate connector.
5. An adapter can be used where interface translation is required.
6. The existing implementation can be invoked.
7. A result can be returned.
8. Evidence can be captured.
9. The original implementation remains unchanged.
10. The Factory does not require source-code duplication.

~~~

## 7. Existing Implementation Principle

The existing implementation is treated as an external implementation asset.

```text
Existing Repository
       │
       ├── Source
       ├── Configuration
       ├── Runtime
       ├── Dependencies
       └── Existing Architecture

       ↑
       │
   Integration Boundary
       │
       ↑

General Factory
```

The Factory should not copy the repository merely to integrate with it.

~~~

## 8. No Architecture Duplication

Integration Slice 0 must not reproduce the internal architecture of the candidate implementation inside the General Factory.

For example:

```text
Existing Implementation
        │
        └── Internal Architecture
```

remains under the ownership of that implementation.

The Factory only requires enough information to:

- identify it
- resolve it
- connect to it
- invoke it
- receive its result
- capture evidence

~~~

## 9. No Source-Code Duplication

The integration should reference existing implementation assets through:

- Repository identity
- Project identity
- Path
- Commit
- Tag
- Version
- API
- Endpoint
- Runner
- Configuration reference
- Other appropriate implementation identifiers

The source itself should remain in the existing repository unless there is an independently justified reason to copy or package it.

~~~

## 10. Factory Binding

The Factory binding establishes the relationship between the Framework capability and an implementation.

Conceptually:

```text
Framework Capability
        ↓
Implementation Binding
        ↓
Existing Implementation
```

A binding may identify:

- Binding ID
- Framework capability ID
- Framework interface ID
- Factory implementation ID
- Implementation type
- Version
- Provider
- Technology
- Runtime
- Backend
- Resource requirements
- Configuration
- Environment
- Execution mode
- Compatibility
- Provenance

~~~

## 11. Connector Role

The Connector provides controlled access to the existing implementation.

```text
Factory Binding
      ↓
Connector
      ↓
Existing System
```

Candidate connector types include:

```text
Microsoft Fabric
GitHub
GitLab
Local
Cloud
```

The connector should provide access without absorbing the implementation's business or execution logic.

~~~

## 12. Adapter Role

An Adapter is used when the existing implementation does not directly expose the interface required by the Factory contract.

```text
Factory Contract
      ↓
Runtime Interface
      ↓
Adapter
      ↓
Existing Implementation Interface
```

The adapter should perform only the translation required to preserve contract compatibility.

~~~

## 13. Connector Versus Adapter

The slice should preserve the distinction:

```text
Connector
    ↓
How the Factory reaches the implementation

Adapter
    ↓
How incompatible interfaces are translated
```

Both may be present in the same integration.

```text
Factory
   ↓
Connector
   ↓
Adapter
   ↓
Existing Implementation
```

An adapter should not be introduced if direct contract-compatible access is already available.

~~~

## 14. Result Handling

The result returned by the existing implementation should be mapped back to the Framework-defined contract where required.

```text
Existing Implementation
        ↓
Raw Result
        ↓
Adapter / Result Mapping
        ↓
Contract-Compliant Result
        ↓
Factory
```

The Factory should preserve the distinction between the implementation's native result and the Framework-level result.

~~~

## 15. Evidence

The integration must capture sufficient evidence to demonstrate that the invocation actually occurred.

Evidence may include:

- Capability ID
- Contract ID
- Binding ID
- Implementation ID
- Implementation version
- Connector
- Adapter
- Execution ID
- Request
- Result
- Timestamp
- Status
- Repository reference
- Commit / tag
- Runtime information

```text
Execution
    ↓
Result
    ↓
Evidence
    ↓
Provenance
```

~~~

## 16. Provenance

The integration should preserve the relationship:

```text
Framework Capability
        ↓
Framework Contract
        ↓
Factory Binding
        ↓
Existing Implementation
        ↓
Execution
        ↓
Result
        ↓
Evidence
```

This provides traceability from the logical requirement to the actual implementation that produced the result.

~~~

## 17. Candidate 1 Evidence

For Microsoft Fabric Dataflows Gen2, evidence should establish that:

```text
FABRIC_DATAFLOW_EXECUTION
        ↓
Factory Binding
        ↓
Fabric Connector
        ↓
Fabric Dataflow
        ↓
Execution
        ↓
Result
```

The exact evidence fields can evolve as the integration is implemented.

~~~

## 18. Candidate 2 Evidence

For the QAI Lab / GitLab Runner / GitHub Notebook path, evidence should establish that:

```text
QAI_EXPERIMENT_EXECUTION
        ↓
Factory Binding
        ↓
GitLab Connector
        ↓
Runner
        ↓
Notebook
        ↓
Experiment
        ↓
Result
```

The experiment result should remain associated with the implementation and execution identity used to generate it.

~~~

## 19. Framework Contract

Each candidate should have an explicit Framework-level contract.

Conceptually:

```text
Capability
      ↓
Contract
      ├── Inputs
      ├── Outputs
      ├── Preconditions
      ├── Postconditions
      ├── Errors
      ├── Security
      └── Evidence Requirements
```

The contract should describe the required behavior without embedding the implementation architecture.

~~~

## 20. Factory Binding

The Factory binding then connects the contract to an implementation.

```text
Framework Contract
       ↓
Factory Binding
       ↓
Implementation
```

This is the key mechanism being proven by Integration Slice 0.

~~~

## 21. Invocation

The invocation sequence should be observable.

```text
Request
   ↓
Framework Contract
   ↓
Binding Resolution
   ↓
Connector Resolution
   ↓
Adapter Resolution
   ↓
Implementation Invocation
   ↓
Result
```

Not every integration will require an adapter.

Therefore:

```text
Connector
   ↓
Implementation
```

is valid when the interfaces are already compatible.

~~~

## 22. Dry-Run

Where practical, each candidate should support a dry-run before actual execution.

```text
Request
   ↓
Resolve Contract
   ↓
Resolve Binding
   ↓
Resolve Connector
   ↓
Resolve Adapter
   ↓
Validate
   ↓
Dry-Run Result
```

The dry-run should not invoke the actual implementation.

~~~

## 23. Failure Handling

Integration Slice 0 should distinguish failures occurring at different boundaries.

Examples:

```text
Framework Definition Failure
Binding Resolution Failure
Connector Failure
Adapter Failure
Implementation Failure
Result Mapping Failure
Evidence Failure
```

The failure should identify the stage at which the integration stopped.

~~~

## 24. Compatibility

Before invocation, the Factory should establish that:

```text
Framework Contract
        ↕
Runtime Interface
        ↕
Adapter
        ↕
Implementation Interface
```

are compatible.

Compatibility may include:

- Inputs
- Outputs
- Data types
- Versions
- Protocol
- Authentication
- Execution mode
- Required resources

~~~

## 25. Versioning

The integration should record relevant versions.

For example:

```text
Framework Definition Version
        +
Framework Contract Version
        +
Factory Binding Version
        +
Implementation Version
        +
Connector / Adapter Version
```

This supports reproducibility and future compatibility testing.

~~~

## 26. Preservation of Existing Projects

Candidate implementations remain independently maintainable.

The integration must not require:

- Repository migration
- Repository restructuring
- Source-code relocation
- Architecture redesign
- Factory-specific duplication

The integration boundary should be sufficient for the proof.

~~~

## 27. Integration Slice 0 and Factory Registry

The Factory Registry provides the implementation-side resolution mechanism.

Conceptually:

```text
Framework Capability
       ↓
Factory Registry
       ↓
Binding
       ↓
Connector
       ↓
Adapter
       ↓
Implementation
```

Integration Slice 0 therefore provides an early practical validation of the Factory Registry concept.

~~~

## 28. Integration Slice 0 and Framework Runtime

Framework Runtime resolves the logical definitions required by the integration.

```text
Framework Runtime
       ↓
Capability
       ↓
Contract
       ↓
Version
       ↓
Factory Registry
```

The Factory Registry then resolves the concrete implementation path.

~~~

## 29. Integration Slice 0 and Runtime Interfaces

Runtime Interfaces provide the executable realization of the Framework contracts.

```text
Framework Contract
       ↓
Runtime Interface
       ↓
Factory Binding
       ↓
Connector
       ↓
Adapter
       ↓
Implementation
```

This creates a direct relationship between the `framework_runtime/`, `interfaces/`, `registry/`, `connectors/` and `adapters/` implementation layers.

~~~

## 30. Integration Slice 0 and Evidence

The final integration path should therefore be:

```text
Framework Definition
       ↓
Framework Contract
       ↓
Framework Runtime
       ↓
Runtime Interface
       ↓
Factory Binding
       ↓
Connector
       ↓
Adapter
       ↓
Existing Implementation
       ↓
Result
       ↓
Evidence
```

This is the principal architecture proof represented by this integration slice.

~~~

## 31. Candidate Selection

The two candidates intentionally exercise different integration patterns.

### Candidate 1

```text
External Technology Platform
        ↓
Microsoft Fabric
        ↓
Dataflow Execution
```

This demonstrates integration with a managed technology platform.

### Candidate 2

```text
Existing Engineering Repository
        ↓
GitLab Runner
        ↓
GitHub Notebook
        ↓
Experiment
```

This demonstrates integration with an existing engineering workflow and executable project asset.

Together they provide two different implementation forms without requiring the Factory to own either implementation.

~~~

## 32. Success Condition

Integration Slice 0 succeeds when the General Factory can:

1. Identify an existing implementation.
2. Identify the corresponding Framework capability.
3. Resolve the Framework contract.
4. Resolve the Factory binding.
5. Resolve the required connector.
6. Resolve an adapter when required.
7. Invoke the existing implementation.
8. Receive a result.
9. Capture evidence.
10. Trace the result back to the Framework definition and implementation.

The core success condition is:

```text
General Factory can identify an existing implementation,
bind to it through a defined contract,
invoke it,
retrieve a result,
and preserve evidence of the execution.
```

~~~

## 33. Non-Goals

Integration Slice 0 does **not** include:

- Repository migration
- Repository duplication
- Repository consolidation
- Redesign of existing projects
- Replacement of existing implementation architectures
- Full Factory implementation
- Production deployment
- Production-grade scalability
- Physical QAI hardware
- Complete multi-provider integration
- Complete SaaS/PaaS productization

These may become later development activities but are outside this integration slice.

~~~

## 34. Definition of Done

Integration Slice 0 may be considered complete when at least one candidate demonstrates the complete path:

```text
Framework Contract
      ↓
Factory Binding
      ↓
Connector
      ↓
Adapter
      ↓
Existing Implementation
      ↓
Result
      ↓
Evidence
```

and the integration can demonstrate that the existing implementation was used without copying its source or architecture into the General Factory.

Where an adapter is not required, the valid path may be:

```text
Framework Contract
      ↓
Factory Binding
      ↓
Connector
      ↓
Existing Implementation
      ↓
Result
      ↓
Evidence
```

~~~

## 35. Expected Deliverables

The initial integration slice should produce, as applicable:

- Framework capability definition
- Framework contract
- Factory implementation binding
- Connector configuration
- Adapter implementation where required
- Invocation definition
- Test or execution record
- Result
- Evidence record
- Provenance record
- Integration notes

The deliverables should remain small and focused on proving the integration boundary.

~~~

## 36. Follow-On Development

After Integration Slice 0 is proven, the architecture can evolve toward:

```text
Integration Slice 0
       ↓
Registry-Driven Resolution
       ↓
Additional Reference Implementations
       ↓
Reusable Integration Patterns
       ↓
Factory Runtime Integration
       ↓
Deployment Integration
       ↓
Productization
```

The slice should therefore be treated as a controlled architectural proof rather than as the complete implementation roadmap.

~~~

## 37. Guiding Principles

1. Integrate existing implementations rather than copy them.
2. Keep Framework definitions technology-neutral.
3. Keep implementation details inside the Factory boundary.
4. Use explicit contracts between Framework and Factory.
5. Use bindings to connect logical capabilities to implementations.
6. Use connectors for controlled access and invocation.
7. Use adapters only where interface translation is required.
8. Preserve existing repository ownership and architecture.
9. Capture execution results and evidence.
10. Preserve provenance from Framework definition to implementation result.
11. Validate compatibility before invocation.
12. Preserve version information required for reproducibility.
13. Prefer the smallest integration that proves the architectural principle.
14. Do not turn Integration Slice 0 into a full Factory implementation.
15. Expand the integration model only after the basic reference path works.

~~~

## 38. Guiding Statement

**Integration Slice 0 proves that the General Framework and General Factory can provide a common integration boundary around existing implementation assets without absorbing, copying or redesigning those implementations.**

**Define the capability in the Framework, bind it in the Factory, connect and adapt only where necessary, invoke the existing implementation, and capture the resulting evidence.**
~~~
---

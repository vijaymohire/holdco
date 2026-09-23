# Fabric Runtime

Implementation-side Fabric capabilities including:

- Data Plane
- Control Plane
- Viewpoints
- Metadata Hooks
- Governance Hooks
- Authorization / Approval Integration

~~~

## 1. Purpose

The `fabric_runtime/` layer contains the General Factory implementation mechanisms required to realize Fabric capabilities defined by the General Framework.

Fabric Runtime provides the implementation-side coordination between:

- Data Plane
- Control Plane
- Metadata
- Viewpoints
- Governance
- Authorization
- Approval
- Policy
- Evidence
- Runtime execution

```text
                    Fabric Runtime
                          │
          ┌───────────────┼───────────────┐
          │               │               │
      Data Plane      Control Plane    Viewpoints
          │               │               │
          └───────────────┼───────────────┘
                          │
             Metadata / Governance
                          │
              Authorization / Approval
                          │
                    Factory Runtime
```

~~~

## 2. Architectural Position

Fabric Runtime is a cross-cutting Factory implementation capability.

```text
General Framework
      ↓
Fabric Definitions / Contracts
      ↓
General Factory
      ↓
Fabric Runtime
      ↓
Modules / Assets / Workflows / Deployments
```

The Framework defines **WHAT the Fabric is and what its contracts mean**.

Fabric Runtime implements **HOW those Fabric capabilities operate at runtime**.

~~~

## 3. Fabric Runtime Boundary

Fabric Runtime is responsible for implementation-side mechanisms such as:

- Data-plane access
- Control-plane operations
- Viewpoint execution
- Metadata hooks
- Governance hooks
- Policy integration
- Authorization integration
- Approval integration
- Control events
- Runtime state
- Evidence integration

It should not become the semantic owner of every Fabric definition or business-domain rule.

~~~

## 4. Fabric as a Cross-Cutting Capability

Fabric Runtime should not be treated as a conventional application layer.

Fabric capabilities may cross:

```text
Assets
Modules
Packages
Experiments
Workflows
Deployments
Resources
Web Platform
SaaS
PaaS
IaaS
```

Conceptually:

```text
                 Fabric Runtime
                       │
        ───────────────┼───────────────
        │              │              │
      Assets       Workflows      Deployments
        │              │              │
        └──────────────┼──────────────┘
                       │
                    Factory
```

~~~

## 5. Data Plane

The Data Plane represents the runtime path through which operational data, state and payloads move.

Potential data-plane activities include:

- Data access
- Data exchange
- State exchange
- Event exchange
- Workflow data
- Runtime data
- Asset data
- Service data
- Execution results

```text
Source
  ↓
Data Plane
  ↓
Processing / Runtime
  ↓
Data Plane
  ↓
Consumer
```

The Data Plane should remain separate from control and governance decisions.

~~~

## 6. Control Plane

The Control Plane manages operational control over Factory capabilities.

Potential control-plane activities include:

- Configuration
- Lifecycle control
- Execution control
- Resource control
- Policy application
- Scheduling coordination
- Runtime commands
- Deployment control
- State management

```text
Control Request
      ↓
Control Plane
      ↓
Policy / Authorization
      ↓
Runtime Operation
```

~~~

## 7. Data Plane and Control Plane Separation

The separation should remain explicit.

```text
                Fabric Runtime
                     │
        ┌────────────┴────────────┐
        │                         │
     Data Plane              Control Plane
        │                         │
   Data / State             Commands / Policy
        │                         │
        └────────────┬────────────┘
                     ↓
                Runtime
```

The two planes may interact but should not be unnecessarily merged.

~~~

## 8. Viewpoints

Viewpoints provide controlled contextual access to Fabric capabilities.

A viewpoint may determine:

- What is visible
- What is configurable
- What is executable
- What metadata is required
- Which policies apply
- Which authorization is required
- Whether approval is required
- What evidence must be captured

```text
User / System Context
        ↓
Viewpoint
        ↓
Metadata
        ↓
Policy
        ↓
Authorization / Approval
        ↓
Factory Capability
```

~~~

## 9. Viewpoints as Governance Junctions

A viewpoint may act as a governance junction between users, systems and Factory capabilities.

```text
                  Viewpoint
                      │
        ┌─────────────┼─────────────┐
        │             │             │
    Metadata       Policy       Authorization
        │             │             │
        └─────────────┼─────────────┘
                      │
                   Control
                      │
                   Evidence
```

The viewpoint is therefore more than a presentation mechanism.

~~~

## 10. Metadata Hooks

Fabric Runtime may provide hooks for attaching and retrieving metadata during runtime operations.

Metadata may describe:

- Identity
- Capability
- Asset
- Interface
- Workflow
- Resource
- Execution
- Configuration
- Security classification
- Lifecycle
- Provenance

```text
Runtime Operation
       ↓
Metadata Hook
       ↓
Metadata
       ↓
Control / Governance / Evidence
```

~~~

## 11. Metadata as Runtime Context

Metadata may be used to determine how a Factory operation should be handled.

```text
Request
   ↓
Metadata
   ↓
Context
   ↓
Policy
   ↓
Authorization
   ↓
Execution
```

Metadata should remain distinguishable from the actual operational payload.

~~~

## 12. Governance Hooks

Governance hooks allow runtime operations to invoke applicable governance mechanisms.

Potential governance concerns include:

- Policy
- Compliance
- Approval
- Audit
- Data governance
- Resource governance
- Security
- Lifecycle controls
- Evidence requirements

```text
Runtime Activity
      ↓
Governance Hook
      ↓
Applicable Governance
      ↓
Allow / Restrict / Require Approval
```

~~~

## 13. Authorization Integration

Fabric Runtime integrates with Factory authorization mechanisms.

Authorization may consider:

- Identity
- Role
- Tenant
- Project
- Workspace
- Asset
- Capability
- Resource
- Environment
- Operation
- Policy

```text
Request
   +
Identity
   +
Context
   ↓
Authorization
   ↓
Decision
```

~~~

## 14. Approval Integration

Some operations may require explicit approval.

Examples include:

- Production deployment
- High-cost resource allocation
- Sensitive data access
- External QPU execution
- Restricted environment access
- Security-sensitive configuration

```text
Request
   ↓
Policy Evaluation
   ↓
Approval Required?
   ├── No → Execute
   └── Yes
          ↓
       Approval
          ↓
       Execute
```

~~~

## 15. Policy Integration

Fabric Runtime may invoke applicable Factory policies.

Policies may address:

- Security
- Resource use
- Data access
- Execution
- Deployment
- Cost
- Compliance
- Environment
- Client requirements

Policy evaluation should occur at appropriate control boundaries.

~~~

## 16. Control Hooks

Control hooks allow runtime mechanisms to invoke control-plane operations.

Examples include:

- Start
- Stop
- Pause
- Resume
- Reconfigure
- Scale
- Allocate
- Release
- Deploy
- Rollback

```text
Control Request
      ↓
Control Hook
      ↓
Policy / Authorization
      ↓
Factory Runtime
```

~~~

## 17. Event Integration

Fabric Runtime may use events to connect data-plane and control-plane activities.

```text
Runtime Event
      ↓
Fabric Runtime
      ├── Metadata
      ├── Policy
      ├── Governance
      ├── Evidence
      └── Control
```

Events should preserve appropriate identity and provenance.

~~~

## 18. Fabric Runtime and Factory Core

Fabric Runtime relies on common Factory Core services where appropriate.

```text
Fabric Runtime
      ↓
Factory Core
      ├── Configuration
      ├── Lifecycle
      ├── Orchestration
      ├── Scheduling
      ├── Security
      ├── Observability
      └── Evidence
```

Fabric Runtime should not duplicate these common Factory mechanisms.

~~~

## 19. Fabric Runtime and Registry

Fabric Runtime may use Factory Registry mechanisms to resolve implementations.

```text
Framework Fabric Definition
          ↓
Factory Registry
          ↓
Fabric Implementation
          ↓
Fabric Runtime
```

Registry resolution should preserve Framework identities and contracts.

~~~

## 20. Fabric Runtime and Asset Runtime

Fabric Runtime may coordinate with Asset Runtime.

```text
Fabric Runtime
      ↓
Asset Runtime
      ↓
Runtime Asset
```

For example, a control-plane operation may invoke an Asset Runtime state transition.

~~~

## 21. Fabric Runtime and Workflow Runtime

Fabric capabilities may be invoked during workflow execution.

```text
Workflow
   ↓
Fabric Runtime
   ├── Metadata
   ├── Policy
   ├── Authorization
   └── Control
   ↓
Execution
```

This allows governance and control to remain integrated with workflow execution.

~~~

## 22. Fabric Runtime and Evidence

Fabric Runtime should integrate with the Factory evidence layer.

Evidence may capture:

- Request
- Identity
- Viewpoint
- Metadata
- Policy
- Authorization decision
- Approval
- Control action
- Execution
- Result

```text
Request
   ↓
Fabric Runtime
   ↓
Control / Governance
   ↓
Execution
   ↓
Evidence
```

~~~

## 23. Fabric Runtime and Adapters

Fabric Runtime may use adapters where technology-specific control or data interfaces require translation.

```text
Fabric Contract
      ↓
Adapter
      ↓
Connector
      ↓
Technology / External System
```

The adapter translates the contract.

The connector provides access.

~~~

## 24. Fabric Runtime and Connectors

Connectors provide access to external systems participating in a Fabric.

```text
Fabric Runtime
      ↓
Connector
      ↓
External Platform / Service
```

Examples may include:

- Cloud services
- GitHub
- GitLab
- Local services
- External resource platforms

~~~

## 25. Fabric Runtime and Web Platform

The Common Web Platform may provide user-facing access to Fabric capabilities.

```text
User
 ↓
Web Platform
 ↓
Factory API
 ↓
Fabric Runtime
 ↓
Data / Control / Governance
```

The Web Platform provides the access experience; Fabric Runtime provides the runtime Fabric mechanisms.

~~~

## 26. Fabric Runtime and PaaS

PaaS workspaces may use Fabric Runtime for controlled engineering operations.

Examples include:

- Project configuration
- Resource control
- Workflow execution
- Asset management
- Experiment execution
- Deployment preparation

```text
PaaS Workspace
      ↓
Fabric Runtime
      ↓
Factory Capabilities
```

~~~

## 27. Fabric Runtime and SaaS

SaaS applications may consume selected Fabric capabilities through controlled Factory services.

```text
SaaS
 ↓
Factory API
 ↓
Fabric Runtime
 ↓
Approved Capability
```

SaaS should expose only the Fabric capabilities appropriate to its product and authorization context.

~~~

## 28. Fabric Runtime and IaaS

IaaS and Resource Fabric mechanisms may interact with the control plane.

```text
Control Plane
      ↓
Resource Control
      ↓
Resource Fabric
      ↓
CPU / GPU / HPC / Storage / Network / QPU
```

Fabric Runtime coordinates the control interaction without redefining the underlying resource abstraction.

~~~

## 29. Fabric and Resource Management

Fabric Runtime may invoke resource-management operations such as:

- Allocation
- Release
- Scaling
- Reservation
- Availability checks
- Resource status

```text
Resource Requirement
      ↓
Control Plane
      ↓
Resource Fabric
      ↓
Resource
```

~~~

## 30. Fabric and Data Management

The Data Plane may interact with:

- Data spaces
- Runtime state
- Event streams
- Experiment data
- Execution results
- External data services

The specific storage technology remains an implementation choice.

~~~

## 31. Fabric and In-Memory Data

Fabric Runtime may use the common Factory in-memory data model for:

- Runtime state
- Metadata
- Events
- Control state
- Viewpoint context
- Temporary execution information

This should remain distinct from durable project data and evidence.

~~~

## 32. Multi-Tenant Context

Where the Factory supports multiple tenants, Fabric Runtime should preserve tenant context.

```text
Identity
   ↓
Tenant
   ↓
Workspace
   ↓
Project
   ↓
Fabric Operation
```

Tenant isolation should be enforced by the underlying services and controls.

~~~

## 33. Project and Workspace Context

Fabric operations may also depend on project and workspace context.

```text
Tenant
   ↓
Workspace
   ↓
Project
   ↓
Asset / Workflow / Resource
   ↓
Fabric Operation
```

This context may be provided through metadata and authorization mechanisms.

~~~

## 34. Fabric Runtime Security

Fabric Runtime should integrate with Factory security mechanisms.

Security concerns include:

- Authentication
- Authorization
- Data protection
- Secure communication
- Resource access
- Tenant isolation
- Audit
- Policy enforcement

Security controls should apply to both data-plane and control-plane operations where appropriate.

~~~

## 35. Governance and Compliance

Fabric Runtime may provide hooks into governance mechanisms without embedding every governance rule directly into the runtime.

```text
Runtime Operation
      ↓
Governance Hook
      ↓
Governance Service / Policy
      ↓
Decision
```

This allows governance mechanisms to evolve independently.

~~~

## 36. Observability

Fabric Runtime should support common observability mechanisms.

Potential information includes:

- Data-plane activity
- Control-plane activity
- Events
- Policy decisions
- Authorization decisions
- Approval state
- Errors
- Latency
- Runtime health

```text
Fabric Runtime
      ↓
Logs / Metrics / Events / Traces
      ↓
Factory Observability
```

~~~

## 37. Evidence and Provenance

Important Fabric operations should be traceable.

Evidence may identify:

- Fabric operation
- Viewpoint
- Identity
- Tenant
- Project
- Metadata
- Policy
- Authorization
- Approval
- Control action
- Target asset
- Resource
- Result

This allows the Factory to establish not only **what happened**, but also **under which control context it happened**.

~~~

## 38. Runtime Lifecycle

Fabric Runtime capabilities may have their own lifecycle.

```text
Configured
   ↓
Initialized
   ↓
Ready
   ↓
Active
   ↓
Suspended
   ↓
Updated
   ↓
Retired
```

Fabric lifecycle should remain coordinated with the lifecycle of dependent Factory services.

~~~

## 39. Viewpoint Lifecycle

Viewpoints may also be versioned and governed.

Changes may affect:

- Visibility
- Metadata requirements
- Policy
- Authorization
- Approval
- Available operations

Viewpoint changes should therefore be traceable.

~~~

## 40. Fabric Runtime and Deployment

Deployment implementations may initialize Fabric Runtime capabilities.

```text
Deployment
      ↓
Fabric Configuration
      ↓
Fabric Runtime
      ↓
Data / Control / Governance
```

The deployed Fabric configuration should remain associated with the deployment evidence.

~~~

## 41. Fabric Runtime and Greenfield / Brownfield

Fabric Runtime should support both:

```text
Greenfield
    ↓
New Factory-managed environment

Brownfield
    ↓
Existing systems integrated through
connectors and adapters
```

Brownfield integrations should not require the existing system to adopt the complete Factory architecture immediately.

~~~

## 42. Technology Neutrality

Fabric Runtime is an implementation layer but should preserve technology-neutral Fabric contracts.

```text
Framework Fabric Definition
          ↓
Factory Fabric Runtime
          ↓
Technology Binding
          ↓
Technology
```

Technology-specific implementation should remain behind appropriate connectors, adapters and bindings.

~~~

## 43. Reference Implementations

Technology-specific Fabric implementations may be maintained as reference implementations.

Examples may include:

- Data platforms
- Cloud control platforms
- Workflow platforms
- Governance platforms
- Authorization systems
- Enterprise integration platforms

A reference implementation demonstrates a realization of the Fabric capability.

It does not redefine the Fabric itself.

~~~

## 44. Microsoft Fabric Relationship

Microsoft Fabric may be used as a **reference implementation** for selected Fabric capabilities.

The distinction remains:

```text
QAI / General Fabric
      ↓
Technology-Neutral Concept

Microsoft Fabric
      ↓
Technology-Specific Reference Implementation
```

The existence of a Microsoft Fabric implementation should not make Microsoft Fabric the definition of the General Factory Fabric model.

~~~

## 45. Fabric Runtime and Reference Implementations

Reference implementations may be connected through:

```text
Fabric Contract
      ↓
Factory Registry
      ↓
Adapter
      ↓
Connector
      ↓
Reference Implementation
```

This provides a controlled implementation path while preserving the common architecture.

~~~

## 46. Fabric Runtime and Productization

Validated Fabric capabilities may become reusable platform services.

```text
Reference / Pilot
       ↓
Experiment
       ↓
Validation
       ↓
Post-Pilot Fabric Capability
       ↓
PaaS / SaaS / Deployment
```

Promotion should be controlled and evidence-based.

~~~

## 47. Current Structure

The current `fabric_runtime/` directory establishes the Factory implementation boundary for Fabric capabilities.

Potential future organization may include:

```text
fabric_runtime/
├── data_plane/
├── control_plane/
├── viewpoints/
├── metadata/
├── governance/
├── authorization/
├── approval/
├── policy/
├── events/
└── evidence/
```

These are logical implementation areas and should be created incrementally as actual Fabric runtime requirements emerge.

~~~

## 48. Current Scope

The current purpose of `fabric_runtime/` is to provide implementation-side mechanisms for:

- Data Plane
- Control Plane
- Viewpoints
- Metadata hooks
- Governance hooks
- Authorization integration
- Approval integration
- Policy integration
- Control hooks
- Event integration
- Evidence integration
- Runtime state
- Cross-cutting Factory control

The runtime should remain a reusable Factory capability rather than becoming a domain-specific application.

~~~

## 49. Guiding Principles

1. Fabric Runtime implements Framework-defined Fabric capabilities.
2. Fabric is a cross-cutting Factory capability.
3. Data Plane and Control Plane should remain conceptually distinct.
4. Viewpoints provide controlled contextual access to Fabric capabilities.
5. Metadata hooks provide runtime context without becoming business logic.
6. Governance hooks allow policies and governance mechanisms to participate in runtime operations.
7. Authorization and approval should be integrated at appropriate control boundaries.
8. Fabric Runtime should reuse Factory Core services rather than duplicate them.
9. Factory Registry should provide implementation resolution where required.
10. Adapters translate contracts when technology-specific interfaces differ.
11. Connectors provide access and invocation.
12. Data-plane operations and control-plane operations should remain traceable.
13. Evidence should capture important control and governance context.
14. Tenant, workspace and project context should be preserved where applicable.
15. Technology-specific Fabric implementations should remain behind appropriate Factory boundaries.
16. Microsoft Fabric and other technologies may serve as reference implementations without defining the Fabric concept.
17. Fabric Runtime should support both greenfield and brownfield environments.
18. Fabric Runtime should remain reusable across modules, assets, workflows, experiments and deployments.
19. Fabric Runtime should provide hooks and mechanisms rather than embedding every domain-specific governance rule.
20. Fabric capabilities should evolve through controlled implementation and evidence.

~~~

## 50. Guiding Statement

**Fabric Runtime is the General Factory implementation layer that connects data-plane and control-plane operations with viewpoints, metadata, governance, authorization, approval and evidence while preserving the technology-neutral Fabric definitions of the General Framework.**

**Keep Fabric cross-cutting, keep data and control concerns distinguishable, and use runtime hooks to connect execution with governance and control without turning the Fabric Runtime into a domain-specific application.**

---

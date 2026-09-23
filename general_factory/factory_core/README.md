# Factory Core

Common configuration, lifecycle, orchestration, scheduling, resource management and shared Factory services.

~~~

## 1. Purpose

`factory_core/` contains the common implementation foundations required by the General Factory.

It provides shared mechanisms used by modules, packages, experimentation, deployment and other Factory implementation assets.

```text
General Factory
│
├── Factory Core
│   ├── Configuration
│   ├── Lifecycle
│   ├── Orchestration
│   ├── Scheduling
│   ├── Resource Management
│   └── Shared Services
│
├── Modules
├── Packages
├── Experimentation
└── Deployment
```

Factory Core provides common mechanisms rather than domain-specific implementations.

~~~

## 2. Architectural Position

Factory Core is the common implementation foundation of the General Factory.

```text
General Framework
      ↓
Logical Definitions / Contracts
      ↓
General Factory
      ↓
Factory Core
      ↓
Modules / Packages / Experimentation / Deployment
```

The Framework defines **WHAT** is required.

Factory Core provides common **HOW** mechanisms.

Specialized Factory assets build on those mechanisms.

~~~

## 3. Factory Core Boundary

Factory Core is responsible for common Factory-wide implementation concerns.

These include:

- Configuration
- Lifecycle
- Orchestration
- Scheduling
- Resource management
- Runtime state
- Common execution services
- Shared service integration
- Observability
- Evidence and provenance support
- Common validation
- Error handling
- Security integration

It should not become the location for every implementation in the Factory.

~~~

## 4. Factory Core Versus Modules

The distinction is:

```text
Factory Core
    ↓
Common platform mechanisms

Modules
    ↓
Reusable functional capabilities
```

For example:

```text
Factory Core
    ├── Scheduler
    ├── Resource Manager
    ├── Configuration
    └── Lifecycle Manager

Module
    └── QAI Engineering Capability
```

Modules consume Factory Core services rather than duplicating them.

~~~

## 5. Factory Core Versus Packages

The distinction is:

```text
Factory Core
    ↓
Provides common execution mechanisms

Package
    ↓
Composes capabilities for a deployment
```

A package may therefore depend on Factory Core services.

```text
Package
   ↓
Modules
   ↓
Factory Core
   ↓
Runtime / Resources
```

~~~

## 6. Factory Core Versus Experimentation

Experimentation uses Factory Core to manage controlled execution.

```text
Experiment
      ↓
Experiment Runtime
      ↓
Factory Core
      ├── Configuration
      ├── Scheduling
      ├── Resources
      ├── Lifecycle
      └── Execution Services
```

Factory Core provides the execution foundation; experimentation defines the experimental activity.

~~~

## 7. Configuration Management

Factory Core provides common configuration mechanisms.

Configuration may include:

- Factory settings
- Environment configuration
- Module configuration
- Package configuration
- Resource configuration
- Runtime configuration
- Execution policies
- Security configuration
- Integration configuration

Configuration should be versioned and traceable where appropriate.

~~~

## 8. Configuration Hierarchy

Configuration may exist at multiple levels.

```text
Factory
   ↓
Environment
   ↓
Project
   ↓
Package
   ↓
Module
   ↓
Execution
```

More specific configuration may specialize broader defaults subject to applicable policies and contracts.

~~~

## 9. Configuration and Secrets

Factory Core may provide integration with secret and credential management.

Sensitive information should not normally be embedded directly in:

- Framework definitions
- Module definitions
- Package definitions
- Experiment notebooks
- Deployment packages
- Source-controlled configuration

The Factory should reference appropriate secret-management mechanisms instead.

~~~

## 10. Lifecycle Management

Factory Core provides common lifecycle mechanisms.

Factory assets may progress through states such as:

```text
Draft
   ↓
Configured
   ↓
Validated
   ↓
Ready
   ↓
Active
   ↓
Suspended
   ↓
Deprecated
   ↓
Retired
```

Not every asset must use every lifecycle state.

~~~

## 11. Lifecycle and Maturity

Lifecycle status and technical maturity are distinct.

```text
Lifecycle
    ↓
What state is the asset in?

Maturity
    ↓
How mature is the capability or implementation?
```

A capability may be active while still being under controlled maturity development.

~~~

## 12. Orchestration

Factory Core provides common orchestration mechanisms for Factory activities.

A generalized flow may be:

```text
Request
   ↓
Resolve
   ↓
Validate
   ↓
Prepare
   ↓
Schedule
   ↓
Execute
   ↓
Observe
   ↓
Verify
   ↓
Capture Evidence
   ↓
Complete
```

Specialized workflows may add additional steps.

~~~

## 13. Orchestration Boundary

Factory Core orchestrates Factory capabilities but does not redefine the business or engineering logic of each capability.

```text
Factory Core
    ↓
Orchestrates

Module
    ↓
Provides capability

Package
    ↓
Provides composition

Experiment
    ↓
Provides investigation

Deployment
    ↓
Provides target realization
```

~~~

## 14. Scheduling

Factory Core provides common scheduling mechanisms.

Scheduling may consider:

- Dependencies
- Priority
- Resource availability
- Capacity
- Timing requirements
- Execution windows
- Constraints
- Policies
- Cost
- Latency
- Workload characteristics

```text
Workload
    ↓
Schedule
    ↓
Resource Allocation
    ↓
Execution
```

~~~

## 15. Asynchronous Execution

Factory Core should support asynchronous workloads where appropriate.

```text
Submit
   ↓
Queue
   ↓
Schedule
   ↓
Execute
   ↓
Event / Result
```

The caller should not necessarily need to remain connected for the entire execution.

~~~

## 16. Workload Management

Factory Core may represent execution workloads using common metadata.

A workload may specify:

- Workload ID
- Type
- Priority
- Dependencies
- Time requirements
- Resource requirements
- Input references
- Output references
- Execution policy
- Security classification
- Expected duration
- Retry policy

~~~

## 17. Resource Management

Factory Core provides common resource management mechanisms.

Resources may include:

- CPU
- GPU
- TPU
- NPU
- FPGA
- HPC
- Memory
- Storage
- Network
- Simulator
- Emulator
- Virtual QPU
- External QPU
- External services

The logical resource model should remain independent of the physical provider where possible.

~~~

## 18. Resource Resolution

Factory Core may resolve logical requirements against available resources.

```text
Capability Requirement
       ↓
Resource Requirement
       ↓
Resource Resolver
       ↓
Available Resource
       ↓
Allocation
```

This supports the principle:

**Framework requires capabilities; Factory resolves them to available resources.**

~~~

## 19. Resource Allocation

Resource allocation may consider:

- Capability
- Capacity
- Availability
- Location
- Performance
- Cost
- Quota
- Security classification
- Provider
- Ownership
- Current workload
- Scheduling constraints

Allocation should remain policy-controlled.

~~~

## 20. Resource Release

Resources should be released when execution completes or is cancelled.

```text
Allocate
   ↓
Execute
   ↓
Complete / Fail / Cancel
   ↓
Release
```

Persistent resources may have a different lifecycle where explicitly configured.

~~~

## 21. Runtime State

Factory Core may maintain common runtime state.

Examples include:

- Workload state
- Execution state
- Resource allocation state
- Workflow state
- Module state
- Package state
- Environment state
- Job state
- Event state

Runtime state should remain distinguishable from durable project data and evidence.

~~~

## 22. State and In-Memory Data

Factory Core may use the common in-memory data model for runtime state.

Possible structures include:

- Key/value state
- Tables
- Documents
- Arrays / tensors
- Graphs
- Event streams
- State objects

The implementation should remain independent of a particular database technology.

~~~

## 23. Execution Environment

Factory Core may establish and manage execution environments.

An environment may include:

```text
Environment
 ├── Compute
 ├── Memory
 ├── Storage
 ├── Network
 ├── Runtime
 ├── Software
 ├── Backend
 ├── Security
 └── Configuration
```

The environment may be virtual, simulated, emulated, physical or hybrid.

~~~

## 24. Virtual-First Execution

Factory Core should support virtual-first execution where practical.

```text
Logical Requirement
      ↓
Virtual Environment
      ↓
Simulation / Emulation
      ↓
HIL / Testbed
      ↓
Physical Execution
```

The Factory should not require physical infrastructure when the objective can be validated through a suitable virtual realization.

~~~

## 25. Hybrid Execution

Factory Core may coordinate heterogeneous resources.

For example:

```text
CPU
 +
GPU
 +
HPC
 +
Virtual QPU
 +
External QPU
      ↓
Hybrid Runtime
```

The runtime should coordinate the execution without making the individual resource types part of the logical Framework definition.

~~~

## 26. Shared Factory Services

Factory Core may provide or coordinate common services such as:

- Identity integration
- Configuration
- Logging
- Metrics
- Events
- Secrets integration
- Audit
- Evidence
- Provenance
- Notification
- Validation
- Health monitoring
- Error management

These services should be reusable across Factory assets.

~~~

## 27. Identity and Access

Factory Core integrates with common identity and access mechanisms.

Controls may include:

- Authentication
- Authorization
- Role-based access
- Resource permissions
- Project permissions
- Execution permissions
- Administrative controls

Authorization should be enforced at the service and execution boundaries rather than relying solely on user-interface presentation.

~~~

## 28. Policy Integration

Factory Core may enforce policies related to:

- Resource usage
- Execution
- Data access
- Security
- Approval
- Compliance
- Cost
- Environment
- Deployment

```text
Request
   ↓
Policy Evaluation
   ↓
Allowed / Restricted / Rejected
   ↓
Execution
```

Policies should remain distinguishable from implementation code.

~~~

## 29. Approval and Control

Some Factory activities may require approval.

Examples include:

- Access to controlled resources
- Production deployment
- External QPU execution
- Sensitive data access
- High-cost workloads
- Security-sensitive operations

```text
Request
   ↓
Policy
   ↓
Approval if Required
   ↓
Execution
```

~~~

## 30. Observability

Factory Core should provide common observability mechanisms.

These may include:

- Logs
- Metrics
- Events
- Traces
- Execution status
- Resource utilization
- Errors
- Health status
- Performance measurements

Observability should support both operational monitoring and experiment evidence.

~~~

## 31. Evidence and Provenance

Factory Core should support common evidence and provenance mechanisms.

```text
Request
   ↓
Configuration
   ↓
Execution
   ↓
Result
   ↓
Evidence
```

Evidence may reference:

- Asset versions
- Configuration
- Resources
- Backend
- Workflow
- Execution
- Results
- Validation
- Approvals

~~~

## 32. Error Handling

Factory Core should provide common error-management mechanisms.

Errors may include:

- Configuration errors
- Dependency failures
- Validation failures
- Resource failures
- Scheduling failures
- Backend failures
- Execution failures
- Timeout
- External service failures

The Factory should preserve useful error context and provenance.

~~~

## 33. Retry and Recovery

Where appropriate, Factory Core may support:

- Retry
- Restart
- Resume
- Failover
- Rollback
- Compensation
- Manual intervention

Recovery behavior should be defined by the workload and execution policy rather than assumed to be identical for every operation.

~~~

## 34. Connectors and Adapters

Factory Core may provide common mechanisms for invoking connectors and adapters.

```text
Factory Capability
       ↓
Interface
       ↓
Connector
       ↓
Adapter
       ↓
External System
```

Technology-specific integration remains behind the appropriate implementation boundary.

~~~

## 35. API and Service Boundary

Factory Core services should expose controlled interfaces for Factory clients.

Potential clients include:

- PaaS workspaces
- SaaS applications
- Notebooks
- Modules
- Packages
- Deployment tools
- Administrative tools
- External integrations

```text
Client
   ↓
Factory API
   ↓
Factory Core
   ↓
Factory Capability
```

~~~

## 36. Factory Core and Experimentation

Experimentation consumes common Factory Core mechanisms for:

- Configuration
- Scheduling
- Resource resolution
- Execution
- State
- Observability
- Evidence

```text
Experimentation
       ↓
Factory Core
       ↓
Runtime / Resources
```

~~~

## 37. Factory Core and Modules

Modules use Factory Core for common platform services.

```text
Module
   ↓
Factory Core
   ├── Configuration
   ├── Resources
   ├── Scheduling
   ├── Lifecycle
   └── Shared Services
```

This prevents each module from implementing its own independent platform foundation.

~~~

## 38. Factory Core and Packages

Packages use Factory Core during composition and execution.

```text
Package
   ↓
Factory Core
   ├── Resolve
   ├── Validate
   ├── Configure
   ├── Schedule
   └── Execute
```

~~~

## 39. Factory Core and Deployment

Deployment mechanisms consume Factory Core services for:

- Configuration
- Resource management
- Lifecycle
- Validation
- Execution
- Observability
- Evidence

```text
Deployment
     ↓
Factory Core
     ↓
Execution Environment
```

~~~

## 40. Factory Core and Bootstrapper

The General Factory Bootstrapper uses Factory capabilities to prepare deployments.

```text
Bootstrapper
      ↓
Factory Core
      ↓
Configuration
      ↓
Resolution
      ↓
Generation
      ↓
Validation
```

The Bootstrapper remains the deployment composition/orchestration entry point; Factory Core remains the common runtime foundation.

~~~

## 41. Factory Core and Fabrics

Factory Core may consume and coordinate Fabric capabilities.

Examples include:

- Resource Fabric
- Data Fabric
- Control Fabric
- Governance Fabric
- Knowledge Fabric
- Security capabilities

Fabrics remain cross-cutting platform capabilities.

```text
Factory Core
      ↕
Fabrics
      ↕
Modules / Packages / Experiments / Deployments
```

~~~

## 42. Technology Neutrality

Factory Core should provide technology-neutral abstractions wherever practical.

Technology-specific implementations may be provided through:

- Providers
- Connectors
- Adapters
- Backends
- Resource bindings
- Deployment profiles

```text
Logical Factory Requirement
       ↓
Factory Core Abstraction
       ↓
Implementation Binding
       ↓
Technology
```

~~~

## 43. Factory Core Lifecycle

Factory Core itself should evolve through controlled development.

```text
Definition
   ↓
Implementation
   ↓
Integration
   ↓
Validation
   ↓
Reference Baseline
   ↓
Controlled Evolution
```

Changes to core mechanisms should be evaluated carefully because many Factory assets may depend on them.

~~~

## 44. Core Stability

Because Factory Core is shared, changes should consider:

- Backward compatibility
- Interface stability
- Module compatibility
- Package compatibility
- Experiment compatibility
- Deployment compatibility
- Migration requirements
- Evidence impact

Core changes should not silently invalidate existing Factory assets.

~~~

## 45. Factory Core Versioning

Factory Core should have explicit version information.

Changes may affect:

- APIs
- Service contracts
- Runtime behavior
- Scheduling
- Resource management
- Configuration
- Lifecycle
- Security
- Evidence
- Observability

Meaningful changes should be versioned and validated.

~~~

## 46. Factory Core and Reference Implementations

Technology-specific reference implementations may demonstrate Factory Core integrations.

Examples may include:

- Cloud resource integrations
- GPU/HPC integrations
- Quantum backends
- Data platforms
- Development environments
- Simulation engines

Reference implementations demonstrate implementation patterns and do not redefine Factory Core's logical contracts.

~~~

## 47. Current Structure

The intended boundary is:

```text
factory_core/
└── Common General Factory implementation foundations
```

Implementation subdirectories should be introduced incrementally according to actual Factory requirements.

Potential future organization may include:

```text
factory_core/
├── configuration/
├── lifecycle/
├── orchestration/
├── scheduling/
├── resources/
├── runtime/
├── services/
├── security/
├── observability/
├── evidence/
└── validation/
```

These are implementation organization candidates, not a requirement to create every directory immediately.

~~~

## 48. Current Scope

The current `factory_core/` boundary establishes the common implementation foundation for:

- Configuration
- Lifecycle
- Orchestration
- Scheduling
- Resource management
- Runtime state
- Shared Factory services
- Security integration
- Policy integration
- Observability
- Error handling
- Evidence and provenance
- Common validation
- Factory-wide execution support

The implementation should grow incrementally from actual platform requirements.

~~~

## 49. Guiding Principles

1. Factory Core provides common Factory-wide implementation foundations.
2. It should not become a container for every Factory capability.
3. Modules provide reusable functional capabilities.
4. Packages compose capabilities into reusable deployment units.
5. Experimentation provides controlled investigation and evidence generation.
6. Deployment provides target-specific realization.
7. Factory Core provides common mechanisms used by all of them.
8. Logical requirements should remain separate from physical technology bindings.
9. Resource requirements should be resolved through common resource mechanisms.
10. Configuration should be explicit, versioned and traceable.
11. Lifecycle should be managed consistently across Factory assets.
12. Scheduling and orchestration should support synchronous and asynchronous execution.
13. Security and policy controls should apply at the service and execution boundaries.
14. Observability and provenance should be first-class Factory capabilities.
15. Errors and recovery should preserve useful execution context.
16. Core changes should consider their impact on dependent Factory assets.
17. Technology-specific implementation should remain behind appropriate Factory boundaries.
18. Factory Core should provide stable foundations while allowing specialized capabilities to evolve independently.

~~~

## 50. Guiding Statement

**Factory Core is the common execution foundation of the General Factory, providing configuration, lifecycle, orchestration, scheduling, resource management, runtime control and shared services for reusable modules, packages, experimentation and deployments.**

**Keep the core small, stable and reusable; place specialized capabilities in the appropriate Factory implementation layer.**

---

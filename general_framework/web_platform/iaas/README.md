# IaaS

Infrastructure access model for the Web Access Layer.

IaaS provides the logical resource, infrastructure and backend access model required by the QAI platform. It is maintained from the beginning so infrastructure capabilities remain synchronized with SaaS and PaaS while allowing their implementation and maturity to evolve independently.

IaaS is **not the immediate commercial focus**.

It provides resource abstractions, resource requirements, provisioning/binding concepts and backend integration points for future evolution.

The General Framework defines the **logical infrastructure and resource model**. The General Factory provides the implementation, resolution, provisioning and backend integration mechanisms.

~~~

## 1. Purpose

IaaS provides the infrastructure-facing abstraction through which platform projects can request and consume computational and supporting resources.

The objective is to allow the platform to express:

- what resources are required
- what capabilities those resources must provide
- what constraints apply
- how resources may be accessed
- how resources may be bound to workloads
- how infrastructure can evolve without changing logical project definitions

IaaS therefore separates **resource requirements** from specific infrastructure implementations.

~~~

## 2. Architectural Position

IaaS is part of the common Web Access Layer.

```text
Common Web Access Layer
          │
    ┌─────┼─────┐
    ↓     ↓     ↓
   SaaS  PaaS  IaaS
    │     │     │
 Consume Build Resource
    │     │     │
    └─────┼─────┘
          ↓
   General Factory
          ↓
 Resource Fabric / Backends
```

The three layers have different primary purposes:

- **SaaS** — consume validated capabilities
- **PaaS** — build and engineer capabilities
- **IaaS** — provide and resolve resources

~~~

## 3. IaaS and the General Framework

The General Framework defines the logical meaning of:

- resources
- resource capabilities
- resource requirements
- capacity
- availability
- access
- location
- provider
- ownership
- security classification
- performance
- cost or quota
- resource constraints
- resource lifecycle

The Framework does not require a particular infrastructure provider or technology.

~~~

## 4. IaaS and the General Factory

The General Factory implements the infrastructure access model.

Conceptually:

```text
Logical Resource Requirement
          ↓
Resource Capability
          ↓
Resource Fabric
          ↓
Resource Resolution
          ↓
Implementation Binding
          ↓
Concrete Resource / Backend
          ↓
Execution
```

The Factory may resolve logical requirements to:

- local resources
- remote resources
- cloud resources
- partner resources
- virtual resources
- simulated resources
- emulated resources
- physical resources

~~~

## 5. Resource Abstraction

Projects should request resources using logical capabilities rather than permanent infrastructure identities.

For example:

```text
Project
  ↓
Requires GPU Compute
  ↓
Resource Capability
  ↓
Resource Fabric
  ↓
Available GPU
```

The project should not fundamentally depend on one particular GPU, server, cloud provider or location unless that dependency is an explicit project constraint.

~~~

## 6. Resource Classes

The logical IaaS model may represent resources such as:

- CPU
- GPU
- TPU
- NPU
- FPGA
- HPC
- RAM
- accelerator memory
- storage
- network
- high-speed interconnect
- virtual QPU
- quantum simulator
- quantum emulator
- external QPU
- AI model
- Generative AI model
- partner service
- local IT asset
- remote IT asset

These are resource categories rather than mandatory infrastructure commitments.

~~~

## 7. Resource Fabric Relationship

The Resource Fabric provides the broader capability for discovering, describing, selecting and managing computational resources.

IaaS provides the infrastructure access model through which those resources can be exposed to platform workloads.

Conceptually:

```text
IaaS
  ↓
Resource Requirements
  ↓
Resource Fabric
  ↓
Resource Inventory
  ↓
Resource Resolution
  ↓
Backend Integration
```

Resource metadata may include:

- identity
- type
- capabilities
- capacity
- location
- availability
- access method
- software / SDK
- performance
- cost / quota
- security classification
- provider
- ownership

~~~

## 8. PaaS → IaaS Relationship

PaaS is the first active post-pilot development surface.

PaaS defines the resources required by a project or workflow.

IaaS and the Resource Fabric resolve those requirements to available resources.

```text
PaaS Project
      ↓
Workflow
      ↓
Resource Requirements
      ↓
IaaS / Resource Fabric
      ↓
Available Resource
      ↓
Factory Binding
      ↓
Execution
```

Therefore, IaaS should initially evolve from actual PaaS requirements.

We should not build a large infrastructure layer before the platform has concrete resource requirements to justify it.

~~~

## 9. Resource Provisioning and Binding

The Framework defines the logical concepts of:

- resource request
- resource selection
- resource allocation
- resource binding
- resource release

The Factory determines how these concepts are implemented.

A future implementation may support:

```text
Request
  ↓
Validate
  ↓
Resolve
  ↓
Allocate / Provision
  ↓
Bind
  ↓
Use
  ↓
Release
```

Not every resource requires active provisioning. Some resources may already exist and only require access or binding.

~~~

## 10. Backend Integration

IaaS provides the logical boundary for backend integration.

Backends may include:

- local workstation resources
- Linux or Windows environments
- containers
- virtual machines
- cloud resources
- GPU servers
- HPC clusters
- quantum simulators
- external QPU services
- partner computational services
- storage services
- network services

Technology-specific integrations belong primarily in the General Factory.

~~~

## 11. Virtual and Physical Resources

IaaS should support both virtual and physical realization.

```text
Logical Resource
       ↓
Virtual Resource
       ↓
Simulated / Emulated Resource
       ↓
Hybrid Resource
       ↓
Physical Resource
```

The appropriate realization depends on the project, evidence requirements and maturity.

IaaS does not require physical infrastructure for every project.

~~~

## 12. Hybrid Computational Resources

The platform may combine multiple resource types within one project.

For example:

```text
CPU
 │
 GPU
 │
 HPC
 │
 Virtual QPU
 │
 Storage
 │
 Network
 │
 External QPU
      ↓
 Hybrid Runtime
      ↓
 Workflow
```

The resource model should therefore support heterogeneous and hybrid environments.

~~~

## 13. Quantum Resource Abstraction

Quantum resources are represented as capabilities rather than as mandatory physical QPU dependencies.

Possible logical resources include:

- quantum simulator
- quantum emulator
- virtual QPU
- external QPU
- future proprietary QAI hardware

The same logical workflow should be able to use different appropriate backends where the workflow and evidence requirements permit.

~~~

## 14. Resource Portability

A key IaaS principle is infrastructure portability.

Conceptually:

```text
Logical Workload
      ↓
Resource Requirements
      ↓
Resource Fabric
      ↓
Backend
```

The backend may change without requiring fundamental changes to the logical project or workflow.

Possible implementations include:

```text
Local
  ↓
Container
  ↓
VPS
  ↓
Cloud
  ↓
GPU
  ↓
HPC
  ↓
QPU
  ↓
Partner Backend
```

These are implementation choices, not Framework dependencies.

~~~

## 15. Resource Security

Infrastructure access should respect:

- identity
- authentication
- authorization
- project permissions
- resource permissions
- security classification
- network policy
- data access policy
- backend access policy
- execution policy
- quota and usage controls

A resource being technically available does not imply that every project or user is authorized to use it.

~~~

## 16. Resource Constraints

Resource requirements may include constraints such as:

- minimum capacity
- maximum capacity
- performance
- latency
- location
- availability
- cost
- quota
- security classification
- software compatibility
- hardware compatibility
- network requirements
- data locality
- execution time

The Factory resolves these constraints against the available resource inventory.

~~~

## 17. IaaS and PaaS Environment Composition

PaaS may compose a project environment from logical resource requirements.

For example:

```text
PaaS Environment
     │
     ├── CPU
     ├── GPU
     ├── Memory
     ├── Storage
     ├── Network
     └── Quantum Simulator
             ↓
        Resource Fabric
             ↓
       Concrete Environment
```

This allows the developer to describe the environment without manually managing every infrastructure implementation.

~~~

## 18. IaaS and SaaS

SaaS should normally consume an approved or preconfigured resource environment.

The SaaS user should not normally be required to configure infrastructure.

Conceptually:

```text
PaaS
  ↓
Design / Configure Environment
  ↓
IaaS / Resource Fabric
  ↓
Validate
  ↓
Standardize
  ↓
SaaS
  ↓
Approved Resource Configuration
```

This preserves the distinction between engineering and consumption.

~~~

## 19. IaaS and Virtual-First Engineering

IaaS supports the platform's virtual-first approach.

A resource may initially be represented through:

- logical definition
- virtual resource
- simulator
- emulator
- software implementation
- local resource
- remote resource
- physical realization

This allows resource-dependent development to begin before final infrastructure is available.

~~~

## 20. IaaS Evidence and Provenance

Resource usage should be traceable where required.

Evidence may include:

- resource identity
- resource profile
- resource version
- allocation
- binding
- execution
- performance
- cost or quota
- configuration
- backend
- provider
- execution result

This supports reproducibility, validation and later comparison of alternative resources.

~~~

## 21. IaaS Technology Neutrality

The Framework does not mandate:

- a particular cloud provider
- a particular GPU vendor
- a particular HPC platform
- a particular QPU provider
- a particular operating system
- a particular virtualization technology
- a particular network technology
- a particular storage technology

Technology-specific implementation belongs primarily in the General Factory.

~~~

## 22. IaaS Commercial Position

IaaS is **not the immediate commercial focus**.

The initial objective is to maintain a stable logical resource model so that:

- PaaS can develop without hard-coding infrastructure
- SaaS can consume approved environments
- Factory can integrate available backends
- infrastructure can evolve progressively
- external partners can initially provide resources
- future proprietary infrastructure can be introduced without redesigning the platform

~~~

## 23. Initial Post-Pilot Direction

The first IaaS implementation should be deliberately small.

The initial implementation may focus on:

- resource profiles
- resource requirements
- resource inventory
- resource resolution
- basic bindings
- PaaS resource requests

The implementation should be driven by the resources actually required by the first PaaS projects.

~~~

## 24. Post-Pilot Development Sequence

The initial sequence is:

```text
Pilot Reference
      ↓
PaaS Engineering
      ↓
Identify Resource Requirements
      ↓
IaaS / Resource Fabric
      ↓
Resource Resolution
      ↓
Validation / Evidence
      ↓
SaaS Productization
```

IaaS therefore develops as a supporting platform capability rather than as an independent first-stage product.

~~~

## 25. Relationship to the Web Access Layer

The Web Access Layer provides three complementary access models:

```text
SaaS
  ↓
Consume Validated Capability

PaaS
  ↓
Build / Engineer Capability

IaaS
  ↓
Provide / Resolve Resources
```

All three remain connected to the same General Framework and General Factory architecture.

~~~

## 26. Guiding Statement

**IaaS provides the resource foundation of the QAI platform without becoming the platform architecture itself.**

It defines how logical resource requirements can be represented and connected to evolving computational infrastructure while preserving portability between local, virtual, cloud, GPU, HPC, quantum and partner resources.

**IaaS is the resource layer that enables the platform to build and run.**
---

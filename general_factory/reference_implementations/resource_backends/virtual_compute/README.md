# Virtual Compute

Reference implementation for the General Factory.

## Reference ID

REF-RESOURCE-VIRTUAL-001

## Purpose

Reference implementation for virtual computational resources.

## Architectural Role

This reference implementation demonstrates how a technology,
sample, external system, development environment, resource,
workflow or execution capability can participate in the
General Factory.

The reference implementation does not redefine the General
Framework. It provides an implementation reference that can
be resolved through Factory capabilities, registries,
connectors, adapters and runtime services.

## Common Structure

- configuration/ — configuration and environment definitions.
- samples/ — sample implementation assets.
- workflows/ — workflow examples and execution definitions.
- deployment/ — deployment examples and profiles.
- execution/ — execution configuration and runtime examples.
- results/ — sample execution results.
- evidence/ — validation, provenance and evidence artifacts.

## Integration Pattern

Framework Capability
        ↓
Factory Registry
        ↓
Connector / Adapter
        ↓
Reference Implementation
        ↓
Execution
        ↓
Results
        ↓
Evidence

## Status

Reference structure established.

Actual implementation assets should be added only when
available and validated.

## Principles

1. Keep the Framework technology-neutral.
2. Do not duplicate existing repositories unnecessarily.
3. Preserve implementation identity.
4. Preserve provenance.
5. Use connectors for access and invocation.
6. Use adapters where contract translation is required.
7. Resolve resources through the Resource Fabric.
8. Capture meaningful results and evidence.
9. Keep simulation, emulation and physical execution distinct.
10. Promote validated samples incrementally.
---
# Virtual Compute

Reference implementation for the General Factory.

## Reference ID

REF-RESOURCE-VIRTUAL-001

## Purpose

Reference implementation for virtual computational resources.

This reference implementation provides a concrete abstraction for computational resources exposed through virtualized, containerized, hosted or software-defined execution environments within the General Factory.

Virtual compute resources may support:

- Application execution.
- AI/ML workloads.
- Local or remote inference.
- Notebook execution.
- Workflow execution.
- Experiment execution.
- Simulation.
- Digital-twin workloads.
- Quantum simulation.
- Software development environments.
- Build and test workloads.
- Virtual device execution.
- Hybrid CPU/GPU workloads where supported.
- PaaS execution environments.
- Development and demonstration workloads.

Virtual Compute is treated as a resource implementation rather than the definition of the General Framework or the Resource Fabric.

A virtual compute resource may represent an execution environment without implying a particular underlying physical hardware implementation.

## Architectural Role

This reference implementation demonstrates how a technology, sample, external system, development environment, resource, workflow or execution capability can participate in the General Factory.

The reference implementation does not redefine the General Framework. It provides an implementation reference that can be resolved through Factory capabilities, registries, connectors, adapters and runtime services.

A representative relationship is:

    General Framework
            ↓
    Computational Resource Capability
            ↓
    Factory Registry
            ↓
    Virtual Compute Resource Binding
            ↓
    Resource Fabric
            ↓
    Virtual Execution Environment
            ↓
    Workload Execution
            ↓
    Results
            ↓
    Evidence

The virtual compute implementation therefore represents one possible computational resource for a logical resource requirement.

## Logical Resource Capability

The logical resource requirement should remain independent of a particular virtualization technology, cloud provider, host or deployment environment.

For example:

    Virtual Compute
          ↓
    Factory Resolution
          ↓
    Resource Fabric
          ↓
    Virtual Compute Resource
          ↓
    Execution Environment
          ↓
    Workload

A different compatible virtual compute implementation may satisfy the same logical requirement.

## Virtual Compute Model

Virtual compute may represent computational capacity exposed through:

- Virtual machines.
- Containers.
- Containerized application runtimes.
- Hosted development environments.
- Cloud compute instances.
- VPS environments.
- Local virtualized environments.
- PaaS execution environments.
- Other validated virtual execution environments.

The actual virtualization model should remain explicit in the resource configuration.

## Resource Identity

Each virtual compute resource should have a stable identity within the applicable resource registry.

A conceptual representation is:

    Virtual Compute Resource
        ├── Resource ID
        ├── Environment Type
        ├── Provider / Host
        ├── CPU Capacity
        ├── Memory
        ├── Storage
        ├── Accelerator
        ├── Runtime
        ├── Location
        └── State

Resource identity should be preserved across allocation and execution where practical.

## Resource Fabric Relationship

The Resource Fabric remains the authoritative resource-resolution layer.

A representative flow is:

    Workload
       ↓
    Resource Requirement
       ↓
    Resource Fabric
       ↓
    Virtual Compute Capability Matching
       ↓
    Virtual Resource Selection
       ↓
    Allocation / Provisioning
       ↓
    Execution Environment
       ↓
    Workload Execution

Resource Views may present virtual compute information to users, but they do not become the authority for resource selection.

## Resource Capability Matching

A workload may specify requirements such as:

- Virtual compute required.
- CPU capacity.
- Memory.
- Storage.
- Operating environment.
- Runtime.
- Container support.
- Network connectivity.
- Accelerator availability.
- Isolation requirements.
- Execution duration.
- Availability requirements.

The Resource Fabric may then perform logical matching.

For example:

    Workload Requirement
          ↓
    CPU Requirement
          ↓
    Memory Requirement
          ↓
    Runtime Requirement
          ↓
    Isolation Requirement
          ↓
    Resource Fabric
          ↓
    Compatible Virtual Resource
          ↓
    Allocation
          ↓
    Execution

## CPU and Virtual Compute

Virtual compute may expose CPU resources.

For example:

    Virtual Compute
          ↓
    Virtual CPU
          ↓
    Workload
          ↓
    Execution

The virtual compute environment and CPU resource remain distinguishable implementation concepts.

## GPU-backed Virtual Compute

A virtual compute environment may expose GPU capability where the underlying environment supports it.

For example:

    Virtual Compute
          ↓
    GPU Capability
          ↓
    GPU-backed Workload
          ↓
    Execution
          ↓
    Results

The GPU remains a distinct resource implementation.

The virtual environment provides the execution context.

## TPU-backed Virtual Environments

Where a platform supports TPU access through a virtual or managed environment, a virtual compute resource may participate in the execution path.

For example:

    Virtual / Managed Environment
          ↓
    TPU Capability
          ↓
    Workload
          ↓
    Execution
          ↓
    Results

The actual TPU resource and virtual environment should remain separately identifiable.

## HPC Relationship

Virtual compute may provide access to workloads associated with HPC environments where the actual platform supports such execution.

For example:

    Virtual Environment
          ↓
    HPC Access
          ↓
    Scheduler / Runtime
          ↓
    Workload
          ↓
    Results

The virtual environment should not automatically be represented as an HPC resource.

The actual underlying resource and execution environment should remain explicit.

## Quantum Relationship

Virtual compute may host quantum simulation or emulation workloads.

For example:

    Virtual Compute
          ↓
    Quantum Simulator
          ↓
    Simulation
          ↓
    Results

or:

    Virtual Compute
          ↓
    Quantum Emulator
          ↓
    Emulated Execution
          ↓
    Results

Virtual compute does not represent a physical QPU.

## QPU Relationship

A virtual compute environment may provide classical processing around a QPU workflow.

For example:

    Virtual Compute
          ↓
    Classical Processing
          ↓
    QPU Backend
          ↓
    Physical QPU
          ↓
    Results

The virtual compute resource and QPU resource remain distinct.

Virtual compute availability must not be interpreted as physical quantum hardware availability.

## AI / ML Workloads

Virtual compute may support AI/ML workloads.

A representative flow is:

    AI / ML Workflow
          ↓
    Resource Requirement
          ↓
    Resource Fabric
          ↓
    Virtual Compute
          ↓
    Model Execution
          ↓
    Metrics
          ↓
    Results
          ↓
    Evidence

The AI/ML implementation remains separate from the computational resource.

## Local Inference

Virtual compute may host local or controlled AI inference services.

For example:

    Model
      ↓
    Inference Service
      ↓
    Virtual Compute
      ↓
    Inference
      ↓
    Prediction
      ↓
    Results

The inference implementation and virtual resource remain separate architectural components.

## Simulation and Digital Twins

Virtual compute may support simulation workloads.

For example:

    Digital Twin
          ↓
    Simulation Engine
          ↓
    Virtual Compute
          ↓
    Simulation
          ↓
    Results
          ↓
    Evidence

The simulation engine remains independent of the resource implementation.

## Virtual Devices

Virtual compute may host virtual-device implementations.

For example:

    Virtual Compute
          ↓
    Virtual Device Runtime
          ↓
    Sensor / Actuator Model
          ↓
    Execution
          ↓
    Device State
          ↓
    Results

The virtual compute environment provides execution capacity but does not itself become the virtual device.

## Virtual-First Architecture

Virtual compute is particularly relevant to a virtual-first development model.

A representative lifecycle is:

    Logical Capability
          ↓
    Virtual Asset
          ↓
    Virtual Compute
          ↓
    Simulation / Emulation
          ↓
    Validation
          ↓
    Promotion
          ↓
    Physical Resource where applicable

This supports development and validation before physical resources are introduced.

## Resource Allocation

A virtual compute resource may be allocated or provisioned according to workload requirements.

Conceptually:

    Resource Request
          ↓
    Capability Matching
          ↓
    Availability Check
          ↓
    Allocation / Provisioning
          ↓
    Environment Initialization
          ↓
    Execution
          ↓
    Release / Retention
          ↓
    Resource State Update

Allocation semantics depend on the selected virtual compute environment.

## Resource State

Potential virtual compute resource states include:

- Available.
- Provisioning.
- Ready.
- Reserved.
- Allocated.
- Running.
- Stopped.
- Suspended.
- Degraded.
- Unavailable.
- Maintenance.
- Released.

The exact state model should be defined by the applicable resource-management implementation.

## Resource Utilization

Where available, resource utilization may include:

- CPU utilization.
- Memory utilization.
- Storage utilization.
- Network utilization.
- Accelerator utilization.
- Allocation duration.
- Workload duration.
- Instance or container state.
- Resource capacity.

These measurements may contribute to execution evidence and operational analysis.

## Provisioning

Virtual compute resources may require provisioning before execution.

A representative flow is:

    Logical Resource Requirement
          ↓
    Resource Fabric
          ↓
    Virtual Resource Selection
          ↓
    Provisioning
          ↓
    Environment Initialization
          ↓
    Dependency Installation
          ↓
    Workload Execution
          ↓
    Results

Provisioning should remain separate from logical workload semantics.

## Environment Lifecycle

A virtual compute environment may follow:

    Define
      ↓
    Provision
      ↓
    Configure
      ↓
    Start
      ↓
    Execute
      ↓
    Capture Results
      ↓
    Stop / Retain
      ↓
    Release

The actual lifecycle depends on the hosting environment.

## Configuration

Potential configuration includes:

- Resource ID.
- Environment type.
- Provider or host.
- CPU capacity.
- Memory.
- Storage.
- Network configuration.
- Operating environment.
- Runtime.
- Container configuration.
- Accelerator configuration where applicable.
- Resource allocation profile.
- Execution profile.
- Workload requirements.

Configuration should remain separate from logical resource requirements where practical.

## Execution Environment

Virtual compute may be exposed through different environments.

Potential environments include:

- Virtual machine.
- Container.
- Docker-based runtime.
- Cloud compute instance.
- VPS.
- Hosted development environment.
- PaaS runtime.
- Local virtual environment.
- Remote execution environment.
- Notebook environment.

The actual environment should be explicitly identified.

## Containerized Execution

Containers provide one possible virtual execution model.

A representative relationship is:

    Workflow
       ↓
    Container
       ↓
    Virtual Compute
       ↓
    Runtime
       ↓
    Execution
       ↓
    Results

Container identity, image and runtime configuration should be captured where material to reproducibility.

## Virtual Machine Execution

A virtual machine may provide an isolated computational environment.

For example:

    Resource Fabric
          ↓
    Virtual Machine
          ↓
    Operating Environment
          ↓
    Runtime
          ↓
    Workload
          ↓
    Results

The VM identity should be preserved where it is material to execution traceability.

## Notebook Integration

Virtual compute may host notebook environments.

For example:

    Jupyter Notebook
          ↓
    Experiment
          ↓
    Resource Requirement
          ↓
    Virtual Compute
          ↓
    Execution
          ↓
    Results
          ↓
    Evidence

The notebook remains the development and experiment interface while the Resource Fabric resolves the computational environment.

## IDE Integration

Virtual compute may host development environments such as:

- VS Code.
- Eclipse Theia.
- Eclipse Che.
- Other validated IDE environments.

A representative relationship is:

    IDE Workspace
          ↓
    Source / Notebook
          ↓
    Workflow
          ↓
    Resource Requirement
          ↓
    Resource Fabric
          ↓
    Virtual Compute
          ↓
    Execution

The IDE does not become the resource authority.

## Workflow Integration

Virtual compute resources may be selected for workflow stages.

For example:

    Logical Workflow
          ↓
    Workflow Stage
          ↓
    Resource Requirement
          ↓
    Resource Fabric
          ↓
    Virtual Compute
          ↓
    Execution
          ↓
    Results

The workflow should specify logical requirements where practical rather than hard-code infrastructure identities.

## Visual Workflow Integration

A visual workflow designer may expose virtual compute requirements as workflow properties.

For example:

    [Input]
       ↓
    [Application]
       ↓
    [Virtual Compute]
       ↓
    [Execution]
       ↓
    [Results]

The visual designer represents workflow intent and configuration.

It is not the authoritative resource-resolution layer.

## Resource Views

Virtual compute resources may be represented through Resource Views.

Potential information includes:

- Resource identity.
- Environment type.
- CPU.
- Memory.
- Storage.
- Network.
- Accelerator.
- Availability.
- Allocation.
- Utilization.
- Runtime.
- Provider or host.

Resource Views remain presentation components.

The Resource Fabric remains authoritative for resource resolution.

## Factory Registry Integration

A logical computational resource capability may be resolved to a virtual compute implementation through the Factory Registry.

For example:

    Capability ID
        ↓
    Factory Registry
        ↓
    Virtual Compute Binding
        ↓
    Resource Fabric
        ↓
    Provisioning / Allocation
        ↓
    Execution

The registry should preserve implementation identity and relevant version information where applicable.

## Connector and Adapter Integration

Connectors may provide access to virtual compute environments.

Potential connector targets include:

- Local virtual environments.
- Cloud providers.
- VPS environments.
- Container runtimes.
- Virtual machine platforms.
- PaaS environments.
- Remote execution environments.

Adapters may translate between:

- General Factory resource contracts.
- Resource Fabric contracts.
- Provider-specific compute APIs.
- VM APIs.
- Container runtime interfaces.
- Workload execution contracts.
- Results and evidence contracts.

Provider-specific interfaces should remain behind the appropriate integration boundary.

## Cloud Virtual Compute

Cloud virtual compute resources may be represented as provider-specific resource implementations.

A conceptual relationship is:

    Logical Virtual Compute Requirement
            ↓
       Resource Fabric
            ↓
    Cloud Compute Binding
            ↓
      Cloud Provider
            ↓
    Virtual Compute
            ↓
        Execution

Cloud provider identity should remain explicit.

The General Factory should not make one cloud provider the architectural authority.

## VPS Virtual Compute

A VPS may provide a virtual compute implementation.

For example:

    Workload
       ↓
    Resource Fabric
       ↓
    VPS Virtual Compute
       ↓
    Runtime
       ↓
    Execution
       ↓
    Results

The VPS provider and virtual resource identity should remain distinguishable.

## Local Virtual Compute

Local development environments may provide virtual compute through:

- Virtual environments.
- Containers.
- Local VMs.
- Other validated virtualization mechanisms.

A representative flow is:

    Developer
       ↓
    Local Environment
       ↓
    Virtual Compute
       ↓
    Workload
       ↓
    Results

This may be particularly useful for development and initial reference demonstrations.

## PaaS Integration

The General Factory PaaS may use virtual compute resources as execution foundations.

For example:

    PaaS Workspace
          ↓
    Workflow / Notebook
          ↓
    Resource Requirement
          ↓
    Resource Fabric
          ↓
    Virtual Compute
          ↓
    Execution
          ↓
    Results / Evidence

The PaaS provides the workspace and service boundary while the Resource Fabric resolves the computational resource.

## SaaS Integration

A SaaS service may consume virtual-compute-backed capabilities without exposing the underlying environment to the client.

For example:

    SaaS Client
        ↓
    Application Service
        ↓
    General Factory
        ↓
    Virtual Compute-backed Capability
        ↓
    Resource Fabric
        ↓
    Virtual Compute
        ↓
    Results

The underlying computational environment may remain hidden behind the service boundary.

## IaaS Integration

Virtual compute is closely associated with the IaaS/resource layer.

A representative relationship is:

    IaaS
      ↓
    Virtual Compute
      ↓
    VM / Container / Runtime
      ↓
    Workload

Virtual compute therefore provides a concrete computational-resource implementation beneath PaaS and potentially SaaS consumption models.

## Results

Potential virtual-compute execution results include:

- Execution status.
- Resource identity.
- Environment identity.
- Allocation information.
- Provisioning information.
- Execution duration.
- Resource utilization.
- Runtime information.
- Output artifacts.
- Performance measurements where collected.

Results should remain associated with the workload and resource execution that produced them.

## Evidence

Evidence may include:

- Resource identity.
- Environment type.
- Provider or host.
- Virtual machine or container identity where applicable.
- Runtime identity.
- Resource Fabric resolution.
- Allocation identity.
- Provisioning identity.
- Execution identity.
- Utilization information.
- Execution timing.
- Result artifacts.
- Validation information.

A representative chain is:

    Workload Requirement
          ↓
    Resource Fabric
          ↓
    Virtual Compute
          ↓
    Provisioning / Allocation
          ↓
    Execution Environment
          ↓
    Execution
          ↓
    Results
          ↓
    Evidence

## Provenance

Provenance should be maintained across resource resolution, provisioning and execution.

A representative chain is:

    Workflow
       ↓
    Workload
       ↓
    Resource Requirement
       ↓
    Resource Fabric
       ↓
    Virtual Compute
       ↓
    Environment
       ↓
    Execution
       ↓
    Results
       ↓
    Evidence

This supports reproducibility, resource traceability and operational analysis.

## Reproducibility

Virtual-compute-backed experiments should preserve sufficient environment information to reproduce the intended workload where practical.

Potential information includes:

- Source revision.
- Workload identity.
- Virtual resource identity.
- Provider or host.
- VM or container identity.
- Operating environment.
- Runtime version.
- Container image.
- Dependency versions.
- Configuration.
- Execution profile.
- Resource requirements.
- Parameters.
- Results.

Exact performance reproducibility may vary across hosts, providers and virtual environments.

## Environment Portability

A key purpose of virtual compute is to provide a portable execution abstraction.

A conceptual model is:

    Logical Workload
          ↓
    Virtual Compute Contract
          ↓
      ┌───┼────────┐
      ↓   ↓        ↓
     VM Container Cloud
      ↓   ↓        ↓
      └───┼────────┘
          ↓
       Results

Portability should not imply identical runtime or performance characteristics across environments.

## Performance Considerations

Virtual compute performance may depend on:

- Underlying physical hardware.
- CPU allocation.
- Memory.
- Storage.
- Network.
- Virtualization overhead.
- Container configuration.
- Accelerator access.
- Resource contention.
- Provider configuration.
- Workload characteristics.

Performance observations should therefore retain sufficient environment context.

## Cost and Resource Efficiency

Where supported, virtual compute execution may capture:

- Allocated resources.
- Execution duration.
- Resource utilization.
- Provisioning duration.
- Storage consumption.
- Network consumption.
- Estimated execution cost.

Cost data should only be represented when supported by the actual execution environment.

## Validation

The reference implementation should be validated at multiple levels.

### Resource Discovery Validation

Confirm that the intended virtual compute resource can be discovered.

### Capability Validation

Confirm that the virtual resource satisfies the logical workload requirements.

### Provisioning Validation

Confirm that the environment can be provisioned where provisioning is required.

### Runtime Validation

Confirm that the required runtime and dependencies are available.

### Workload Validation

Confirm that the target workload can execute using the virtual compute resource.

### Result Validation

Confirm that expected workload outputs are produced.

### Resource Validation

Confirm that resource identity and execution association are captured.

### Factory Validation

Confirm that the virtual compute implementation can be resolved through the applicable Factory Registry.

### Evidence Validation

Confirm that resource resolution, provisioning, execution and results remain traceable.

## Initial Demonstration

The first demonstration should establish a small virtual-compute-backed workload:

    Virtual Compute Capability
          ↓
    Factory Registry
          ↓
    Resource Fabric
          ↓
    Virtual Compute
          ↓
    Simple Workload
          ↓
    Execution
          ↓
    Result
          ↓
    Evidence

A simple validated workload should be preferred before introducing larger application or platform workloads.

## Container Demonstration

A possible second demonstration may use a container:

    Workflow
       ↓
    Container Image
       ↓
    Virtual Compute
       ↓
    Runtime
       ↓
    Workload
       ↓
    Results
       ↓
    Evidence

This demonstrates the separation between the workload, virtual execution environment and resource-resolution layers.

## Virtual Development Demonstration

A further demonstration may use a development environment:

    IDE / Notebook
          ↓
    Virtual Workspace
          ↓
    Source
          ↓
    Workflow
          ↓
    Virtual Compute
          ↓
    Execution
          ↓
    Results

This provides a development-to-execution reference path.

## Common Structure

- `configuration/` — virtual compute resource and environment configuration.
- `samples/` — sample virtual resource integration assets.
- `workflows/` — virtual-compute-backed workflow examples and execution definitions.
- `deployment/` — deployment examples and resource profiles.
- `execution/` — virtual execution configuration and runtime examples.
- `results/` — sample execution and resource results.
- `evidence/` — validation, provenance and evidence artifacts.

Actual virtual compute assets should be added only when available and validated.

## Relationship to Other Resource Backends

Virtual Compute is one member of the General Factory resource-backend family.

Potential related resource implementations include:

- CPU resources.
- GPU resources.
- HPC resources.
- TPU resources.
- QPU resources.

A representative resource-resolution model is:

    Logical Resource Requirement
            ↓
       Resource Fabric
            ↓
      ┌─────┼──────┬──────┬──────┐
      ↓     ↓      ↓      ↓      ↓
     CPU   GPU    HPC    TPU    QPU
      ↓     ↓      ↓      ↓      ↓
    Results Results Results Results Results

Virtual Compute may provide the execution environment in which some of these resources or workloads are exposed, but it should remain a distinct resource abstraction.

## Relationship to CPU

CPU resources may be provided inside a virtual compute environment.

For example:

    Virtual Compute
          ↓
       Virtual CPU
          ↓
       Workload
          ↓
       Results

The virtual environment and CPU resource remain separate implementation concerns.

## Relationship to GPU

GPU resources may be exposed through a virtual compute environment where the underlying platform supports accelerator access.

For example:

    Virtual Compute
          ↓
    GPU Capability
          ↓
    Workload
          ↓
    Execution

The GPU resource remains distinct from the virtual compute environment.

## Relationship to HPC

Virtual compute may provide access to HPC-related execution environments where supported.

The distinction remains:

    Virtual Environment
          ↓
    HPC Environment
          ↓
    Scheduler
          ↓
    Workload

The actual resource and execution environment should remain explicit.

## Relationship to TPU

A virtual or managed compute environment may provide access to TPU-backed workloads where supported.

For example:

    Virtual / Managed Environment
          ↓
    TPU Resource
          ↓
    Workload
          ↓
    Execution

The TPU and virtual environment identities should remain distinguishable.

## Relationship to QPU

Virtual compute may support classical stages around a physical QPU workflow.

For example:

    Virtual Compute
          ↓
    Classical Processing
          ↓
    QPU Backend
          ↓
    Physical QPU
          ↓
    Results

Virtual compute is not a physical quantum resource.

## Relationship to Simulation

Virtual compute may host simulation workloads.

For example:

    Simulation Model
          ↓
    Simulation Engine
          ↓
    Virtual Compute
          ↓
    Execution
          ↓
    Results
          ↓
    Evidence

The simulation implementation remains independent of the virtual resource.

## Relationship to Emulation

Virtual compute may host emulation workloads.

For example:

    Virtual Compute
          ↓
    Emulator
          ↓
    Virtual / Device-like Execution
          ↓
    Results

The emulator and virtual compute resource remain separate architectural components.

## Relationship to Virtual Devices

Virtual compute may provide runtime capacity for virtual-device implementations.

For example:

    Virtual Device
          ↓
    Virtual Device Runtime
          ↓
    Virtual Compute
          ↓
    Execution
          ↓
    Device State

The virtual device remains the logical device implementation while virtual compute provides execution capacity.

## Relationship to AI/ML Reference Implementations

Virtual compute may provide execution resources for AI/ML reference implementations.

For example:

    AI/ML Capability
          ↓
    Workflow
          ↓
    Resource Requirement
          ↓
    Resource Fabric
          ↓
    Virtual Compute
          ↓
    Execution
          ↓
    Results

The AI/ML implementation remains independent of the virtual resource.

## Relationship to QAI Platform

Virtual compute may provide one of the execution foundations for the QAI Platform.

For example:

    QAI Platform
          ↓
    Workspace
          ↓
    Workflow / Notebook
          ↓
    Resource Fabric
          ↓
    Virtual Compute
          ↓
    Execution
          ↓
    Results / Evidence

The platform provides the engineering environment while the Resource Fabric resolves the execution resource.

## Relationship to Micro-Frontends

Virtual compute resources may be presented through:

- Resource Views.
- Workflow Views.
- Client Views.
- Operations Views.
- Results Views.
- Evidence Views.

Presentation does not become resource-resolution authority.

## Relationship to Workflow Views

Workflow Views may represent virtual compute requirements and execution stages visually.

For example:

    [Input]
       ↓
    [Application]
       ↓
    [Virtual Compute]
       ↓
    [Execution]
       ↓
    [Results]

The visual workflow remains a presentation of the logical workflow.

## Security Considerations

Relevant considerations include:

- Resource access control.
- Workload authorization.
- Tenant isolation.
- VM isolation.
- Container isolation.
- Network isolation.
- Secret management.
- Runtime security.
- Provider access control.
- Execution authorization.
- Resource allocation authorization.
- Audit logging.
- Result access control.

Virtual compute resources should not bypass applicable General Factory security and governance controls.

## IP and Provenance Considerations

Virtualization technologies, cloud platforms, container runtimes and hosting environments are external technologies unless explicitly developed and owned within the applicable environment.

The General Factory reference implementation should preserve the identity and provenance of the underlying resource technology.

Original QAI-specific:

- Resource contracts.
- Resource capability mappings.
- Factory mappings.
- Adapters.
- Resource-selection patterns.
- Environment profiles.
- Validation assets.
- Evidence structures.

should remain distinguishable from the underlying virtualization, hosting and runtime technologies.

## Scope

### In Scope

- Virtual compute resource integration.
- Virtual resource capability representation.
- Resource Fabric integration.
- Virtual resource allocation.
- Virtual environment provisioning.
- VM-based execution.
- Container-based execution.
- Cloud virtual compute.
- VPS virtual compute.
- Local virtual compute.
- Hosted development environments.
- AI/ML workloads.
- Local inference.
- Simulation.
- Digital-twin workloads.
- Quantum simulation.
- Quantum emulation.
- Virtual-device execution.
- Hybrid workloads.
- Notebook integration.
- IDE integration.
- Workflow integration.
- PaaS integration.
- IaaS integration.
- SaaS-backed resource consumption.
- Results.
- Evidence.
- Provenance.
- Reproducibility.
- Factory Registry integration.
- Connector and adapter integration.

### Out of Scope

The initial reference implementation does not attempt to provide:

- A replacement for the General Framework.
- A replacement for the General Factory.
- A complete virtualization management platform.
- A universal VM manager.
- A universal container orchestrator.
- A replacement for cloud provider compute services.
- A replacement for container runtimes.
- Automatic resource allocation without applicable policies.
- A guarantee of identical performance across virtual environments.
- A replacement for the Resource Fabric.
- A physical QPU.
- A claim that virtual compute provides quantum execution.
- A claim that virtualized resources are equivalent to specific physical resources in all respects.

These capabilities remain represented by the appropriate framework, factory, resource and runtime components.

## Principles

1. Keep the Framework technology-neutral.
2. Do not duplicate existing repositories unnecessarily.
3. Preserve implementation identity.
4. Preserve provenance.
5. Use connectors for access and invocation.
6. Use adapters where contract translation is required.
7. Resolve resources through the Resource Fabric.
8. Capture meaningful results and evidence.
9. Keep simulation, emulation and physical execution distinct.
10. Promote validated samples incrementally.
11. Keep virtual-compute-specific semantics within the resource implementation boundary.
12. Keep logical resource requirements independent of a specific virtualization technology or provider.
13. Preserve virtual resource identity across provisioning and execution.
14. Record the actual execution environment used.
15. Preserve runtime and dependency information where material to reproducibility.
16. Do not assume that every workload benefits from virtualization.
17. Keep virtual compute distinct from CPU, GPU, HPC, TPU and QPU resource identities.
18. Keep resource presentation separate from resource resolution.
19. Preserve workload-to-resource and environment provenance.
20. Do not assume identical performance across virtualized environments.
21. Promote validated virtual-compute patterns into reusable Factory capabilities only after sufficient validation.

## Promotion Path

The Virtual Compute reference implementation may progress through:

    Virtual Compute Environment
        ↓
    Resource Discovery
        ↓
    Capability Validation
        ↓
    Simple Workload
        ↓
    Provisioning / Allocation
        ↓
    Resource Fabric Integration
        ↓
    Factory Registry Integration
        ↓
    Workflow Integration
        ↓
    Results / Evidence Integration
        ↓
    Reusable Virtual Compute Reference
        ↓
    General Factory Resource Capability Binding

Promotion should be based on demonstrated resource discovery, provisioning, execution, validation, provenance and architectural fit.

## Future Extensions

Potential extensions include:

- Virtual compute resource discovery.
- Virtual resource capability profiles.
- VM profiles.
- Container profiles.
- Cloud compute profiles.
- VPS profiles.
- Local development profiles.
- Resource allocation profiles.
- Environment provisioning.
- Environment lifecycle management.
- Container runtime integration.
- VM runtime integration.
- Kubernetes integration where applicable.
- Cloud compute integration.
- GPU-backed virtual compute.
- TPU-backed managed environments.
- HPC-connected virtual environments.
- Notebook-to-virtual-compute execution.
- IDE-to-virtual-compute execution.
- GitHub execution integration.
- GitLab execution integration.
- GitLab Runner integration.
- Resource utilization tracking.
- Performance benchmarking.
- Cost-aware resource selection.
- Energy-aware resource analysis.
- Resource health monitoring.
- Resource reservation.
- PaaS virtual workspace integration.
- Automated resource evidence packaging.

These capabilities should be introduced incrementally as validated reference implementations.

## Status

Reference structure established.

Virtual Compute is positioned as a concrete virtual computational-resource implementation within the General Factory resource-backend family.

Actual virtual compute configurations, environment profiles, workload samples, deployment assets, execution results and evidence should be added only when available and validated.

---

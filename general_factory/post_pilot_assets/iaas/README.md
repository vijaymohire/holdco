# General Factory Post-Pilot IaaS

## Purpose

The General Factory post-pilot IaaS provides the logical resource and backend
access layer required by PaaS projects and other Factory-controlled workloads.

IaaS represents resources through capability and resource abstractions rather
than binding projects directly to infrastructure providers.

## Resource Examples

Resources may include:

- CPU
- GPU
- HPC
- storage
- network
- high-speed interconnects
- quantum simulators
- quantum emulators
- external QPU resources
- AI / GenAI models
- partner services
- local or remote infrastructure

## Resource Resolution

Logical Resource Requirement
    ->
Resource Fabric
    ->
Available Resource
    ->
Implementation Binding
    ->
Execution

PaaS should request logical resource capabilities.

The Factory resolves those requirements to available resources.

## Architectural Boundary

IaaS is a resource and backend access layer.

It does not define the logical architecture of the platform.

General Framework defines the resource requirements and contracts.

General Factory implements resource resolution and backend integration.

## Development Principle

IaaS implementation should initially be derived from actual PaaS requirements.

The platform should avoid building a large infrastructure layer before concrete
resource requirements are established.

## Current Status

Initial post-pilot structure established.

Detailed implementation will be developed incrementally.
---
# General Factory Post-Pilot IaaS

## Overview

The **General Factory post-pilot IaaS** provides the logical infrastructure-resource and backend-access layer required by PaaS projects and other Factory-controlled workloads.

IaaS provides controlled access to infrastructure and external execution capabilities through resource and backend abstractions rather than requiring projects to bind directly to individual infrastructure providers.

The intended architecture is:

    PaaS / Factory-Controlled Workload
                │
                ▼
        Logical Resource Requirement
                │
                ▼
          Resource Management
                │
                ▼
            Resource Fabric
                │
                ▼
        IaaS Resource / Backend Layer
                │
                ├── CPU
                ├── GPU
                ├── HPC
                ├── Storage
                ├── Network
                ├── High-Speed Interconnect
                ├── Quantum Simulator
                ├── Quantum Emulator
                ├── External QPU
                ├── AI / GenAI Model
                ├── Partner Service
                └── Local / Remote Infrastructure
                │
                ▼
        Factory Implementation Binding
                │
                ▼
             Execution

IaaS is therefore an **infrastructure access and resource realization layer**, not the logical architectural authority of the platform.

---

# Purpose

The post-pilot IaaS layer provides a controlled foundation through which the General Factory can access and integrate infrastructure resources and backend capabilities.

Its purposes are to:

- expose infrastructure capabilities through logical resource abstractions;
- connect PaaS workspaces to required resources;
- integrate local and remote infrastructure;
- integrate classical compute resources;
- integrate specialized compute resources;
- integrate storage and networking;
- integrate AI/GenAI backends;
- integrate quantum simulation and emulation;
- provide an external QPU integration boundary;
- integrate partner services;
- isolate provider-specific implementation details;
- support resource lifecycle operations;
- support resource availability and status;
- support Factory-controlled execution.

The implementation should initially be driven by concrete post-pilot PaaS requirements rather than by an attempt to build a complete infrastructure platform in advance.

---

# Architectural Boundary

IaaS is positioned below the Resource Fabric and above concrete infrastructure/provider implementations.

The distinction is:

    General Framework
          │
          │ Defines logical requirements and contracts
          ▼
    General Factory
          │
          │ Resolves logical capabilities
          ▼
    Resource Fabric
          │
          │ Authoritative resource resolution
          ▼
    IaaS
          │
          │ Infrastructure / backend access
          ▼
    Concrete Resources / Providers
          │
          ▼
    Execution

The layers have different responsibilities.

| Layer | Responsibility |
|---|---|
| General Framework | Defines logical architecture, capabilities and resource requirements |
| General Factory | Resolves logical requirements to implementations |
| Resource Fabric | Provides authoritative resource resolution |
| IaaS | Provides infrastructure/resource/backend access |
| Infrastructure Provider | Supplies concrete infrastructure |
| Runtime | Executes workloads |

---

# IaaS Is Not the Resource Fabric

The distinction between IaaS and Resource Fabric is fundamental.

### Resource Fabric

The Resource Fabric is the authoritative layer for:

- resource discovery;
- logical resource resolution;
- resource capability matching;
- resource policy;
- resource binding;
- resource availability;
- resource selection.

### IaaS

IaaS provides access to the resulting infrastructure capabilities.

It may provide:

- compute;
- storage;
- networking;
- infrastructure APIs;
- backend connections;
- provider-specific integrations.

Therefore:

> **Resource Fabric decides which logical resource requirement can be satisfied by an available resource. IaaS provides access to the infrastructure/resource capability used to satisfy that requirement.**

---

# IaaS Is Not the General Framework

The General Framework defines logical requirements and contracts.

For example, the Framework may express a requirement such as:

    Required Capability:
        GPU-enabled compute

The IaaS layer does not redefine that requirement.

Instead:

    Framework Requirement
          │
          ▼
    Resource Fabric
          │
          ▼
    Available GPU Resource
          │
          ▼
    IaaS Integration
          │
          ▼
    Concrete GPU Environment

This keeps logical requirements independent from infrastructure providers.

---

# IaaS Is Not the General Factory

The General Factory provides implementation resolution and integration orchestration.

IaaS provides infrastructure/backend implementations that the Factory can bind to.

A conceptual relationship is:

    Logical Requirement
          │
          ▼
    General Factory
          │
          ▼
    Resource Fabric
          │
          ▼
    IaaS
          │
          ▼
    Provider / Backend
          │
          ▼
    Runtime

IaaS should therefore avoid becoming a second Factory.

---

# Resource Abstraction

IaaS should expose resources through capability-oriented abstractions.

A conceptual resource representation may include:

    Resource
    ├── Resource ID
    ├── Resource Type
    ├── Capabilities
    ├── Availability
    ├── Location / Endpoint
    ├── Capacity
    ├── Constraints
    ├── Provider
    ├── Runtime Interface
    └── Lifecycle State

The exact schema remains an implementation decision.

---

# Resource Classes

The initial post-pilot resource model may include:

- CPU;
- GPU;
- HPC;
- storage;
- network;
- high-speed interconnects;
- quantum simulators;
- quantum emulators;
- external QPU resources;
- AI / GenAI models;
- partner services;
- local infrastructure;
- remote infrastructure.

The list should remain extensible.

---

# CPU Resources

CPU resources provide general-purpose classical compute.

Potential uses include:

- application services;
- workflow execution;
- notebooks;
- data processing;
- simulation;
- classical optimization;
- AI/ML preprocessing;
- hybrid quantum-classical execution.

CPU resources may be:

- local;
- virtualized;
- VPS-based;
- cloud-based;
- private infrastructure;
- dedicated infrastructure.

The IaaS abstraction should avoid depending on a specific CPU vendor or infrastructure provider.

---

# GPU Resources

GPU resources may support:

- AI/ML;
- GenAI;
- local inference;
- model execution;
- accelerated simulation;
- selected hybrid workloads.

A logical requirement may be:

    GPU
    ├── Minimum Memory
    ├── Compute Capability
    ├── Runtime Requirements
    └── Availability

The Resource Fabric can resolve this requirement to an available GPU resource.

IaaS then provides the integration/access mechanism.

---

# HPC Resources

HPC resources may support:

- large-scale simulation;
- scientific workloads;
- optimization;
- parallel computation;
- high-performance classical processing.

An HPC resource may be represented logically without exposing the internal cluster architecture to the PaaS.

The IaaS integration may connect to:

- local HPC;
- institutional HPC;
- private HPC;
- cloud HPC;
- remote HPC.

---

# Storage

IaaS may provide access to:

- persistent storage;
- temporary storage;
- project storage;
- workspace storage;
- shared storage;
- object storage;
- block storage;
- file storage.

Storage requirements should be expressed logically where practical.

For example:

    Required Storage
        ├── Capacity
        ├── Performance
        ├── Persistence
        ├── Availability
        └── Access Mode

The concrete storage implementation is resolved through the appropriate platform layers.

---

# Network Resources

IaaS may provide network capabilities required by:

- workspaces;
- services;
- runtimes;
- source repositories;
- storage;
- external backends;
- partner services.

Network capabilities may include:

- connectivity;
- routing;
- private networking;
- controlled external access;
- endpoint exposure;
- service connectivity.

Network implementation remains deployment-profile dependent.

---

# High-Speed Interconnects

Certain workloads may require high-speed interconnect capabilities.

Potential use cases include:

- HPC;
- distributed computation;
- large-scale data movement;
- accelerator clusters;
- specialized research workloads.

The IaaS abstraction should represent the required capability rather than assuming a specific interconnect technology.

---

# Quantum Simulators

Quantum simulators may be exposed as computational resources available to PaaS workloads.

Potential implementations include:

- local simulators;
- containerized simulators;
- remote simulators;
- cloud-hosted simulators;
- simulator services.

The IaaS layer provides access to the underlying execution capability.

It should not represent a simulator as a physical QPU.

---

# Quantum Emulators

Quantum emulators may provide a controlled approximation or emulation environment for quantum workloads.

They may be used for:

- development;
- testing;
- integration;
- workflow validation;
- virtual-first execution.

The platform should explicitly preserve the distinction between:

- simulation;
- emulation;
- physical QPU execution.

---

# External QPU Resources

An external QPU may be integrated as an infrastructure/backend resource.

The architecture should represent the QPU as an external execution boundary.

A conceptual flow is:

    PaaS Workload
         │
         ▼
    Quantum Requirement
         │
         ▼
    Resource Fabric
         │
         ▼
    QPU Resource
         │
         ▼
    External QPU Integration
         │
         ▼
    Quantum Execution
         │
         ▼
    Results

The existence of a QPU integration definition does not imply that a physical QPU is currently available.

---

# AI / GenAI Models

The IaaS resource catalog may include AI/GenAI models as accessible backend resources where the platform requires model access as a backend capability.

Potential resources include:

- local models;
- hosted models;
- private model services;
- partner model services;
- enterprise model endpoints.

The abstraction should distinguish between:

- model capability;
- model service;
- compute resource;
- provider endpoint.

A model endpoint is not necessarily an infrastructure compute resource, but it may be treated as a backend resource within the Factory-controlled resource model.

---

# Partner Services

Partner services may be integrated through controlled backend interfaces.

Potential examples include:

- external AI services;
- data services;
- specialized computational services;
- industry services;
- external APIs;
- managed execution services.

Partner services should be treated as external dependencies with explicit:

- endpoint;
- capability;
- authentication;
- availability;
- quota;
- policy;
- provenance.

---

# Local Infrastructure

Local infrastructure may include:

- developer workstation;
- local server;
- local GPU;
- local HPC;
- local storage;
- local simulator;
- local network;
- laboratory equipment.

Local infrastructure is important for development and virtual-first execution.

The IaaS layer should allow local resources to participate in the same logical resource model where practical.

---

# Remote Infrastructure

Remote resources may include:

- cloud compute;
- VPS;
- remote GPU;
- remote HPC;
- external quantum resources;
- partner services;
- private infrastructure.

Remote infrastructure should be accessed through controlled connectors/adapters.

---

# Resource Resolution

The core flow remains:

    Logical Resource Requirement
              │
              ▼
          Resource Fabric
              │
              ▼
        Available Resource
              │
              ▼
       Implementation Binding
              │
              ▼
             IaaS
              │
              ▼
           Execution

For example:

    Requirement:
        GPU-enabled execution

              │
              ▼

    Resource Fabric:
        Identify compatible GPU

              │
              ▼

    Resource:
        Available GPU Backend

              │
              ▼

    IaaS:
        Establish runtime/resource access

              │
              ▼

    Execution:
        Run workload

---

# Capability Matching

Resource matching may consider:

- resource type;
- capacity;
- availability;
- runtime compatibility;
- software requirements;
- performance requirements;
- location;
- network constraints;
- tenant policy;
- project requirements;
- workspace requirements;
- cost constraints where applicable.

The actual matching authority remains the Resource Fabric.

---

# Resource Lifecycle

IaaS integrations may expose lifecycle operations such as:

- discover;
- provision;
- configure;
- start;
- stop;
- restart;
- suspend;
- resume;
- release;
- decommission.

Not every resource type supports every lifecycle operation.

For example, an external managed service may only support:

    Discover
       │
       ▼
    Connect
       │
       ▼
    Use
       │
       ▼
    Disconnect

The lifecycle model should therefore be capability-aware.

---

# Resource State

A conceptual resource state model may include:

    Discovered
       │
       ▼
    Available
       │
       ├── Allocated
       │      │
       │      ▼
       │   In Use
       │
       └── Unavailable
              │
              ▼
           Recovery

Additional states may include:

- Provisioning;
- Starting;
- Stopping;
- Suspended;
- Failed;
- Retired.

---

# Provisioning

Where infrastructure supports provisioning, IaaS may expose a provisioning interface.

Example:

    Resource Requirement
          │
          ▼
    Resource Fabric
          │
          ▼
    IaaS Provisioning
          │
          ▼
    Infrastructure
          │
          ▼
    Resource Ready

Provisioning should remain controlled by deployment, policy and resource-management mechanisms.

---

# IaaS and Workspace Manager

The Workspace Manager may request infrastructure resources for a workspace.

Example:

    Workspace
       │
       ▼
    Resource Requirements
       │
       ▼
    Resource Fabric
       │
       ▼
    IaaS
       │
       ├── CPU
       ├── GPU
       ├── Storage
       ├── Network
       └── Specialized Backend
       │
       ▼
    Workspace Runtime

This allows the Workspace Manager to remain independent of specific infrastructure providers.

---

# IaaS and PaaS

PaaS is the primary post-pilot consumer of IaaS capabilities.

PaaS should request logical resource capabilities.

For example:

    PaaS:
        "I need GPU-enabled compute"

rather than:

    PaaS:
        "Create provider-specific GPU instance using provider-specific API"

The first request is architecture-aligned.

The Factory and Resource Fabric determine how the requirement is satisfied.

---

# IaaS and SaaS

SaaS may indirectly consume IaaS capabilities through PaaS/services/factory execution.

SaaS should generally not need direct awareness of infrastructure providers.

For example:

    SaaS Application
          │
          ▼
       Services
          │
          ▼
      General Factory
          │
          ▼
     Resource Fabric
          │
          ▼
          IaaS
          │
          ▼
       Backend

This allows infrastructure to change without requiring the SaaS product model to change.

---

# IaaS and Web Platform

The Web Platform may expose resource views and resource management operations.

The relationship is:

    Web Platform
         │
         ▼
    Resource Management Service
         │
         ▼
    Resource Fabric
         │
         ▼
    IaaS
         │
         ▼
    Infrastructure

The Web Platform should not directly call infrastructure-provider APIs for normal platform operations.

---

# IaaS and General Factory

The General Factory may use IaaS connectors and adapters.

Example:

    Factory Registry
         │
         ▼
    Resource Binding
         │
         ▼
    IaaS Adapter
         │
         ▼
    Provider / Backend
         │
         ▼
    Resource

This allows multiple infrastructure implementations to satisfy the same logical capability.

---

# Connector and Adapter Boundary

Provider-specific integration should be isolated behind connectors/adapters.

A conceptual pattern is:

    Logical Resource
          │
          ▼
    Factory Binding
          │
          ▼
    IaaS Adapter
          │
          ▼
    Provider Connector
          │
          ▼
    Infrastructure API

This prevents provider-specific assumptions from leaking into higher-level platform logic.

---

# Provider Independence

The platform should avoid binding logical project requirements directly to infrastructure providers.

For example:

    Logical:
        GPU Compute

may resolve to:

    Local GPU
    Cloud GPU
    Private GPU
    Dedicated GPU
    Remote GPU

The choice depends on:

- availability;
- capability;
- policy;
- environment;
- deployment profile;
- resource requirements.

---

# Deployment Profiles

IaaS implementations may support different deployment profiles.

Potential profiles include:

- local;
- VPS;
- public cloud;
- private cloud;
- dedicated infrastructure;
- bare metal;
- hybrid;
- enterprise;
- restricted/air-gapped.

The logical resource model should remain consistent where practical.

---

# Cloud IaaS

Cloud implementations may expose:

- compute;
- storage;
- networking;
- GPU;
- managed services;
- container execution;
- specialized resources.

Cloud-specific APIs should be isolated behind adapters.

The architecture should not assume that all cloud providers expose identical capabilities.

---

# VPS IaaS

A VPS profile may provide:

- CPU;
- storage;
- networking;
- container runtime;
- application runtime.

GPU or specialized resources may be available depending on the specific environment.

The IaaS abstraction should expose only the capabilities actually available.

---

# Private Cloud IaaS

Private cloud may provide:

- controlled compute;
- GPU;
- HPC;
- storage;
- network;
- internal services.

Private cloud is particularly relevant where:

- data sovereignty;
- security;
- enterprise policy;
- restricted connectivity;

are important.

---

# Bare Metal IaaS

Bare metal may provide direct access to:

- CPU;
- GPU;
- HPC;
- specialized hardware;
- storage;
- high-speed networking.

Bare-metal deployment should still be represented through the logical resource model rather than exposed directly to higher-level application logic.

---

# Hybrid IaaS

Hybrid environments may combine:

    Local
      +
    Private
      +
    Public Cloud
      +
    External Services
      +
    External QPU

The Resource Fabric should resolve logical requirements across the available resource domain.

IaaS provides the respective integration boundaries.

---

# Air-Gapped and Restricted Environments

IaaS may operate in restricted environments where:

- Internet access is unavailable;
- external package repositories are unavailable;
- external APIs are restricted;
- source repositories are private;
- compute is locally provisioned.

Such environments may require:

- local package mirrors;
- local source control;
- local container registries;
- local model repositories;
- local simulators;
- controlled network gateways.

The architecture should support restricted deployments without assuming external connectivity.

---

# Storage Lifecycle

Storage resources may require lifecycle operations such as:

- provision;
- attach;
- mount;
- resize;
- snapshot;
- backup;
- detach;
- archive;
- delete.

The exact capabilities depend on the storage implementation.

---

# Network Lifecycle

Network integration may include:

- network creation;
- endpoint configuration;
- routing;
- access policies;
- service connectivity;
- teardown.

Not every deployment profile will require the IaaS layer to manage the entire network lifecycle.

---

# Resource Quotas

Resource usage may be constrained by:

- tenant quotas;
- project quotas;
- workspace quotas;
- infrastructure limits;
- provider quotas;
- service quotas.

A conceptual flow is:

    Tenant / Project Policy
          │
          ▼
    Resource Requirement
          │
          ▼
    Resource Fabric
          │
          ▼
    IaaS / Provider Limits
          │
          ▼
    Allocation Decision

IaaS should expose relevant provider constraints to the higher-level resource-resolution process.

---

# Cost and Usage

Where supported, IaaS may expose resource usage information such as:

- compute usage;
- storage usage;
- execution time;
- accelerator usage;
- network usage;
- provider consumption.

Cost information may be useful for resource decisions, but it should remain separated from the core logical resource model unless cost is an explicit selection constraint.

---

# Availability

IaaS resources should expose appropriate availability information.

Potential states include:

- available;
- unavailable;
- degraded;
- provisioning;
- allocated;
- busy;
- maintenance;
- retired.

The Resource Fabric can use availability information when resolving requirements.

---

# Health and Readiness

IaaS integrations should provide appropriate health information.

For example:

    IaaS Adapter
        │
        ├── Connectivity
        ├── Authentication
        ├── Provider Status
        ├── Resource Status
        └── Runtime Status

Health should be distinguished from resource availability.

A provider API may be reachable while a particular resource is unavailable.

---

# Execution Boundary

IaaS ultimately provides an execution boundary.

A representative flow is:

    Workload
       │
       ▼
    Logical Requirement
       │
       ▼
    Resource Fabric
       │
       ▼
    IaaS
       │
       ▼
    Resource Backend
       │
       ▼
    Runtime
       │
       ▼
    Execution
       │
       ▼
    Results
       │
       ▼
    Evidence

Execution results should retain sufficient resource and backend provenance.

---

# Provenance

Resource execution should retain relevant provenance.

Potential information includes:

- resource identifier;
- resource type;
- provider;
- backend;
- runtime version;
- environment;
- allocation time;
- execution time;
- workspace;
- project;
- tenant;
- workload;
- configuration.

This supports reproducibility and evidence.

---

# Security

IaaS integrations are security-sensitive.

Important controls include:

- credential protection;
- provider authentication;
- least privilege;
- network restrictions;
- tenant isolation;
- project isolation;
- workspace isolation;
- secure endpoint handling;
- secret management;
- audit logging;
- resource access policies.

Provider credentials should not be exposed to normal PaaS client applications.

---

# Secret Management

IaaS integrations may require secrets such as:

- API credentials;
- access tokens;
- SSH keys;
- service identities;
- certificates.

Secrets should be referenced through secure secret-management mechanisms.

The generated or stored IaaS configuration should contain references rather than plaintext credentials wherever possible.

---

# Tenant Isolation

IaaS resources may be:

- shared;
- logically isolated;
- project-specific;
- tenant-specific;
- dedicated.

The appropriate isolation model depends on deployment requirements.

The Tenant Manager and Authorization layer establish logical access boundaries.

The Resource Fabric and IaaS implementation enforce the corresponding resource access.

---

# Project Isolation

Project resource requests should retain project context.

For example:

    Tenant
      │
      ▼
    Project
      │
      ▼
    Workspace
      │
      ▼
    Resource Requirement
      │
      ▼
    Resource Fabric
      │
      ▼
    IaaS Resource

This allows resource usage to remain attributable to the correct project.

---

# Observability

IaaS should provide appropriate:

- logs;
- metrics;
- traces;
- resource status;
- provider status;
- allocation status;
- provisioning status;
- execution status;
- failure information.

Correlation identifiers should connect infrastructure activity to the higher-level:

- tenant;
- project;
- workspace;
- workflow;
- experiment;
- execution.

---

# IaaS Events

Potential events include:

- resource.discovered;
- resource.available;
- resource.unavailable;
- resource.provisioning;
- resource.provisioned;
- resource.allocated;
- resource.released;
- resource.failed;
- resource.retired.

The exact event model is implementation-dependent.

---

# API Boundary

The IaaS layer may expose controlled resource/backend APIs.

Potential logical operations include:

    Discover Resource
    Get Resource
    Check Availability
    Provision Resource
    Allocate Resource
    Connect Resource
    Release Resource
    Decommission Resource

The exact API should depend on resource class.

A simulator, external QPU, GPU VM and storage volume do not necessarily share identical lifecycle operations.

---

# Local Development

The initial implementation should support lightweight local development where practical.

Example:

    Local PaaS
       │
       ▼
    Resource Fabric
       │
       ▼
    Local IaaS
       │
       ├── Local CPU
       ├── Local GPU
       ├── Local Storage
       ├── Local Network
       └── Local Simulator
       │
       ▼
    Execution

This allows resource integration to be developed before larger infrastructure environments are introduced.

---

# Post-Pilot Development Principle

The initial IaaS implementation should be driven by **actual PaaS requirements**.

The intended development sequence is:

    PaaS Requirement
          │
          ▼
    Identify Resource Need
          │
          ▼
    Define Logical Capability
          │
          ▼
    Identify Available Resource
          │
          ▼
    Implement IaaS Integration
          │
          ▼
    Validate Through PaaS
          │
          ▼
    Generalize for Reuse

This avoids building a large infrastructure abstraction without evidence of actual platform requirements.

---

# Minimal Initial IaaS Scope

A practical initial implementation may begin with a small resource set required by the first PaaS demonstrator.

Potential initial resources include:

- CPU;
- local or virtual compute;
- storage;
- network;
- selected GPU if actually required;
- selected simulation backend;
- selected quantum simulator/emulator;
- source-control connectivity.

Additional resource types can be introduced when concrete requirements justify them.

---

# Progressive Expansion

The IaaS layer can evolve incrementally.

A conceptual progression is:

    Stage 1
      ├── Local CPU
      ├── Storage
      └── Network

    Stage 2
      ├── GPU
      ├── HPC
      └── Remote Compute

    Stage 3
      ├── Quantum Simulation
      ├── Quantum Emulation
      └── Specialized Backends

    Stage 4
      ├── External QPU
      ├── Partner Services
      └── Multi-provider Integration

The actual sequence should follow demonstrated PaaS requirements.

---

# Relationship to the Pilot

The Agriculture Digital Farm pilot provides evidence of workload characteristics that may eventually require:

- CPU;
- GPU;
- simulation;
- virtual assets;
- storage;
- networking;
- workflow execution;
- AI/ML;
- quantum-related experimentation.

The pilot should be treated as a source of **resource requirements and evidence**, not as a reason to pre-build every possible infrastructure integration.

The post-pilot process should extract reusable requirements from the pilot and validate them through the PaaS.

---

# Relationship to Virtual-First

Virtual-first execution is especially relevant to initial IaaS development.

Before physical infrastructure is required, workloads may execute using:

- local compute;
- virtual compute;
- simulators;
- emulators;
- software backends.

This allows the platform to validate:

    Logical Requirement
          │
          ▼
    Resource Resolution
          │
          ▼
    Backend Access
          │
          ▼
    Execution
          │
          ▼
    Evidence

before introducing more complex infrastructure dependencies.

---

# Relationship to Quantum Execution

The IaaS layer should maintain clear distinctions between:

### Quantum Simulation

Software-based representation of quantum computation.

### Quantum Emulation

An implementation intended to reproduce selected characteristics/interfaces of a target quantum environment.

### External QPU

Physical quantum computing hardware accessed through an integration boundary.

These execution modes should not be represented as equivalent resources.

---

# Relationship to AI/ML

AI/ML workloads may use:

- CPU;
- GPU;
- HPC;
- TPU where supported;
- local models;
- remote model services;
- partner model services.

The appropriate resource should be selected according to the logical workload requirements.

The IaaS layer should not assume that all AI/ML workloads require accelerators.

---

# Relationship to Workspace Manager

The Workspace Manager defines the technical environment requirements for a project workspace.

The IaaS layer provides the infrastructure capabilities required to realize those requirements.

Example:

    Workspace Profile
          │
          ├── CPU
          ├── GPU
          ├── Storage
          ├── Network
          └── Runtime
                │
                ▼
            Resource Fabric
                │
                ▼
               IaaS
                │
                ▼
          Concrete Resources

---

# Relationship to Generated Deployments

Generated deployments may contain resource requirements and deployment-profile references.

For example:

    Generated Deployment
          │
          ▼
    Resource Requirements
          │
          ▼
    Resource Fabric
          │
          ▼
    IaaS Binding
          │
          ▼
    Concrete Resource

Generated deployment output should reference logical requirements or approved bindings rather than embedding provider-specific infrastructure assumptions unnecessarily.

---

# Suggested Directory Structure

A future IaaS implementation may be organized as:

    iaas/
    ├── README.md
    ├── resource_models/
    ├── resource_profiles/
    ├── providers/
    │   ├── local/
    │   ├── vps/
    │   ├── cloud/
    │   ├── private_cloud/
    │   └── bare_metal/
    ├── compute/
    │   ├── cpu/
    │   ├── gpu/
    │   └── hpc/
    ├── storage/
    ├── network/
    ├── quantum/
    │   ├── simulators/
    │   ├── emulators/
    │   └── qpu/
    ├── ai_ml/
    ├── partner_services/
    ├── connectors/
    ├── adapters/
    ├── lifecycle/
    ├── health/
    ├── observability/
    ├── security/
    ├── tests/
    └── examples/

The exact structure should evolve according to demonstrated PaaS requirements.

---

# Reference Implementation Relationships

The IaaS layer may integrate with General Factory reference implementations under:

- `reference_implementations/resource_backends/`
- `reference_implementations/cloud/`
- `reference_implementations/emulation/`
- `reference_implementations/simulation/`
- `reference_implementations/quantum/`
- `reference_implementations/ai_ml/`
- `reference_implementations/qai_platform/`
- `reference_implementations/virtual_first/`

These reference implementations provide concrete implementation candidates.

They do not replace the IaaS logical boundary or Resource Fabric authority.

---

# Non-Goals

The post-pilot IaaS layer does not aim to:

- define the General Framework;
- replace the General Factory;
- replace the Resource Fabric;
- become a universal cloud-management platform;
- support every infrastructure provider initially;
- pre-build every possible resource integration;
- guarantee physical QPU availability;
- expose provider-specific APIs directly to PaaS clients;
- become the authoritative resource inventory;
- define application/business logic;
- define SaaS product behavior.

---

# Scope

The post-pilot IaaS layer covers:

- infrastructure resource access;
- backend access;
- resource capability representation;
- local infrastructure;
- remote infrastructure;
- CPU;
- GPU;
- HPC;
- storage;
- network;
- high-speed interconnects;
- quantum simulators;
- quantum emulators;
- external QPU integration boundaries;
- AI/GenAI backend resources;
- partner services;
- provider connectors;
- resource adapters;
- lifecycle integration;
- health and availability;
- security;
- observability;
- provenance.

---

# Current Status

**Status:** Initial post-pilot architecture / implementation boundary.

The logical IaaS structure is established.

Detailed implementation should proceed incrementally from actual PaaS requirements and validated resource needs.

The presence of a resource category in this document does not imply that the corresponding infrastructure or backend has already been implemented or is physically available.

---

# Guiding Principles

The central principles are:

> **PaaS requests logical resource capabilities, not provider-specific infrastructure.**

> **Resource Fabric remains authoritative for resource resolution.**

> **General Factory remains authoritative for implementation binding.**

> **IaaS provides infrastructure and backend access.**

> **Provider-specific details remain behind connectors and adapters.**

> **Local, remote, cloud, private and specialized resources can participate in a common logical model.**

> **Simulation, emulation and physical QPU execution remain explicitly distinct.**

> **AI/GenAI models and partner services are treated as backend capabilities where appropriate, without conflating them with physical compute resources.**

> **IaaS should initially be derived from actual PaaS requirements rather than speculative infrastructure scope.**

> **Virtual-first execution can validate resource integration before higher-cost or higher-complexity infrastructure is introduced.**

---

# Future Evolution

Future development may include:

- formal IaaS resource schemas;
- resource capability contracts;
- provider adapters;
- local resource integration;
- VPS integration;
- cloud resource integration;
- private cloud integration;
- bare-metal integration;
- GPU integration;
- HPC integration;
- storage integration;
- network integration;
- high-speed interconnect integration;
- quantum simulator integration;
- quantum emulator integration;
- external QPU integration;
- AI/GenAI backend integration;
- partner-service integration;
- resource provisioning;
- resource allocation;
- resource lifecycle;
- health monitoring;
- quota integration;
- usage reporting;
- cost-aware resource selection;
- resource provenance;
- security validation;
- automated conformance testing.

The post-pilot IaaS is therefore intended to become a **controlled infrastructure and backend access foundation** for the General Factory, with its scope expanding only as concrete PaaS and Factory-controlled workload requirements justify additional resource integrations.

---


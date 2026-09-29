# Workspace Manager - Factory Implementation

Implementation area for project workspace lifecycle.

Potential responsibilities:

- Create workspace
- Configure workspace
- Provision workspace
- Manage storage
- Connect source
- Connect runtime
- Manage project resources
- Suspend/resume workspace
- Archive workspace

The workspace may eventually contain:

CPU
GPU
HPC
QAI Runtime
Quantum Simulator
Network
Storage
IDE
Workflow Runtime
---
# Workspace Manager - Factory Implementation

## Overview

The **Workspace Manager** is the Web Platform implementation boundary responsible for the lifecycle and operational management of project workspaces.

A workspace provides the controlled engineering environment in which a project can contain source code, notebooks, workflows, virtual assets, experiments, runtime environments, storage, and computational resources.

The Workspace Manager coordinates the creation and lifecycle of this environment without becoming the semantic authority for projects, workflows, resources, or infrastructure.

The intended relationship is:

    Tenant
      │
      ▼
    Project
      │
      ▼
    Workspace Manager
      │
      ├── Workspace Lifecycle
      ├── Workspace Configuration
      ├── Workspace Provisioning
      ├── Source Connection
      ├── Runtime Connection
      ├── Storage
      ├── Project Resources
      └── Suspend / Resume / Archive
      │
      ▼
    Workspace
      │
      ├── CPU
      ├── GPU
      ├── HPC
      ├── QAI Runtime
      ├── Quantum Simulator
      ├── Network
      ├── Storage
      ├── IDE
      └── Workflow Runtime

The Workspace Manager therefore provides the **project engineering environment boundary** through which the PaaS and related platform services obtain a controlled workspace.

---

# Purpose

The Workspace Manager provides reusable capabilities for:

- workspace creation;
- workspace configuration;
- workspace provisioning;
- workspace initialization;
- workspace storage management;
- source repository connection;
- runtime connection;
- project resource management;
- workspace suspension;
- workspace resumption;
- workspace archival;
- workspace restoration where supported;
- workspace status;
- workspace health;
- workspace environment management.

The goal is to provide a consistent workspace abstraction across local, VPS, cloud, private cloud, dedicated and hybrid deployment environments.

---

# Architectural Position

The Workspace Manager sits between project-level platform services and the underlying execution environment.

A conceptual architecture is:

    User
      │
      ▼
    Web Shell
      │
      ▼
    Project
      │
      ▼
    Workspace Manager
      │
      ├── Workspace Configuration
      ├── Source
      ├── Storage
      ├── Runtime
      ├── IDE
      └── Workflow Runtime
      │
      ▼
    General Factory
      │
      ▼
    Resource Fabric
      │
      ▼
    CPU / GPU / HPC / QPU / Virtual Compute
      │
      ▼
    Infrastructure

The Workspace Manager coordinates the workspace.

It does not replace:

- Project Management Service;
- General Factory;
- Resource Fabric;
- IaaS;
- Workflow Engine;
- IDE;
- Storage infrastructure;
- source-control systems.

---

# Workspace Concept

A workspace is a controlled technical environment associated with a project.

A conceptual hierarchy is:

    Tenant
      │
      ▼
    Project
      │
      ▼
    Workspace
      │
      ├── Source
      ├── Configuration
      ├── Environment
      ├── Storage
      ├── Runtime
      ├── IDE
      ├── Workflow Runtime
      ├── Virtual Assets
      ├── Experiments
      └── Resources

The workspace provides the environment in which project engineering activities take place.

---

# Workspace vs Project

A project and a workspace are related but distinct.

### Project

The Project Management Service manages:

- project identity;
- project metadata;
- project membership;
- project lifecycle;
- project configuration;
- project-level governance.

### Workspace

The Workspace Manager manages:

- technical environment;
- runtime;
- source connection;
- storage;
- compute;
- IDE;
- workflow runtime;
- workspace lifecycle.

A project may eventually have:

- one workspace;
- multiple workspaces;
- separate development/test/production workspaces;
- temporary experimental workspaces.

The exact relationship can depend on platform configuration.

---

# Workspace Lifecycle

A conceptual lifecycle is:

    Requested
       │
       ▼
    Creating
       │
       ▼
    Configuring
       │
       ▼
    Provisioning
       │
       ▼
    Ready
       │
       ├──────────────► Running
       │                  │
       │                  ▼
       │               Suspended
       │                  │
       │                  ▼
       │               Resuming
       │                  │
       │                  ▼
       │               Running
       │
       ▼
    Archiving
       │
       ▼
    Archived
       │
       ▼
    Deleted
    (where permitted)

Not every workspace needs every state.

Lifecycle transitions should be explicit and authorized.

---

# Workspace Creation

Workspace creation should establish the minimum information required to create a project engineering environment.

Potential inputs include:

- tenant;
- project;
- workspace name;
- workspace type;
- environment;
- deployment profile;
- source repository;
- runtime profile;
- storage requirements;
- resource requirements;
- enabled capabilities;
- configuration;
- lifecycle policy.

Workspace creation should not automatically imply physical infrastructure provisioning.

Provisioning depends on the selected workspace profile and deployment environment.

---

# Workspace Types

Potential workspace types may include:

- development;
- experiment;
- simulation;
- engineering;
- testing;
- staging;
- production-oriented;
- temporary;
- virtual-first.

The workspace type may influence:

- available tools;
- resource profiles;
- storage;
- runtime;
- security;
- lifecycle;
- deployment policy.

The exact taxonomy can evolve as the PaaS implementation matures.

---

# Workspace Configuration

A workspace configuration may contain:

    Workspace Configuration
    ├── Identity
    ├── Project
    ├── Environment
    ├── Source
    ├── Runtime
    ├── Storage
    ├── Resources
    ├── Network
    ├── IDE
    ├── Workflow Runtime
    ├── Policies
    └── Lifecycle

Configuration should be versioned when changes affect reproducibility or execution behavior.

---

# Workspace Provisioning

Provisioning transforms the logical workspace definition into an operational workspace.

A conceptual flow is:

    Workspace Definition
          │
          ▼
    Workspace Manager
          │
          ▼
    General Factory
          │
          ├── Registry
          ├── Connectors
          ├── Adapters
          └── Runtime
          │
          ▼
    Resource Fabric
          │
          ▼
    Infrastructure / Runtime
          │
          ▼
    Workspace Ready

The Workspace Manager coordinates provisioning but should not embed provider-specific infrastructure logic unnecessarily.

---

# Provisioning Profiles

Different workspaces may require different provisioning profiles.

For example:

### Lightweight Development

    Workspace
      ├── CPU
      ├── Storage
      ├── IDE
      └── Notebook

### AI/ML Workspace

    Workspace
      ├── CPU
      ├── GPU
      ├── Storage
      ├── IDE
      └── AI/ML Runtime

### QAI Workspace

    Workspace
      ├── CPU
      ├── GPU / HPC
      ├── QAI Runtime
      ├── Quantum Simulator
      ├── Storage
      ├── IDE
      └── Workflow Runtime

### Simulation Workspace

    Workspace
      ├── CPU / HPC
      ├── Storage
      ├── Simulation Runtime
      ├── Digital Twin
      └── Visualization

These are conceptual profiles rather than claims that all resources are physically available in every environment.

---

# Workspace Resources

The workspace may contain or connect to:

- CPU;
- GPU;
- HPC;
- QAI Runtime;
- quantum simulator;
- network;
- storage;
- IDE;
- workflow runtime.

Additional resources may be added later.

The Workspace Manager coordinates these resources at workspace scope.

The Resource Fabric remains responsible for authoritative resource resolution.

---

# CPU

CPU resources may provide:

- general-purpose computation;
- service execution;
- notebook execution;
- workflow execution;
- data preparation;
- classical portions of hybrid workloads.

The workspace should treat CPU as a resource capability rather than hard-coding a particular processor implementation.

---

# GPU

GPU resources may support:

- AI/ML;
- local inference;
- simulation;
- accelerated computation;
- selected QAI workloads.

GPU availability is environment-dependent.

The Workspace Manager should request the required capability rather than assuming a particular GPU model or provider.

---

# HPC

HPC resources may support:

- large simulations;
- optimization;
- scientific computation;
- parallel workloads;
- large-scale classical processing.

HPC may be local, private, cloud-hosted or externally integrated.

The Workspace Manager should connect to the appropriate resource through the Resource Fabric.

---

# QAI Runtime

The workspace may contain or connect to a **QAI Runtime**.

Potential runtime responsibilities include:

- QAI workload execution;
- hybrid classical/quantum orchestration;
- virtual-first execution;
- workflow execution integration;
- experiment execution;
- resource coordination;
- results handling.

The QAI Runtime is an implementation capability.

It should not replace the General Framework or General Factory.

---

# Quantum Simulator

A workspace may include a quantum simulator for development and experimentation.

Potential implementations include:

- Qiskit Aer;
- Cirq-based simulation;
- PennyLane simulation;
- other compatible quantum simulators.

The presence of a quantum simulator does not imply physical QPU access.

The workspace should explicitly distinguish:

- simulation;
- emulation;
- physical QPU execution.

---

# Network

Workspace networking may provide connectivity to:

- source repositories;
- APIs;
- cloud services;
- runtime services;
- resource backends;
- package repositories;
- private services;
- external integrations.

Network configuration should be deployment-profile dependent.

Air-gapped or restricted environments may require different connectivity patterns.

---

# Storage

Workspace storage may support:

- source code;
- notebooks;
- datasets;
- configuration;
- experiment artifacts;
- workflow definitions;
- simulation models;
- execution results;
- evidence;
- logs;
- temporary files.

Storage may be:

- local;
- attached volume;
- object storage;
- network storage;
- cloud storage;
- project-specific storage;
- tenant-specific storage.

The Workspace Manager manages the workspace relationship with storage rather than becoming the storage implementation itself.

---

# Source Connection

A workspace may connect to source repositories.

Potential sources include:

- GitHub;
- GitLab;
- private Git repositories;
- local repositories;
- enterprise source-control systems.

A conceptual flow is:

    Workspace
       │
       ▼
    Source Configuration
       │
       ▼
    Connector
       │
       ▼
    Git Repository
       │
       ▼
    Workspace Source Tree

The source-control provider remains an external or separately implemented capability.

---

# GitLab Integration

GitLab may be particularly useful for private QAI engineering repositories.

A workspace may connect to:

- private projects;
- branches;
- tags;
- commits;
- pipelines where applicable;
- runner/execution environments.

The Workspace Manager should preserve source version information for reproducibility.

---

# GitHub Integration

GitHub may provide:

- public reference repositories;
- source repositories;
- project code;
- documentation;
- examples;
- selected execution integrations.

The Workspace Manager should use the appropriate connector rather than embedding GitHub-specific logic into the workspace model.

---

# Source Version

A workspace should retain sufficient information to identify the source state used for execution.

Useful metadata may include:

- repository;
- branch;
- tag;
- commit;
- source version;
- checkout time.

This supports reproducibility and evidence.

---

# Runtime Connection

A workspace may connect to one or more runtimes.

Examples include:

- Python runtime;
- notebook runtime;
- AI/ML runtime;
- workflow runtime;
- QAI runtime;
- simulation runtime;
- quantum simulator;
- custom function runtime.

The runtime may be:

- local;
- containerized;
- remote;
- cloud-hosted;
- private infrastructure;
- external service.

---

# Runtime Isolation

Workspace runtime environments should be isolated according to the required security and deployment model.

Possible mechanisms include:

- containers;
- virtual environments;
- virtual machines;
- namespaces;
- dedicated runtime instances;
- dedicated hosts.

The exact mechanism is implementation-dependent.

---

# IDE Integration

The workspace may provide access to an IDE.

Potential implementations include:

- VS Code;
- Eclipse Theia;
- Eclipse Che;
- browser-based IDEs;
- other compatible development environments.

The IDE is a workspace client/development environment.

It is not the semantic authority for workflows or platform resources.

---

# Notebook Integration

The workspace may provide:

- Jupyter;
- experiment notebooks;
- QAI pipeline notebooks;
- domain-specific notebooks.

Notebooks may operate against:

- local runtime;
- remote runtime;
- GPU;
- HPC;
- simulator;
- QAI runtime.

The Notebook is a development and experiment interface, not the platform semantic authority.

---

# Workflow Runtime

The workspace may contain or connect to a Workflow Runtime.

A conceptual flow is:

    Workflow Definition
          │
          ▼
    Workflow Service
          │
          ▼
    Workflow Engine
          │
          ▼
    Workspace Runtime
          │
          ▼
    Execution Resources

The Workspace Manager provides the workspace environment.

The Workflow Engine remains responsible for workflow execution semantics and orchestration.

---

# Project Resources

Workspace-level project resources may include:

- compute;
- storage;
- runtime environments;
- source repositories;
- network connections;
- execution environments;
- simulation resources;
- quantum simulation resources.

The Workspace Manager coordinates these resources at workspace scope.

---

# Resource Fabric Boundary

The Workspace Manager should not become the authoritative resource-selection mechanism.

The distinction is:

**Workspace Manager**

- defines workspace resource requirements;
- associates resources with a workspace;
- manages workspace resource lifecycle;
- presents workspace resource state.

**Resource Fabric**

- resolves logical resource requirements;
- identifies available resource implementations;
- applies resource policies;
- binds logical requirements to concrete resources.

**IaaS**

- provides infrastructure-level resource capabilities.

This preserves separation of concerns.

---

# Workspace and Resource Quotas

Workspace resource usage may be constrained by:

- tenant quotas;
- project limits;
- workspace configuration;
- environment policy;
- resource availability.

A conceptual flow is:

    Tenant Policy
         │
         ▼
    Project
         │
         ▼
    Workspace Requirements
         │
         ▼
    Resource Fabric
         │
         ▼
    Available Resource

The Workspace Manager should not bypass higher-level resource policies.

---

# Workspace Environment

A workspace environment may include:

    Environment
    ├── OS / Runtime
    ├── Packages
    ├── Source
    ├── Configuration
    ├── Environment Variables
    ├── Secrets References
    ├── Compute
    ├── Storage
    └── Network

Sensitive secrets should not be stored in source repositories or exposed unnecessarily through the Web Shell.

---

# Package and Dependency Management

A workspace may manage project dependencies such as:

- Python packages;
- runtime libraries;
- quantum libraries;
- simulation libraries;
- AI/ML libraries;
- system dependencies.

Potential mechanisms include:

- virtual environments;
- package lock files;
- container images;
- environment specifications;
- reproducible build definitions.

Dependency state should be captured where it materially affects reproducibility.

---

# Workspace Templates

Future implementations may support workspace templates.

Examples:

    Template: Python Development
    Template: AI/ML
    Template: QAI Research
    Template: Quantum Development
    Template: Simulation
    Template: Digital Twin
    Template: Notebook
    Template: Workflow Engineering

A template may define:

- runtime;
- packages;
- IDE;
- notebooks;
- source configuration;
- workflow tools;
- resource requirements.

Templates should remain implementation profiles rather than becoming new architectural authorities.

---

# Workspace Configuration Changes

Configuration changes may include:

- adding storage;
- changing runtime;
- connecting a repository;
- adding GPU access;
- changing workflow runtime;
- enabling simulation;
- enabling quantum simulation;
- changing environment variables.

Changes may require:

- validation;
- authorization;
- reprovisioning;
- restart;
- version update;
- evidence generation.

---

# Workspace Suspend

Suspension may be used to reduce resource consumption or temporarily stop execution.

A conceptual flow is:

    Running
       │
       ▼
    Suspend Request
       │
       ▼
    Validate
       │
       ▼
    Stop / Release Eligible Runtime Resources
       │
       ▼
    Suspended

Persistent workspace state should remain according to the configured lifecycle policy.

---

# Workspace Resume

A suspended workspace may be resumed:

    Suspended
       │
       ▼
    Resume Request
       │
       ▼
    Validate
       │
       ▼
    Reprovision Required Resources
       │
       ▼
    Restore Runtime
       │
       ▼
    Running

The platform should distinguish persistent state from temporary execution state.

---

# Workspace Archive

Archiving may preserve workspace information while removing active runtime resources.

A conceptual process is:

    Running / Suspended
          │
          ▼
      Archive
          │
          ├── Preserve Metadata
          ├── Preserve Source References
          ├── Preserve Evidence
          ├── Preserve Required Artifacts
          └── Release Active Resources
          │
          ▼
       Archived

Restoration may be supported where appropriate.

---

# Workspace Deletion

Workspace deletion is potentially destructive.

A controlled deletion process may include:

1. Stop active operations.
2. Cancel or complete jobs.
3. Release resources.
4. Preserve required evidence.
5. Apply retention policies.
6. Remove temporary state.
7. Remove workspace configuration.
8. Record lifecycle evidence.

Deletion should require appropriate authorization.

---

# Workspace Health

The Workspace Manager should expose workspace health information.

Potential indicators include:

- workspace state;
- runtime status;
- IDE status;
- workflow runtime status;
- storage availability;
- source connection;
- resource availability;
- network status.

Example:

    Workspace Health
    ├── Workspace: Ready
    ├── Source: Connected
    ├── Storage: Available
    ├── Runtime: Healthy
    ├── IDE: Available
    └── Workflow Runtime: Ready

---

# Workspace Readiness

A workspace may be considered ready only when required dependencies are available.

For example:

    Workspace
       │
       ├── Configuration ✓
       ├── Source ✓
       ├── Storage ✓
       ├── Runtime ✓
       ├── Network ✓
       └── Required Resources ✓
              │
              ▼
            Ready

Readiness criteria should be defined by the workspace profile.

---

# Workspace Status

Possible status values include:

- Requested;
- Creating;
- Configuring;
- Provisioning;
- Ready;
- Running;
- Degraded;
- Suspended;
- Resuming;
- Archiving;
- Archived;
- Failed;
- Deleted.

The final state model may be simplified for the initial implementation.

---

# Workspace and Experiments

Experiments may execute within a workspace.

Example:

    Workspace
       │
       ▼
    Experiment
       │
       ├── Notebook
       ├── Workflow
       ├── Parameters
       ├── Resources
       └── Runtime
              │
              ▼
          Execution
              │
              ▼
           Results
              │
              ▼
           Evidence

The Experiment Management Service remains responsible for experiment lifecycle.

---

# Workspace and Virtual Assets

Virtual assets may be made available within a workspace.

For example:

    Workspace
       │
       ▼
    Virtual Asset Model
       │
       ├── Device
       ├── Machine
       ├── Environment
       ├── Digital Twin
       └── Simulated Asset

The Virtual Asset Service remains responsible for virtual asset lifecycle.

The Workspace Manager provides the environment in which those assets may be developed or executed.

---

# Workspace and Simulation

A simulation workspace may contain:

- simulation runtime;
- models;
- scenarios;
- datasets;
- visualization;
- compute;
- storage;
- experiment integration.

Example:

    Simulation Workspace
       │
       ├── Model
       ├── Scenario
       ├── Parameters
       ├── Runtime
       └── Compute
              │
              ▼
          Simulation
              │
              ▼
           Results

---

# Workspace and Quantum

A quantum development workspace may contain:

- quantum development libraries;
- quantum simulator;
- quantum emulation capability;
- hybrid runtime;
- notebook;
- workflow runtime;
- CPU/GPU/HPC resources;
- QPU integration boundary where available.

Example:

    Quantum Workspace
       │
       ├── IDE
       ├── Notebook
       ├── Quantum SDK
       ├── Simulator
       ├── Emulator
       └── QPU Boundary
              │
              ▼
          Execution

The workspace must preserve the distinction between simulator, emulator and physical QPU.

---

# Workspace and AI/ML

An AI/ML workspace may include:

- Python runtime;
- notebook;
- model development;
- local inference;
- experiment tracking;
- MLflow integration;
- GPU;
- HPC;
- datasets;
- workflow runtime.

MLflow may provide experiment/model lifecycle capabilities but does not become the semantic authority for the workspace.

---

# Workspace and Virtual-First

Virtual-first development can use the workspace as the engineering environment before physical resources are introduced.

Example:

    Workspace
       │
       ▼
    Virtual Asset
       │
       ▼
    Simulation / Emulation
       │
       ▼
    AI / Quantum / Classical Execution
       │
       ▼
    Validation
       │
       ▼
    Evidence
       │
       ▼
    Promotion to Higher-Fidelity Execution

This supports progressive movement from virtual implementations toward more realistic execution environments.

---

# Workspace and General Factory

The General Factory resolves logical workspace requirements to implementation capabilities.

For example:

    Workspace Requirement
          │
          ▼
    General Factory
          │
          ├── IDE Implementation
          ├── Runtime Implementation
          ├── Workflow Runtime
          ├── Simulation Runtime
          └── Resource Binding
          │
          ▼
       Workspace

The Workspace Manager coordinates the workspace lifecycle.

The General Factory provides implementation resolution.

---

# Workspace and Deployment Service

The Workspace Manager may request deployment operations through the Deployment Service.

Example:

    Workspace
       │
       ▼
    Deployment Request
       │
       ▼
    Deployment Service
       │
       ▼
    Deployment Profile
       │
       ▼
    Infrastructure
       │
       ▼
    Workspace Runtime

This prevents workspace lifecycle code from becoming tightly coupled to a specific deployment technology.

---

# Workspace and IaaS

The Workspace Manager may use IaaS capabilities indirectly.

A typical relationship is:

    Workspace Requirement
          │
          ▼
    Resource Fabric
          │
          ▼
    IaaS
          │
          ▼
    Infrastructure Resource

IaaS may provide:

- compute;
- storage;
- networking;
- virtual machines;
- containers;
- other infrastructure capabilities.

The Workspace Manager should not become an IaaS abstraction itself.

---

# Workspace Storage Lifecycle

Workspace storage may have its own lifecycle.

For example:

    Workspace Created
         │
         ▼
    Storage Provisioned
         │
         ▼
    Active
         │
         ├── Suspend
         │
         ▼
    Persistent
         │
         ▼
    Archive
         │
         ▼
    Retention / Deletion

Storage retention should be explicit.

Temporary execution storage should not automatically be treated as permanent project storage.

---

# Source and Storage Separation

Source repositories and workspace storage are related but distinct.

**Source**

- authoritative project code/version;
- Git repository;
- commits;
- branches;
- tags.

**Workspace Storage**

- working files;
- generated artifacts;
- temporary data;
- runtime state;
- cached data;
- experiment outputs.

This distinction supports reproducibility and clean workspace lifecycle management.

---

# Reproducibility

Workspace reproducibility may require recording:

- workspace profile;
- source commit;
- runtime version;
- package versions;
- configuration;
- resource profile;
- workflow version;
- experiment version;
- execution environment;
- relevant storage references.

A conceptual evidence record is:

    Workspace
       │
       ├── Source Version
       ├── Runtime Version
       ├── Configuration
       ├── Resource Profile
       ├── Workflow Version
       └── Experiment Version
              │
              ▼
          Execution Evidence

---

# Evidence Integration

Workspace lifecycle and execution events may contribute to evidence.

Potential evidence includes:

- workspace creation;
- workspace configuration;
- provisioning;
- source version;
- runtime configuration;
- resource binding;
- execution;
- suspension;
- resumption;
- archival.

The Evidence Service remains responsible for evidence management.

---

# Security

The Workspace Manager is a security-sensitive boundary because it controls access to technical environments.

Important controls include:

- authentication;
- authorization;
- tenant isolation;
- project isolation;
- workspace isolation;
- runtime isolation;
- source access control;
- storage access control;
- secret protection;
- resource access control;
- audit logging.

A workspace should never be considered secure merely because the Web Shell hides a workspace-related operation.

---

# Tenant Isolation

Workspaces should inherit or enforce tenant boundaries.

A conceptual hierarchy is:

    Tenant
      │
      ▼
    Project
      │
      ▼
    Workspace
      │
      ├── Source
      ├── Storage
      ├── Runtime
      └── Resources

Cross-tenant workspace access must be prevented at the service/backend layer.

---

# Project Isolation

A workspace should remain associated with an explicit project.

Project-level access should be validated before:

- opening a workspace;
- connecting source;
- accessing storage;
- allocating resources;
- executing workflows;
- running experiments.

---

# Workspace Credentials

Workspace integrations may require credentials for:

- Git repositories;
- package repositories;
- cloud resources;
- external services;
- private APIs.

Credentials should be managed through appropriate secret-management mechanisms.

They should not be embedded in:

- source code;
- notebooks;
- workspace configuration files;
- frontend bundles.

---

# Observability

Workspace operations should support:

- logs;
- metrics;
- traces;
- lifecycle events;
- provisioning status;
- resource usage;
- runtime status;
- storage status;
- source connection status.

Useful correlation information includes:

- tenant;
- project;
- workspace;
- execution;
- request;
- service.

---

# Workspace Events

Potential workspace events include:

- workspace.created;
- workspace.configured;
- workspace.provisioning.started;
- workspace.provisioning.completed;
- workspace.ready;
- workspace.degraded;
- workspace.suspended;
- workspace.resumed;
- workspace.archiving;
- workspace.archived;
- workspace.failed;
- workspace.deleted.

Events may be implemented synchronously or asynchronously depending on platform requirements.

---

# API Boundary

The Workspace Manager should expose controlled APIs.

Potential operations include:

    POST   /workspaces
    GET    /workspaces
    GET    /workspaces/{id}
    PATCH  /workspaces/{id}
    DELETE /workspaces/{id}

Lifecycle operations may include:

    POST /workspaces/{id}/provision
    POST /workspaces/{id}/suspend
    POST /workspaces/{id}/resume
    POST /workspaces/{id}/archive

The exact API contract is implementation-dependent.

---

# Example Workspace Request

A conceptual workspace request may contain:

    Workspace Request
    ├── tenant_id
    ├── project_id
    ├── workspace_type
    ├── environment
    ├── source
    ├── runtime_profile
    ├── storage_profile
    ├── resource_profile
    ├── enabled_capabilities
    └── lifecycle_policy

This is a conceptual model rather than a finalized API schema.

---

# Workspace Manager and Web Shell

The Web Shell may provide the user-facing workspace entry point.

Example:

    Web Shell
       │
       ▼
    Project
       │
       ▼
    Workspace
       │
       ├── IDE
       ├── Notebook
       ├── Workflow
       ├── Resources
       └── Runtime

The Web Shell presents the workspace.

The Workspace Manager manages its lifecycle.

---

# Workspace Manager and Micro-Frontends

Workspace-related micro-frontends may include:

- Workspace Overview;
- Workspace Configuration;
- IDE;
- Notebook;
- Runtime;
- Resources;
- Source;
- Storage;
- Workflow;
- Environment.

These views should use the Workspace Manager APIs rather than implementing workspace state independently.

---

# PaaS Integration

The Workspace Manager is a core implementation capability for the post-pilot QAI PaaS.

A conceptual PaaS workspace is:

    QAI PaaS
       │
       ▼
    Workspace Manager
       │
       ├── Project
       ├── Source
       ├── IDE
       ├── Notebook
       ├── Runtime
       ├── Workflow
       ├── Resources
       ├── Storage
       ├── Simulation
       └── Quantum
              │
              ▼
        General Factory
              │
              ▼
        Resource Fabric

This makes the PaaS a genuine engineering environment rather than merely a collection of web pages.

---

# SaaS Relationship

The SaaS layer may consume selected workspace capabilities but should not necessarily expose the complete engineering workspace.

For example:

    PaaS
      └── Full Engineering Workspace

    SaaS
      └── Controlled Application Experience

Both may use common underlying project and execution services.

---

# Local Development

A lightweight local workspace may be created without provisioning remote infrastructure.

Example:

    Local Workspace
       │
       ├── Local Git
       ├── Local Python
       ├── Local Storage
       ├── Local Jupyter
       ├── Local Simulator
       └── Local Workflow Runtime

This provides a practical development path before remote deployment.

---

# VPS Deployment

A VPS workspace may use:

    VPS
      │
      ├── Workspace Runtime
      ├── Storage
      ├── IDE
      ├── Workflow Runtime
      └── Optional GPU / External Resources

The Workspace Manager should remain independent of the specific VPS provider.

---

# Cloud Deployment

A cloud workspace may use:

- cloud compute;
- cloud storage;
- managed networking;
- container runtime;
- managed databases;
- cloud GPU/HPC where available.

Cloud-specific implementation should be isolated through connectors/adapters and deployment profiles.

---

# Private and Air-Gapped Environments

A workspace may operate in restricted environments.

Potential characteristics include:

- private source control;
- local package repositories;
- internal storage;
- local runtime;
- restricted network;
- local simulation;
- controlled QAI execution.

The Workspace Manager should not assume unrestricted Internet access.

---

# Hybrid Workspace

A workspace may span multiple environments.

For example:

    Workspace
       │
       ├── Local IDE
       ├── Private Source
       ├── Cloud GPU
       ├── HPC
       └── External Quantum Backend

Such arrangements require explicit network, security and authorization controls.

The Workspace Manager coordinates the workspace relationships; it does not eliminate the underlying deployment boundaries.

---

# Post-Pilot Demonstrator

A useful workspace demonstrator should show the complete lifecycle.

Example:

    1. Select Tenant
    2. Select Project
    3. Create Workspace
    4. Select Workspace Profile
    5. Connect Git Repository
    6. Provision Runtime
    7. Provision Storage
    8. Resolve Required Resources
    9. Open IDE
    10. Open Notebook
    11. Define Workflow
    12. Execute Workflow
    13. Collect Results
    14. Register Evidence
    15. Suspend Workspace
    16. Resume Workspace
    17. Archive Workspace

This demonstrates the Workspace Manager as an operational lifecycle capability.

---

# Example End-to-End Architecture

A representative post-pilot flow is:

    User
      │
      ▼
    Web Shell
      │
      ▼
    Tenant / Project Context
      │
      ▼
    Workspace Manager
      │
      ├── Source
      ├── Storage
      ├── IDE
      ├── Runtime
      └── Workspace Resources
      │
      ▼
    General Factory
      │
      ├── Registry
      ├── Connectors
      ├── Adapters
      └── Runtime Services
      │
      ▼
    Resource Fabric
      │
      ├── CPU
      ├── GPU
      ├── HPC
      ├── TPU
      ├── QPU
      └── Virtual Compute
      │
      ▼
    Execution
      │
      ▼
    Results
      │
      ▼
    Evidence

---

# Relationship to the Agriculture Digital Farm Pilot

The Agriculture Digital Farm pilot provides an important implementation/evidence source for the need to bring together:

- notebooks;
- source code;
- virtual assets;
- simulation;
- workflows;
- resources;
- experiments;
- results;
- evidence.

The post-pilot Workspace Manager should generalize these requirements into a reusable engineering workspace.

It should **not** embed agriculture-specific workspace behavior into the General Factory.

For example:

    Agriculture Application
          │
          ▼
    Generic Workspace
          │
          ├── Notebook
          ├── Workflow
          ├── Virtual Assets
          ├── Simulation
          └── Resources

The domain application remains above the generic workspace capability.

---

# Relationship to the 12K LOC Pilot Notebook

The large Agriculture Digital Farm notebook can serve as an evidence source for workspace requirements and reusable implementation patterns.

The intended approach is:

    Pilot Notebook
          │
          ▼
    Identify Reusable Capabilities
          │
          ├── Runtime
          ├── Notebook
          ├── Workflow
          ├── Virtual Assets
          ├── Simulation
          ├── Resources
          └── Evidence
          │
          ▼
    General Factory Reference Implementations
          │
          ▼
    Generic Workspace

The notebook should therefore inform the workspace design rather than become the workspace architecture itself.

---

# Suggested Directory Structure

A future implementation may organize this directory as:

    workspace_manager/
    ├── README.md
    ├── api/
    ├── models/
    ├── lifecycle/
    ├── configuration/
    ├── provisioning/
    ├── source/
    ├── storage/
    ├── runtime/
    ├── resources/
    ├── workspace_profiles/
    ├── templates/
    ├── health/
    ├── events/
    ├── audit/
    ├── adapters/
    ├── tests/
    └── examples/

The exact implementation structure may evolve as the PaaS reference implementation develops.

---

# Reference Implementation Relationships

The Workspace Manager may integrate with reference implementations under:

- `reference_implementations/ide/`
- `reference_implementations/notebooks/`
- `reference_implementations/workflow/`
- `reference_implementations/workflow_designer/`
- `reference_implementations/ai_ml/`
- `reference_implementations/quantum/`
- `reference_implementations/emulation/`
- `reference_implementations/simulation/`
- `reference_implementations/resource_backends/`
- `reference_implementations/cloud/`
- `reference_implementations/git_execution/`
- `reference_implementations/virtual_first/`
- `reference_implementations/qai_platform/`

These are implementation capabilities that may be assembled into a workspace profile.

They do not individually define the Workspace Manager.

---

# Non-Goals

The Workspace Manager does not define:

- General Framework semantics;
- General Factory architecture;
- Resource Fabric architecture;
- IaaS architecture;
- project-management semantics;
- workflow semantics;
- Workflow Engine semantics;
- IDE implementation;
- notebook implementation;
- source-control implementation;
- storage infrastructure;
- physical QPU access;
- complete infrastructure provisioning;
- complete SaaS functionality.

---

# Scope

The Workspace Manager covers:

- workspace lifecycle;
- workspace creation;
- workspace configuration;
- workspace provisioning;
- source connection;
- runtime connection;
- storage management;
- project resource context;
- workspace health;
- workspace suspension;
- workspace resumption;
- workspace archival;
- workspace restoration where supported;
- integration with PaaS;
- integration with Web Shell;
- integration with platform services;
- integration with General Factory;
- integration with Resource Fabric;
- workspace security and isolation.

---

# Current Status

**Status:** Post-pilot architecture / reference implementation definition.

The Workspace Manager establishes the logical boundary required to turn a project into a controlled engineering workspace within the QAI PaaS.

The architecture defines the intended implementation responsibility. It does not imply that every listed runtime, resource or infrastructure component is already implemented or physically available.

---

# Guiding Principles

The central principles are:

> **A workspace is a controlled engineering environment, not merely a project record.**

> **Project Management owns the project; Workspace Manager owns the technical workspace lifecycle.**

> **General Factory resolves implementations.**

> **Resource Fabric resolves resources.**

> **IaaS provides infrastructure capabilities.**

> **The IDE and notebook are workspace interfaces, not semantic authorities.**

> **Workflow execution remains the responsibility of the Workflow Engine.**

> **Workspace configuration should remain reproducible and version-aware.**

> **Suspension and archival should distinguish persistent project state from temporary runtime state.**

> **Technology-specific implementations remain behind appropriate connectors, adapters and deployment profiles.**

These boundaries allow the Workspace Manager to provide a reusable engineering environment without becoming a monolithic infrastructure or application-management layer.

---

# Future Evolution

Future development may include:

- workspace API specification;
- workspace state model;
- workspace profile catalog;
- workspace templates;
- automated provisioning;
- source-control integration;
- runtime provisioning;
- persistent storage integration;
- IDE integration;
- notebook integration;
- workflow runtime integration;
- AI/ML workspace profiles;
- quantum workspace profiles;
- simulation workspace profiles;
- digital-twin workspace profiles;
- GPU/HPC resource profiles;
- virtual-first workspace profiles;
- workspace health monitoring;
- workspace observability;
- workspace backup and restore;
- workspace migration;
- workspace export;
- workspace isolation testing;
- workspace conformance tests;
- PaaS workspace implementation;
- controlled SaaS workspace consumption.

The Workspace Manager is therefore intended to become the reusable **project engineering workspace lifecycle boundary** for the General Factory Web Platform, providing a consistent bridge between project intent, engineering tools, execution runtimes, resource capabilities and infrastructure.
---

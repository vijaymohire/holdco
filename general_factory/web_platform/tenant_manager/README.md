# Tenant Manager - Factory Implementation

Implementation area for tenant lifecycle and isolation.

Potential responsibilities:

- Tenant creation
- Tenant configuration
- Tenant resource allocation
- Tenant isolation
- Tenant administration
- Tenant lifecycle
---
# Tenant Manager - Factory Implementation

## Overview

The **Tenant Manager** is the Web Platform implementation boundary responsible for tenant lifecycle, tenant configuration, tenant context, and tenant-level isolation.

A tenant represents a controlled organizational or logical boundary within the platform. Tenant management provides the mechanisms required to establish and administer that boundary while allowing projects, users, services, resources, workflows, experiments and evidence to operate within the appropriate tenant context.

The Tenant Manager is an **implementation service**. It is not the semantic authority for the General Framework, the implementation-resolution authority of the General Factory, or the authoritative resource-resolution layer of the Resource Fabric.

The intended relationship is:

    Client / User
        │
        ▼
    Web Platform
        │
        ├── Authentication
        ├── Authorization
        ├── API Gateway
        └── Micro-Frontends
        │
        ▼
    Tenant Manager
        │
        ├── Tenant Lifecycle
        ├── Tenant Configuration
        ├── Tenant Context
        ├── Tenant Isolation
        ├── Tenant Administration
        └── Tenant Resource Context
        │
        ▼
    Platform Services
        │
        ├── Project Management
        ├── Workflow
        ├── Experiment Management
        ├── Virtual Assets
        ├── Resource Management
        ├── Simulation
        ├── Quantum Resources
        ├── Evidence
        └── Deployment
        │
        ▼
    General Factory
        │
        ▼
    Resource Fabric
        │
        ▼
    Execution Resources

---

## Purpose

The Tenant Manager provides reusable platform capabilities for:

- tenant creation;
- tenant configuration;
- tenant identification;
- tenant lifecycle;
- tenant administration;
- tenant isolation;
- tenant/project relationships;
- tenant resource context;
- tenant-level policy context;
- tenant-level quotas;
- tenant-level service configuration;
- tenant-level audit context.

The objective is to provide a consistent tenant boundary that can be consumed by the Web Platform, PaaS and future SaaS layers.

---

# Architectural Position

Tenant management is a cross-cutting platform capability.

It provides context for services but should not absorb the responsibilities of those services.

| Component | Primary Responsibility |
|---|---|
| Authentication | Establishes who the caller is |
| Authorization | Determines what the caller is allowed to do |
| Tenant Manager | Establishes and manages tenant context and lifecycle |
| Project Management | Manages projects within a tenant |
| Services | Provides application/platform capabilities |
| General Framework | Defines semantic and architectural intent |
| General Factory | Resolves logical capabilities to implementations |
| Resource Fabric | Resolves logical resource requirements to resources |
| IaaS | Provides infrastructure capabilities |
| Micro-Frontends | Present tenant-scoped information and controls |

The Tenant Manager therefore provides the **tenant boundary**, while other components enforce their respective responsibilities within that boundary.

---

# Tenant Concept

A tenant is a logical organizational or operational boundary within the platform.

A tenant may contain:

    Tenant
    │
    ├── Users
    ├── Service Identities
    ├── Roles
    ├── Projects
    │   ├── Workflows
    │   ├── Virtual Assets
    │   ├── Experiments
    │   ├── Notebooks
    │   ├── Results
    │   └── Evidence
    │
    ├── Resource Policies
    ├── Quotas
    ├── Service Configuration
    ├── Deployment Context
    └── Audit Context

The exact organizational meaning of a tenant may vary by deployment and product model.

For example, a tenant could represent:

- an enterprise;
- an organization;
- a business unit;
- a research organization;
- a customer;
- an internal department;
- an educational organization;
- an independent development environment.

The implementation should avoid unnecessarily hard-coding one interpretation.

---

# Tenant Lifecycle

The Tenant Manager should support a controlled lifecycle.

A conceptual lifecycle is:

    Requested
        │
        ▼
    Provisioning
        │
        ▼
    Active
        │
        ├──────────────► Suspended
        │                    │
        │                    ▼
        │                 Reactivation
        │
        ▼
    Decommissioning
        │
        ▼
    Archived
        │
        ▼
    Deleted
    (where policy permits)

Not every deployment must expose every lifecycle state.

Lifecycle transitions should be governed by authorization and applicable platform policies.

---

# Tenant Creation

Tenant creation should establish the minimum information required to create a controlled tenant boundary.

Potential inputs include:

- tenant name;
- tenant identifier;
- tenant type;
- owner;
- administrator;
- contact information;
- region;
- environment;
- service configuration;
- quota configuration;
- policy references;
- deployment profile.

Tenant creation may trigger downstream provisioning activities, but Tenant Manager should not itself become the complete infrastructure-provisioning engine.

---

# Tenant Identifier

Each tenant should have a stable logical identifier.

A conceptual representation is:

    Tenant
    ├── tenant_id
    ├── display_name
    ├── status
    ├── type
    ├── owner
    ├── configuration
    ├── policy_context
    └── lifecycle_metadata

The tenant identifier should be propagated through service calls where tenant isolation is required.

---

# Tenant Context

Tenant context provides the scope within which a request is processed.

A conceptual request context is:

    Request Context
        │
        ├── Identity
        ├── Tenant
        ├── Project
        ├── Role / Authorization Context
        ├── Correlation ID
        └── Environment

The Tenant Manager establishes or resolves tenant context.

Authentication establishes identity.

Authorization determines whether that identity may perform the requested operation within the tenant.

---

# Tenant and Project Relationship

Projects are normally scoped within a tenant.

A conceptual hierarchy is:

    Tenant
      │
      ├── Project A
      │     ├── Workflow
      │     ├── Experiments
      │     ├── Virtual Assets
      │     └── Evidence
      │
      ├── Project B
      │     ├── Workflow
      │     └── Experiments
      │
      └── Project C

The Tenant Manager establishes the tenant boundary.

The Project Management Service manages the project boundary.

This separation prevents the Tenant Manager from becoming a project-management monolith.

---

# Tenant Administration

Tenant administration may include:

- tenant metadata;
- tenant administrators;
- tenant status;
- tenant configuration;
- tenant policies;
- tenant quotas;
- tenant service enablement;
- tenant environment settings;
- tenant audit access;
- tenant lifecycle operations.

Administrative operations must be subject to the platform authorization model.

A user interface control that hides an administrative operation is not itself a security boundary.

---

# Authentication Relationship

The Tenant Manager depends on authenticated identity context but does not replace authentication.

The relationship is:

    User
      │
      ▼
    Authentication
      │
      ▼
    Identity Context
      │
      ▼
    Tenant Manager
      │
      ▼
    Tenant Context
      │
      ▼
    Authorization
      │
      ▼
    Service Operation

Authentication answers:

**Who is the caller?**

Tenant Manager answers, among other things:

**Which tenant context is being operated on?**

Authorization answers:

**Is the caller permitted to perform this operation in that tenant context?**

---

# Authorization Relationship

Tenant isolation depends on server-side authorization.

Authorization decisions may consider:

- identity;
- tenant;
- project;
- role;
- capability;
- operation;
- resource;
- environment;
- policy;
- context.

For example:

    Identity
       │
       ▼
    Tenant Context
       │
       ▼
    Project Context
       │
       ▼
    Requested Operation
       │
       ▼
    Authorization Decision
       │
       ├── Allow
       └── Deny

The Tenant Manager provides tenant context; the Authorization component remains responsible for access decisions.

---

# Tenant Isolation

Tenant isolation means that resources and operations belonging to one tenant must not be unintentionally accessible to another tenant.

Isolation may apply to:

- projects;
- workflows;
- experiments;
- notebooks;
- virtual assets;
- datasets;
- execution jobs;
- results;
- evidence;
- configuration;
- deployment information;
- resource allocations;
- administrative operations.

Isolation may be implemented through one or more mechanisms depending on the deployment profile.

Potential mechanisms include:

- logical tenant identifiers;
- database partitioning;
- row-level security;
- separate schemas;
- separate databases;
- isolated workspaces;
- separate namespaces;
- separate execution environments;
- dedicated infrastructure.

The exact mechanism is deployment-dependent.

---

# Logical vs Physical Isolation

Tenant isolation does not necessarily imply dedicated physical infrastructure.

Possible models include:

### Logical Isolation

    Shared Infrastructure
          │
          ├── Tenant A
          ├── Tenant B
          └── Tenant C

with strict logical access controls.

### Dedicated Isolation

    Tenant A
       │
       └── Dedicated Resources

### Hybrid Isolation

    Shared Services
          │
          ├── Tenant A ──► Dedicated Resources
          ├── Tenant B ──► Shared Resources
          └── Tenant C ──► Dedicated Environment

The Tenant Manager should support the logical model required by the selected deployment architecture without assuming a single infrastructure topology.

---

# Tenant Resource Context

Tenant-level resource management provides the context for resource allocation and quotas.

The Tenant Manager may maintain or expose:

- tenant resource policies;
- tenant quotas;
- tenant allocation limits;
- tenant resource preferences;
- tenant billing/usage references;
- tenant resource visibility.

However, authoritative resource resolution remains the responsibility of the Resource Fabric.

The distinction is:

**Tenant Manager**

- defines tenant context;
- maintains tenant-level resource policies and constraints;
- exposes tenant resource configuration.

**Resource Management Service**

- manages user/project-facing resource operations.

**Resource Fabric**

- resolves logical resource requirements to available resources.

**IaaS**

- provides infrastructure capabilities.

---

# Tenant Quotas

Tenants may have configurable quotas.

Potential quota dimensions include:

- CPU;
- GPU;
- HPC;
- TPU;
- QPU;
- virtual compute;
- storage;
- concurrent executions;
- workflow executions;
- experiment runs;
- project count;
- user count;
- API usage.

Quota enforcement may be distributed across relevant services.

For example:

    Tenant Quota
         │
         ▼
    Resource Management
         │
         ▼
    Resource Fabric
         │
         ▼
    Resource Allocation

The Tenant Manager provides tenant-level quota context rather than replacing the resource-management mechanisms.

---

# Tenant Service Configuration

A tenant may have configurable service availability.

Potential configuration includes:

- enabled services;
- disabled services;
- service versions;
- execution modes;
- resource classes;
- storage configuration;
- integration settings;
- feature flags;
- policy references.

For example:

    Tenant A
       ├── Workflow: Enabled
       ├── Simulation: Enabled
       ├── Quantum: Enabled
       └── QPU: Restricted

    Tenant B
       ├── Workflow: Enabled
       ├── Simulation: Enabled
       ├── Quantum: Disabled
       └── QPU: Disabled

The configuration must still be constrained by platform-wide capabilities and authorization policies.

---

# Tenant Configuration

A tenant configuration model may contain:

    Tenant Configuration
    ├── Identity
    ├── Administration
    ├── Services
    ├── Policies
    ├── Quotas
    ├── Resources
    ├── Environments
    ├── Integrations
    └── Audit

Configuration should be versioned where changes affect reproducibility or operational behavior.

---

# Tenant Environments

A tenant may contain multiple environments.

For example:

    Tenant
      │
      ├── Development
      ├── Test
      ├── Staging
      └── Production

Alternatively, a tenant may operate only a development environment.

Environment context may affect:

- available services;
- resource access;
- deployment permissions;
- workflow execution;
- data access;
- logging;
- policy;
- approval requirements.

Environment is therefore an additional context dimension rather than a replacement for tenant identity.

---

# Tenant and PaaS

The QAI PaaS is expected to operate within tenant boundaries.

A conceptual structure is:

    Tenant
      │
      ▼
    PaaS Workspace
      │
      ├── Projects
      ├── IDE
      ├── Notebooks
      ├── Workflows
      ├── Virtual Assets
      ├── Experiments
      ├── Resources
      ├── Results
      └── Evidence

Tenant context should be established before tenant-scoped PaaS operations are performed.

---

# Tenant and SaaS

The future SaaS layer may expose controlled tenant-scoped application capabilities.

For example:

    SaaS
      │
      ├── Tenant Dashboard
      ├── Projects
      ├── Workflow Consumption
      ├── Results
      ├── Reports
      └── Evidence

SaaS users should not automatically receive PaaS-level engineering privileges merely because both layers use the same underlying services.

---

# Tenant and Micro-Frontends

Micro-frontends may display tenant context and tenant-scoped data.

Potential tenant-aware views include:

- tenant dashboard;
- project list;
- resource view;
- workflow view;
- experiment view;
- results view;
- evidence view;
- administration view.

The microfrontend should consume tenant context from the authenticated platform session or API rather than independently determining authorization.

---

# API Gateway Relationship

The API Gateway provides the external access boundary.

A typical flow is:

    Client
      │
      ▼
    API Gateway
      │
      ├── Authentication
      ├── Tenant Context
      └── Authorization
      │
      ▼
    Tenant Manager / Services
      │
      ▼
    General Factory

The API Gateway should propagate appropriate tenant and identity context to downstream services.

---

# Service Integration

The Tenant Manager may provide tenant context to:

- Project Management Service;
- Experiment Management Service;
- Workflow Service;
- Virtual Asset Service;
- Resource Management Service;
- Simulation Service;
- Quantum Resources Service;
- Evidence Service;
- Deployment Service;
- Administration Service.

This allows services to remain tenant-aware without implementing independent tenant models.

---

# General Factory Relationship

The Tenant Manager does not replace the General Factory.

A tenant-scoped operation may eventually follow:

    Tenant Context
          │
          ▼
    Service Request
          │
          ▼
    General Factory
          │
          ├── Registry
          ├── Connector
          ├── Adapter
          └── Runtime
          │
          ▼
    Implementation

Tenant context constrains the operation; the General Factory resolves the implementation.

---

# Resource Fabric Relationship

Tenant resource requirements may influence resource resolution.

For example:

    Tenant
      │
      ├── Resource Policy
      ├── Quota
      └── Project Requirement
              │
              ▼
        Resource Fabric
              │
              ▼
        Available Resource
              │
              ▼
        Execution

The Tenant Manager should not directly select a GPU, QPU, HPC cluster or other physical resource when that responsibility belongs to the Resource Fabric.

---

# Workflow Tenant Isolation

Workflow operations should retain tenant context throughout their lifecycle.

Example:

    Tenant
      │
      ▼
    Workflow Definition
      │
      ▼
    Workflow Execution
      │
      ├── Virtual Assets
      ├── Resources
      ├── AI/ML
      ├── Quantum
      └── Simulation
      │
      ▼
    Results
      │
      ▼
    Evidence

Execution results and evidence must remain associated with the appropriate tenant and project context.

---

# Experiment Tenant Isolation

Experiments should be tenant-scoped through their project relationship.

Example:

    Tenant
      │
      ▼
    Project
      │
      ▼
    Experiment
      │
      ├── Inputs
      ├── Parameters
      ├── Runs
      ├── Metrics
      └── Results
              │
              ▼
          Evidence

This provides traceability without requiring the Experiment Service to recreate the complete tenant-management model.

---

# Virtual Asset Tenant Isolation

Virtual assets should be associated with an appropriate tenant and project scope.

Potential hierarchy:

    Tenant
      │
      ▼
    Project
      │
      ▼
    Virtual Asset
      │
      ├── Configuration
      ├── State
      ├── Relationships
      └── Execution Context

This is particularly important for digital-twin and virtual-first implementations where asset state may influence execution.

---

# Evidence and Audit Context

Tenant context should be captured where appropriate in evidence and audit records.

Useful metadata may include:

- tenant identifier;
- project identifier;
- user/service identity;
- operation;
- timestamp;
- service;
- execution identifier;
- workflow version;
- resource context;
- result reference.

This supports:

- traceability;
- reproducibility;
- operational investigation;
- compliance workflows;
- tenant-level administration.

---

# Data Isolation

Tenant-aware data access should enforce tenant boundaries at the service/data layer.

Potential approaches include:

- tenant-scoped database queries;
- row-level security;
- tenant-specific schemas;
- tenant-specific databases;
- isolated object-storage namespaces;
- isolated file/workspace paths;
- tenant-specific encryption contexts where required.

The implementation should select the appropriate mechanism for the deployment profile and security requirements.

---

# Storage Isolation

Tenant-scoped storage may be represented as:

    Storage
      │
      ├── Tenant A
      │     ├── Projects
      │     ├── Results
      │     └── Evidence
      │
      ├── Tenant B
      │     ├── Projects
      │     ├── Results
      │     └── Evidence
      │
      └── Tenant C

The physical storage implementation may vary.

The logical tenant boundary must remain consistent.

---

# Tenant Deletion and Archival

Tenant deletion is potentially destructive and should therefore be controlled.

A conceptual process is:

    Active
      │
      ▼
    Decommissioning
      │
      ├── Stop New Operations
      ├── Complete / Cancel Jobs
      ├── Preserve Required Evidence
      ├── Export Required Data
      └── Apply Retention Policies
      │
      ▼
    Archived
      │
      ▼
    Deletion
      │
      ▼
    Confirmation

Deletion policies should consider:

- legal retention;
- audit requirements;
- evidence retention;
- project ownership;
- resource release;
- backups;
- external integrations;
- data export.

The Tenant Manager should orchestrate tenant lifecycle state rather than independently deleting every downstream artifact.

---

# Tenant Suspension

A tenant may be suspended for operational or administrative reasons.

Suspension may prevent:

- new project creation;
- new workflow submission;
- resource allocation;
- deployment;
- user access;
- API operations.

Existing operations may be:

- allowed to complete;
- paused;
- cancelled;

depending on platform policy.

The exact behavior should be explicitly defined rather than assumed.

---

# Tenant Provisioning

Tenant provisioning may involve multiple platform services.

Example:

    Create Tenant
        │
        ├── Create Tenant Record
        ├── Create Administrative Context
        ├── Configure Services
        ├── Configure Policies
        ├── Configure Quotas
        ├── Establish Workspace
        └── Establish Audit Context
        │
        ▼
    Tenant Active

Infrastructure provisioning, where required, should be delegated to the appropriate deployment/IaaS mechanisms.

---

# Tenant Resource Allocation

Tenant-level resource allocation may involve:

- quota assignment;
- resource visibility;
- resource policy;
- priority;
- allowed resource classes;
- environment restrictions.

The actual resource resolution remains outside the Tenant Manager.

For example:

    Tenant Policy
       │
       ▼
    Resource Requirement
       │
       ▼
    Resource Fabric
       │
       ▼
    Resource Backend

---

# Tenant Policies

Tenant-specific policies may include:

- service availability;
- resource quotas;
- execution restrictions;
- environment access;
- data retention;
- deployment permissions;
- workflow permissions;
- quantum backend access;
- administrative permissions.

Policies should be represented separately from implementation code where practical.

---

# Tenant Feature Configuration

Feature availability may be tenant-scoped.

Potential features include:

- visual workflow;
- notebooks;
- simulation;
- AI/ML;
- quantum execution;
- digital twins;
- virtual assets;
- advanced resource management.

Feature configuration should not be treated as a substitute for authorization.

A feature may be enabled while individual operations remain restricted.

---

# Security

Tenant management is a security-sensitive platform capability.

Important controls include:

- authenticated access;
- server-side authorization;
- tenant-context validation;
- project-context validation;
- least privilege;
- secure tenant identifiers;
- audit logging;
- protected configuration;
- secret protection;
- isolation testing;
- secure administrative operations.

Tenant identifiers should not be treated as secrets, but they must never be relied upon alone as proof of authorization.

---

# Isolation Failure Prevention

The implementation should explicitly guard against:

- cross-tenant data access;
- cross-tenant workflow execution;
- cross-tenant resource access;
- cross-tenant evidence exposure;
- cross-tenant configuration access;
- tenant-context substitution;
- unauthorized tenant switching;
- insecure service-to-service calls.

Tenant isolation should be tested at the API and service layers rather than only through the user interface.

---

# Tenant Switching

A user may belong to multiple tenants.

For example:

    User
      │
      ├── Tenant A
      ├── Tenant B
      └── Tenant C

Tenant selection should produce an explicit tenant context.

The platform should validate that the authenticated identity is authorized to operate within the selected tenant.

Tenant switching must not allow the caller to arbitrarily change a tenant identifier in a request and gain access to another tenant.

---

# Multi-Tenant User Model

A user may have different roles in different tenants.

Example:

    User
      │
      ├── Tenant A → Administrator
      ├── Tenant B → Developer
      └── Tenant C → Viewer

Therefore, authorization should evaluate the combination of:

- identity;
- tenant;
- project;
- role;
- operation;
- resource;
- policy.

A global role should not automatically imply identical permissions in every tenant.

---

# Service-to-Service Tenant Context

Internal services must preserve tenant context where required.

Example:

    Project Service
        │
        ▼
    Workflow Service
        │
        ▼
    Experiment Service
        │
        ▼
    Resource Service
        │
        ▼
    Evidence Service

The tenant context should be propagated securely across these interactions.

A downstream service should not simply trust an arbitrary tenant identifier supplied by an untrusted client.

---

# Observability

Tenant-aware observability should support:

- tenant-scoped metrics;
- tenant-scoped logs;
- request correlation;
- lifecycle events;
- provisioning status;
- resource usage;
- service usage;
- failed operations;
- administrative actions.

Care should be taken to prevent sensitive tenant information from being exposed in inappropriate operational dashboards.

---

# Tenant Audit

Important tenant lifecycle events may include:

- tenant created;
- tenant configured;
- administrator assigned;
- service enabled;
- service disabled;
- quota changed;
- policy changed;
- tenant suspended;
- tenant reactivated;
- tenant archived;
- tenant deleted.

Audit records should be tamper-resistant to the extent required by the deployment and governance model.

---

# Availability and Resilience

The Tenant Manager is a platform dependency.

Failure may affect access to tenant-scoped operations.

Therefore, implementation should consider:

- service health checks;
- redundancy;
- configuration backup;
- recovery procedures;
- failure handling;
- controlled degradation.

A failure in tenant management should not silently result in cross-tenant access.

A conservative default is to deny tenant-scoped operations when required tenant context cannot be safely established.

---

# Local Development

Local development may use a simplified tenant model.

For example:

    Local Development Tenant
        │
        ├── Project
        ├── Workflow
        ├── Experiment
        └── Virtual Assets

The local implementation should nevertheless preserve the logical tenant boundary so that service behavior remains representative of deployed environments.

---

# PaaS Development Model

Within the QAI PaaS, tenant context may be established when a user enters a workspace.

Example:

    Login
      │
      ▼
    Tenant Selection
      │
      ▼
    Project Selection
      │
      ▼
    PaaS Workspace
      │
      ├── Code
      ├── Notebook
      ├── Workflow
      ├── Experiment
      ├── Resources
      └── Results

This supports controlled engineering workspaces while preserving tenant isolation.

---

# SaaS Consumption Model

In SaaS, tenant selection may be implicit when a user belongs to a single tenant.

For multi-tenant users, explicit selection may still be required.

The underlying service APIs should continue to operate with explicit tenant context even if the user interface hides that complexity.

---

# Post-Pilot Demonstrator

A useful demonstrator should prove the basic tenant lifecycle and isolation model.

Example:

    1. Create Tenant A
    2. Create Tenant B
    3. Create Project A1 under Tenant A
    4. Create Project B1 under Tenant B
    5. Create workflow in A1
    6. Execute workflow
    7. Generate results/evidence
    8. Verify Tenant A can access A1
    9. Verify Tenant B cannot access A1
    10. Verify resource operations retain tenant context
    11. Suspend Tenant A
    12. Verify restricted operations are rejected
    13. Reactivate Tenant A
    14. Verify authorized operations resume

This provides a practical validation of tenant lifecycle and isolation without requiring a complete production multi-tenant platform.

---

# Relationship to the Agriculture Digital Farm Pilot

The Agriculture Digital Farm pilot is primarily an application/evidence source rather than a tenant-management architecture.

Reusable patterns may include:

- project ownership;
- asset ownership;
- execution context;
- resource context;
- evidence ownership;
- environment separation.

These patterns can inform tenant-aware platform design.

However, agriculture-specific concepts should not be promoted into the generic Tenant Manager unless they represent genuinely reusable platform capabilities.

---

# Relationship to Virtual-First

Tenant context should remain available across virtual-first execution.

For example:

    Tenant
      │
      ▼
    Project
      │
      ▼
    Virtual Assets
      │
      ▼
    Virtual Execution
      │
      ├── Simulation
      ├── Emulation
      └── AI / Quantum
      │
      ▼
    Results / Evidence

This ensures that virtual execution remains attributable to the correct tenant and project.

---

# Relationship to General Factory Reference Implementations

The Tenant Manager may integrate with reference implementations in:

- `reference_implementations/qai_platform/`
- `reference_implementations/cloud/`
- `reference_implementations/resource_backends/`
- `reference_implementations/workflow/`
- `reference_implementations/emulation/`
- `reference_implementations/simulation/`
- `reference_implementations/ai_ml/`
- `reference_implementations/quantum/`
- `reference_implementations/virtual_first/`

These provide implementation capabilities that operate within tenant context.

They do not replace the Tenant Manager.

---

# Suggested Directory Structure

A future implementation may organize this directory as:

    tenant_manager/
    ├── README.md
    ├── api/
    ├── models/
    ├── lifecycle/
    ├── context/
    ├── policies/
    ├── quotas/
    ├── isolation/
    ├── administration/
    ├── audit/
    ├── adapters/
    ├── tests/
    └── examples/

The exact implementation structure may evolve as the reference implementation matures.

---

# Example Logical Tenant Model

A conceptual tenant model may contain:

    Tenant
    ├── tenant_id
    ├── name
    ├── type
    ├── status
    ├── owner
    ├── administrators
    ├── configuration
    ├── policies
    ├── quotas
    ├── enabled_services
    ├── environments
    ├── resource_context
    ├── created_at
    ├── updated_at
    └── lifecycle_metadata

This is a conceptual model rather than a finalized database schema.

---

# Non-Goals

The Tenant Manager does not define:

- the General Framework semantic model;
- the complete authorization policy engine;
- the authentication provider;
- project-management semantics;
- workflow semantics;
- workflow execution engine;
- resource-resolution architecture;
- physical infrastructure provisioning;
- a specific database technology;
- a specific cloud provider;
- physical QPU access;
- complete billing/accounting;
- a production SaaS product by itself.

---

# Scope

The Tenant Manager covers:

- tenant lifecycle;
- tenant identity;
- tenant context;
- tenant configuration;
- tenant administration;
- tenant isolation;
- tenant/project relationships;
- tenant quotas;
- tenant resource context;
- tenant service configuration;
- tenant audit context;
- integration with authentication and authorization;
- integration with platform services;
- integration with the General Factory;
- integration with the Resource Fabric.

---

# Current Status

**Status:** Post-pilot architecture / reference implementation definition.

The Tenant Manager establishes the logical boundary required for tenant-aware Web Platform, PaaS and future SaaS operation.

The architecture defines the intended responsibility boundary; it does not imply that a production-grade multi-tenant implementation is already complete.

---

# Guiding Principles

The central principles are:

> **Authentication establishes identity.**

> **Tenant Manager establishes tenant context and lifecycle.**

> **Authorization determines permitted operations.**

> **Services implement tenant-scoped capabilities.**

> **General Factory resolves implementations.**

> **Resource Fabric resolves resources.**

> **Infrastructure provides execution resources.**

Maintaining these boundaries prevents tenant management from becoming a monolithic platform authority and allows the Web Platform to evolve across different deployment and product models.

---

# Future Evolution

Future development may include:

- tenant service implementation;
- tenant API specification;
- tenant data model;
- tenant lifecycle workflows;
- tenant provisioning automation;
- tenant isolation testing;
- tenant-aware service contracts;
- tenant quota enforcement;
- tenant resource policies;
- tenant-level feature configuration;
- tenant audit implementation;
- tenant observability;
- tenant-aware PaaS workspaces;
- SaaS tenant administration;
- dedicated and shared tenant deployment profiles;
- automated tenant conformance tests;
- tenant migration and export;
- tenant backup and recovery;
- controlled tenant archival and deletion.

The Tenant Manager is therefore intended to become the reusable **tenant lifecycle and isolation boundary** for the General Factory Web Platform while preserving clear separation between identity, authorization, services, factory resolution, resource resolution and infrastructure.

---

# General Factory - Common Web Platform

## Purpose

Contains the implementation side of the Common Web Platform.

This directory provides common Factory infrastructure and is intentionally outside:

- `pilot_assets/`
- `post_pilot_assets/`

The Common Web Platform is a shared implementation capability that may be consumed by pilot assets, post-pilot assets, products, PaaS workspaces, SaaS applications and deployment environments.

```text
General Factory
│
├── pilot_assets/
│
├── post_pilot_assets/
│
└── web_platform/
        ↓
   Common Web Platform
        ↓
   Shared Web Access / Platform Services
        ↓
   Pilot / Post-Pilot / PaaS / SaaS / Deployment
```

The Web Platform is therefore a **common Factory infrastructure layer**, rather than a pilot or post-pilot asset category.

~~~

## Factory Responsibilities

The Factory realizes the Framework Web Platform definitions.

Potential implementation areas include:

- Web Shell
- Micro-frontends
- API Gateway
- Authentication
- Authorization
- Platform Services
- Workspace Management
- Tenant Management
- SaaS
- PaaS
- IaaS integration
- Deployment services
- Common UI services
- Project services
- Resource access
- Execution access
- Observability
- Common web security
- Web-based administration

The exact implementation set should evolve incrementally from validated platform requirements.

~~~

## Architectural Boundary

The fundamental separation is:

```text
General Framework
      ↓
Defines WHAT the Web Platform is

General Factory
      ↓
Implements HOW the Web Platform works

Applications / Products / Deployments
      ↓
Consume the Web Platform
```

The Web Platform implementation should therefore implement Framework contracts rather than redefine them.

~~~

## Common Infrastructure Boundary

The Web Platform is intentionally outside:

```text
pilot_assets/
post_pilot_assets/
```

This distinction is important because the Web Platform may be used by both.

```text
Common Web Platform
        │
        ├── Pilot Applications
        │
        ├── Post-Pilot Applications
        │
        ├── PaaS
        │
        ├── SaaS
        │
        └── Deployment Interfaces
```

A web application consuming the platform may belong to a pilot or post-pilot asset, while the underlying common web infrastructure remains here.

~~~

## Web Access Layer

The Common Web Platform provides the implementation foundation for the common **Web Access Layer**.

Conceptually:

```text
User / Client / Operator
          ↓
     Web Access Layer
          ↓
   Common Web Platform
          ↓
   General Factory
          ↓
 Modules / Packages / Runtime / Resources
```

The Web Access Layer provides controlled access to Factory capabilities without exposing internal implementation details unnecessarily.

~~~

## Web Shell

The Web Shell provides the common application container or host experience.

It may provide:

- Navigation
- Identity context
- Tenant context
- Workspace context
- Application loading
- Micro-frontend composition
- Common notifications
- Common status
- Common user preferences
- Shared UI services

The Web Shell should provide common experience infrastructure rather than contain domain-specific application logic.

~~~

## Micro-frontends

Micro-frontends may provide modular user experiences for different Factory capabilities.

Potential areas include:

```text
Web Shell
   ├── Administration
   ├── Projects
   ├── Workspaces
   ├── Experiments
   ├── Workflows
   ├── Resources
   ├── Deployments
   ├── Products
   └── Monitoring
```

Micro-frontends are primarily a presentation and application-composition mechanism.

They do not replace server-side authorization or execution controls.

~~~

## Role-Aware Experience

The same underlying capability may be presented differently according to the user's authorized role.

Examples include:

```text
Executive
    ↓
KPIs / Status / Results

Business Analyst
    ↓
Parameters / Assumptions / Results

Domain Expert
    ↓
Domain Inputs / Outputs

Data Scientist
    ↓
Data / Models / Experiments

QAI Developer
    ↓
Code / Workflow / Runtime

Systems Engineer
    ↓
Interfaces / Resources / Execution

Administrator
    ↓
Security / Configuration / Operations
```

Presentation differences should not be treated as the security boundary.

~~~

## API Gateway

The API Gateway may provide the controlled entry point between Web Platform clients and Factory services.

```text
Web Client
     ↓
API Gateway
     ↓
Factory Services
     ↓
Factory Core / Modules / Packages
```

Potential responsibilities include:

- API routing
- Authentication integration
- Authorization enforcement
- Rate limiting
- Request validation
- Service discovery
- Versioning
- Observability
- Error handling

~~~

## Authentication

The Web Platform may integrate with common identity providers and authentication mechanisms.

Authentication establishes the identity associated with a request.

```text
User / Service
      ↓
Authentication
      ↓
Identity
      ↓
Authorized Request
```

Authentication should remain separate from authorization.

~~~

## Authorization

Authorization determines what an authenticated identity is permitted to access or execute.

Potential authorization dimensions include:

- User
- Role
- Organization
- Tenant
- Project
- Workspace
- Resource
- Capability
- Environment
- Operation

```text
Identity
   +
Context
   +
Policy
      ↓
Authorization Decision
```

Authorization should be enforced at the service and execution boundaries.

~~~

## Tenant Management

The Web Platform may provide multi-tenant management where required.

A tenant may represent:

- Organization
- Client
- Business unit
- Project environment
- Other controlled organizational boundary

Tenant context may affect:

- Identity
- Data access
- Workspaces
- Resources
- Applications
- Configuration
- Policies
- Billing / quotas where applicable

Tenant isolation requirements should be enforced by the backend services, not only by the UI.

~~~

## Workspace Management

The Web Platform may provide controlled workspaces for:

- Projects
- Experiments
- Engineering
- Development
- Data
- Deployment
- Administration

Conceptually:

```text
Tenant
   ↓
Workspace
   ↓
Project
   ↓
Assets / Experiments / Workflows
```

The exact hierarchy may vary by deployment model.

~~~

## PaaS

The Web Platform provides the access layer for the Factory PaaS.

Conceptually:

```text
User
 ↓
Web Access Layer
 ↓
PaaS
 ↓
Project Engineering Workspace
 ↓
General Factory
```

PaaS may provide controlled access to:

- Development environments
- Online IDEs
- Notebooks
- Virtual assets
- Workflows
- Simulation
- Emulation
- Resource configuration
- Testing
- Execution

~~~

## Online Development Workspace

The PaaS workspace may provide an online development environment.

Potential components include:

```text
Project Workspace
      ↓
Online IDE
   ├── VS Code
   └── Eclipse
      ↓
Project Runtime
      ↓
Windows / Linux / Containers
      ↓
CPU / GPU / HPC / Simulator / QPU
```

Specific technologies are implementation choices and should remain behind the appropriate Factory interfaces.

~~~

## SaaS

The Web Platform provides the common access layer for SaaS products.

Conceptually:

```text
Client
  ↓
Web Access Layer
  ↓
SaaS Application
  ↓
Factory Services
  ↓
Execution / Resources
```

SaaS provides controlled consumption of validated platform capabilities without requiring the client to operate the underlying engineering environment.

~~~

## SaaS and PaaS Relationship

The Web Platform supports both SaaS and PaaS while preserving their different purposes.

```text
PaaS
 ↓
Engineering / Development
 ↓
Validate / Package
 ↓
SaaS
 ↓
Controlled Consumption
```

PaaS is therefore the engineering surface, while SaaS is the consumption surface.

~~~

## IaaS Integration

The Web Platform may expose controlled management or consumption interfaces for infrastructure resources.

```text
Web Access Layer
       ↓
IaaS / Resource Services
       ↓
Resource Fabric
       ↓
CPU / GPU / HPC / Storage / Network / QPU
```

The Web Platform should not redefine the underlying resource model.

It provides access to Factory resource capabilities.

~~~

## Platform Services

Common platform services may include:

- Project management
- Workspace management
- Tenant management
- Configuration
- Identity
- Authorization
- Resource access
- Workflow access
- Experiment access
- Deployment access
- Notification
- Audit
- Observability
- Evidence access

These services should be reusable across multiple applications.

~~~

## Project Management

The Web Platform may provide project-level organization of Factory activities.

A project may reference:

- Users
- Workspaces
- Assets
- Modules
- Packages
- Experiments
- Workflows
- Resources
- Deployments
- Evidence

```text
Project
 ├── Assets
 ├── Experiments
 ├── Workflows
 ├── Packages
 ├── Resources
 └── Deployments
```

~~~

## Resource Access

The Web Platform may provide controlled user-facing access to Factory resources.

```text
User
  ↓
Web Platform
  ↓
Resource Service
  ↓
Resource Fabric
  ↓
Available Resource
```

Users should normally request capabilities or approved resource classes rather than directly manipulating infrastructure without Factory controls.

~~~

## Execution Access

The Web Platform may provide interfaces for submitting and observing workloads.

```text
User
  ↓
Web Platform
  ↓
Execution API
  ↓
Factory Core
  ↓
Scheduler
  ↓
Resource Resolver
  ↓
Runtime
```

This allows execution to remain controlled by Factory mechanisms.

~~~

## Experiment Access

Web applications may provide interfaces for experimentation.

```text
Experiment Workspace
      ↓
Experiment Definition
      ↓
Scenario
      ↓
Workflow
      ↓
Execution
      ↓
Results
```

The Web Platform provides the user experience and service access.

Experimentation remains a Factory implementation capability.

~~~

## Deployment Access

The Web Platform may provide controlled interfaces to deployment functions.

```text
Deployment Request
       ↓
Web Platform
       ↓
Bootstrapper / Deployment Services
       ↓
Package Resolution
       ↓
Configuration
       ↓
Validation
       ↓
Deployment
```

Deployment controls should remain enforced server-side.

~~~

## Web Platform and Factory Core

The Common Web Platform consumes Factory Core services.

```text
Web Platform
      ↓
Factory APIs / Services
      ↓
Factory Core
      ↓
Modules / Packages / Runtime / Resources
```

The Web Platform should not duplicate core scheduling, resource management or lifecycle mechanisms.

~~~

## Web Platform and Modules

Modules provide functional capabilities.

The Web Platform provides access to those capabilities.

```text
Web Platform
      ↓
Module API
      ↓
Factory Module
```

A module should remain usable through non-web interfaces where appropriate.

~~~

## Web Platform and Packages

Packages may be selected, configured or deployed through Web Platform interfaces.

```text
Web Platform
      ↓
Package Service
      ↓
Deployment Package
      ↓
Bootstrapper
```

The package remains an implementation asset rather than becoming a UI-specific construct.

~~~

## Web Platform and Experimentation

The Web Platform may provide the user interface for Factory experimentation.

```text
Web Platform
      ↓
Experiment Service
      ↓
Experimentation
      ↓
Factory Core
      ↓
Execution
```

Notebooks may be embedded or launched through the workspace where appropriate.

~~~

## Web Platform and Deployment

The Web Platform may provide deployment management interfaces.

Potential functions include:

- Create deployment request
- Select profile
- Select package
- Configure
- Validate
- Dry-run
- Generate
- Deploy
- Observe
- Manage lifecycle

```text
Web Interface
      ↓
Deployment Service
      ↓
General Factory Bootstrapper
      ↓
Generated Deployment
```

~~~

## Security Boundary

The Web Platform is an access boundary, not the only security boundary.

Security should be enforced across:

```text
User
 ↓
Web Platform
 ↓
API
 ↓
Factory Services
 ↓
Runtime
 ↓
Resource
```

The UI should never be relied upon as the sole mechanism for restricting access.

~~~

## Governance and Approval

The Web Platform may expose governance and approval workflows.

Potential activities include:

- Access requests
- Resource approvals
- Deployment approvals
- Experiment approvals
- Policy acknowledgement
- Evidence review

```text
Request
  ↓
Policy
  ↓
Approval if Required
  ↓
Factory Execution
```

~~~

## Observability

The Web Platform may expose Factory operational information such as:

- Execution status
- Resource utilization
- Workflow state
- Experiment status
- Deployment state
- Errors
- Events
- Metrics
- Evidence

The underlying observability mechanisms remain Factory services.

~~~

## Evidence and Provenance

The Web Platform may provide access to evidence generated by Factory activities.

```text
Execution
   ↓
Evidence
   ↓
Evidence Service
   ↓
Web Platform
   ↓
Authorized User
```

Evidence access should preserve authorization and provenance.

~~~

## Technology Neutrality

The Common Web Platform is an implementation layer, but its architecture should remain aligned with technology-neutral Framework contracts.

Technology-specific choices may include:

- Web frameworks
- Front-end frameworks
- API technologies
- Identity providers
- Cloud services
- Container platforms
- IDE technologies
- Databases
- Hosting environments

These are implementation choices rather than definitions of the Framework Web Platform.

~~~

## Reference Implementations

Technology-specific Web Platform implementations may be maintained as reference implementations where useful.

A reference implementation should document:

- Technology
- Version
- Capability
- Interfaces
- Configuration
- Deployment
- Limitations
- Evidence

Reference implementations demonstrate **how** the Framework capability can be realized.

They do not redefine **what** the Framework capability means.

~~~

## Common Versus Application-Specific Web Components

The following distinction should be maintained:

```text
Common Web Platform
    ↓
Reusable infrastructure

Application
    ↓
Application-specific experience

Product
    ↓
Product-specific functionality

Client Deployment
    ↓
Client-specific configuration
```

A reusable web component should remain in the Common Web Platform only when it provides genuine cross-application value.

~~~

## Pilot Consumption

Pilot applications may consume the Common Web Platform.

```text
Common Web Platform
       ↓
Pilot Application
       ↓
Pilot Experiment / Demonstration
```

Pilot applications remain under their appropriate pilot asset boundaries.

The Web Platform itself does not become a pilot asset merely because a pilot consumes it.

~~~

## Post-Pilot Consumption

Post-pilot products and deployments may also consume the same platform.

```text
Common Web Platform
       ↓
Post-Pilot Product / Deployment
```

This supports reuse of the same access infrastructure across the platform lifecycle.

~~~

## Lifecycle

The Common Web Platform has its own implementation lifecycle.

```text
Framework Definition
       ↓
Factory Implementation
       ↓
Reference Implementation
       ↓
Validation
       ↓
Common Platform Capability
       ↓
Controlled Evolution
```

Changes should consider their impact on all consuming applications.

~~~

## Versioning

Common Web Platform components should be versioned appropriately.

Changes may affect:

- APIs
- Authentication
- Authorization
- Web Shell
- Micro-frontends
- Workspaces
- Tenancy
- SaaS
- PaaS
- Deployment interfaces
- Shared services

Compatibility should be evaluated before promoting breaking changes.

~~~

## Current Structure

The current directory establishes the common Factory implementation boundary.

Potential future organization may include:

```text
web_platform/
├── web_shell/
├── micro_frontends/
├── api_gateway/
├── authentication/
├── authorization/
├── platform_services/
├── workspace/
├── tenancy/
├── paas/
├── iaas/
├── saas/
└── deployment/
```

These are logical implementation areas and should be created incrementally as actual implementation requirements emerge.

~~~

## Current Scope

The current purpose of `web_platform/` is to provide the common Factory implementation boundary for:

- Web Access Layer
- Web Shell
- Micro-frontends
- API Gateway
- Authentication
- Authorization
- Platform Services
- Workspace Management
- Tenant Management
- PaaS access
- IaaS/resource access
- SaaS access
- Deployment access

The directory should remain common infrastructure rather than becoming another application repository.

~~~

## Guiding Principles

1. The Common Web Platform is shared Factory infrastructure.
2. It remains outside `pilot_assets/` and `post_pilot_assets/`.
3. Pilot and post-pilot applications may consume it.
4. The Framework defines WHAT the Web Platform is.
5. The Factory defines HOW it is implemented.
6. Web access should be controlled through APIs and Factory services.
7. Authentication and authorization are distinct responsibilities.
8. UI presentation must not be treated as the security boundary.
9. Tenant and workspace isolation must be enforced by backend services.
10. PaaS provides controlled engineering access.
11. SaaS provides controlled consumption.
12. IaaS provides controlled infrastructure/resource access where applicable.
13. Modules and packages remain independent Factory implementation assets.
14. Factory Core remains the common execution foundation.
15. Technology-specific implementations should remain behind appropriate Factory boundaries.
16. Common components should be reused rather than duplicated across applications.
17. Breaking changes to common services should be controlled and versioned.
18. Evidence, provenance, security and governance should remain integrated into the platform.
19. The Web Platform should expose Factory capabilities without exposing unnecessary internal implementation details.
20. The Web Platform is an access and application infrastructure layer, not a replacement for the General Factory.

~~~

## Boundary Summary

```text
                    COMMON WEB PLATFORM
                           │
          ┌────────────────┼────────────────┐
          │                │                │
         SaaS             PaaS             IaaS
          │                │                │
          └────────────────┼────────────────┘
                           ↓
                    General Factory
                           ↓
                     Factory Core
                           ↓
              Modules / Packages / Runtime
                           ↓
              Resources / Execution / Evidence


Framework
   ↓
Defines WHAT

Web Platform / Factory
   ↓
Implements HOW

Pilot / Post-Pilot / Product / Client
   ↓
Consumes the Common Platform
```

## Guiding Statement

**The Common Web Platform is the shared Factory access and application infrastructure through which users, applications, products and deployments interact with General Factory capabilities.**

**Keep the Web Platform common, keep application-specific logic outside it, and use it as the controlled access layer to the Factory rather than as a replacement for the Factory itself.**
~~~
---

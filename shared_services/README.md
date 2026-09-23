# Shared Services

Common cross-platform services used by the General Framework, General Factory, QAI Platform Development, service models and deployments.

Shared Services provide capabilities that should be reused across multiple platform layers rather than independently implemented by individual products, workflows or projects.

The initial shared-service domains are:

- Governance
- Identity
- Knowledge
- Security

The Shared Services layer is therefore a **common supporting layer**, not a replacement for the General Framework or General Factory.

~~~

## 1. Purpose

Shared Services provide common capabilities required across multiple platform components.

They support:

- Governance
- Identity and access
- Knowledge management
- Security
- Policy enforcement
- Shared metadata
- Common controls
- Audit and evidence
- Cross-platform consistency

The objective is to avoid duplicating foundational services across:

- General Framework
- General Factory
- PaaS
- IaaS
- SaaS
- QAI Lab
- Industry solutions
- Client deployments
- Deployment packages

~~~

## 2. Architectural Position

Shared Services sit alongside the core platform layers and are consumed by them.

```text
                    Shared Services
             ┌────────┬────────┬────────┐
             │        │        │        │
        Governance Identity Knowledge Security
             │        │        │        │
             └────────┴────────┴────────┘
                         │
                         ↓
                 General Framework
                         ↓
                  General Factory
                         ↓
              PaaS / IaaS / SaaS
                         ↓
             Industry / Client Deployment
```

Shared Services therefore provide common cross-cutting capabilities rather than becoming another execution layer.

~~~

## 3. Relationship to General Framework

The General Framework defines the logical architecture and contracts.

Shared Services provide common supporting capabilities required by those definitions.

Examples:

```text
Framework
  ↓
Governance Requirements
  ↓
Governance Shared Service
```

```text
Framework
  ↓
Identity / Access Requirements
  ↓
Identity Shared Service
```

```text
Framework
  ↓
Knowledge / Metadata Requirements
  ↓
Knowledge Shared Service
```

```text
Framework
  ↓
Security Requirements
  ↓
Security Shared Service
```

The Framework remains the architectural authority.

~~~

## 4. Relationship to General Factory

The General Factory implements and executes platform capabilities.

Shared Services provide common services that Factory components can consume.

```text
General Factory
      │
      ├── Governance
      ├── Identity
      ├── Knowledge
      └── Security
```

Factory execution should therefore use common identity, policy, security and knowledge services rather than creating isolated implementations for every workflow or backend.

~~~

## 5. Initial Shared-Service Domains

The current structure is:

```text
shared_services/
│
├── governance/
├── identity/
├── knowledge/
├── security/
└── README.md
```

These domains are intentionally broad.

Detailed implementation should evolve from actual platform requirements.

~~~

## 6. Governance

The Governance service provides common governance capabilities across the platform.

Potential responsibilities include:

- Policies
- Rules
- Approvals
- Roles
- Responsibilities
- Decision records
- Lifecycle controls
- Compliance references
- Audit
- Evidence
- Change governance
- Promotion controls

Governance should support both development-time and operational controls.

Example:

```text
Request
   ↓
Policy
   ↓
Authorization
   ↓
Approval where required
   ↓
Execution
   ↓
Evidence
```

~~~

## 7. Identity

The Identity service provides common identity and access capabilities.

Potential responsibilities include:

- User identity
- Organization identity
- Client identity
- Service identity
- Project identity
- Asset identity
- Role assignment
- Authentication integration
- Authorization context
- Identity lifecycle
- Service-to-service identity

Identity should support relationships such as:

```text
User
  ↓
Organization
  ↓
Project
  ↓
Role
  ↓
Capability
  ↓
Resource / Action
```

Identity should remain distinct from application-specific user interfaces.

~~~

## 8. Knowledge

The Knowledge service provides common access to platform knowledge and metadata.

Potential responsibilities include:

- Knowledge records
- Metadata
- Documentation
- Architectural definitions
- Asset information
- Capability information
- Reference information
- Provenance
- Relationships
- Search and discovery
- Knowledge lifecycle

Knowledge may connect:

```text
Knowledge
   ↓
Asset
   ↓
Capability
   ↓
Interface
   ↓
Implementation
   ↓
Evidence
```

The Knowledge service should support both human-readable and machine-readable platform information.

~~~

## 9. Security

The Security service provides common security capabilities across the platform.

Potential responsibilities include:

- Authentication integration
- Authorization
- Access control
- Secrets protection
- Data protection
- Secure communication
- Security policies
- Security monitoring
- Audit
- Threat controls
- Security classification
- Security evidence

Security should apply across:

- Users
- Projects
- Assets
- Workflows
- Resources
- Data
- Backends
- APIs
- Deployments

~~~

## 10. Cross-Cutting Nature

Shared Services are cross-cutting.

For example, a PaaS workflow may use:

```text
PaaS Workflow
     │
     ├── Identity
     ├── Governance
     ├── Security
     └── Knowledge
          ↓
      General Factory
          ↓
       Execution
```

A SaaS product may use the same services:

```text
SaaS Product
     │
     ├── Identity
     ├── Governance
     ├── Security
     └── Knowledge
          ↓
      General Factory
```

This allows the platform to maintain common controls across different user experiences.

~~~

## 11. Relationship to PaaS, IaaS and SaaS

Shared Services support all three service models.

### PaaS

Supports:

- Developer identity
- Project access
- Engineering policies
- Knowledge
- Secure resource access
- Evidence

### IaaS

Supports:

- Resource identity
- Resource authorization
- Infrastructure policies
- Security
- Resource knowledge
- Audit

### SaaS

Supports:

- Client identity
- Product access
- User authorization
- Product policies
- Knowledge
- Evidence
- Security

```text
                 Shared Services
                       │
        ┌──────────────┼──────────────┐
        ↓              ↓              ↓
       PaaS           IaaS           SaaS
    Engineering     Resources      Consumption
```

~~~

## 12. Relationship to Asset Synchronization

Shared Services should support the common asset synchronization model.

Relevant synchronized information includes:

- Identity
- Ownership
- Capabilities
- Interfaces
- Configuration
- Policies
- Security
- Provenance
- Lifecycle
- Maturity

For example:

```text
Framework Asset
      ↓
Factory Asset
      ↓
PaaS Asset
      ↓
SaaS Product
```

Shared Identity, Knowledge, Governance and Security services help maintain the relationship across these representations.

~~~

## 13. Governance and Security Separation

Governance and Security are related but should remain conceptually distinct.

### Governance

Determines:

- What is permitted
- Who is responsible
- What approvals are required
- What policies apply
- What evidence is required

### Security

Protects:

- Identity
- Data
- Resources
- Interfaces
- Systems
- Execution
- Communications

```text
Governance
    ↓
Policy / Decision
    ↓
Security Enforcement
    ↓
Controlled Action
```

This separation allows governance requirements to remain broader than technical security controls.

~~~

## 14. Knowledge and Provenance

Knowledge and provenance should work together.

```text
Source
  ↓
Knowledge
  ↓
Asset
  ↓
Implementation
  ↓
Experiment
  ↓
Result
  ↓
Evidence
```

This supports traceability across:

- Study samples
- Framework definitions
- Factory implementations
- Experiments
- Pilots
- Post-pilot assets
- Products
- Deployments

~~~

## 15. Shared Services and Reference Implementations

Technology-specific reference implementations may use Shared Services during experimentation.

For example:

```text
Reference Implementation
       ↓
Identity
       ↓
Security
       ↓
Knowledge
       ↓
Governance
       ↓
Experiment
```

However, the existence of a reference implementation should not automatically determine the architecture of the Shared Services.

The General Framework remains the architectural authority.

~~~

## 16. Shared Services and General Factory Bootstrapper

The General Factory Bootstrapper may eventually use Shared Services during deployment initialization.

Potential sequence:

```text
Deployment Request
       ↓
Identity Initialization
       ↓
Policy / Governance Configuration
       ↓
Security Configuration
       ↓
Knowledge / Metadata Initialization
       ↓
Factory Configuration
       ↓
Deployment Generation
       ↓
Validation
```

The current Bootstrapper MVP can remain simple while these shared capabilities are progressively integrated.

~~~

## 17. Shared Services and Enterprise Bootstrap

The Enterprise Bootstrapper operates at the higher Enterprise / Ecosystem layer.

Shared Services may provide capabilities consumed by both Enterprise and General Platform layers.

```text
Enterprise / Ecosystem
        ↓
Enterprise Bootstrapper
        ↓
Shared Services
        ↓
General Framework
        ↓
General Factory
```

The exact integration should be defined as the Enterprise Bootstrap architecture is further developed.

~~~

## 18. Shared Metadata

Shared Services may maintain or expose common metadata such as:

- User
- Organization
- Client
- Project
- Asset
- Capability
- Interface
- Workflow
- Resource
- Product
- Deployment
- Policy
- Evidence
- Version
- Lifecycle state

This metadata should support relationships across platform layers.

~~~

## 19. Shared Services and Evidence

Shared Services can support evidence collection and traceability.

Examples include:

- Authentication records
- Authorization decisions
- Approval records
- Configuration changes
- Execution records
- Security events
- Knowledge changes
- Asset lifecycle changes
- Deployment records

Evidence should be captured according to the applicable policy and retention requirements.

~~~

## 20. Shared Services and Lifecycle

Shared Services should support asset lifecycle management without owning the lifecycle of every asset.

For example:

```text
Candidate
   ↓
Experimental
   ↓
Pilot
   ↓
Validated
   ↓
Post-Pilot
   ↓
Productized
   ↓
Operational
   ↓
Retired
```

Governance provides lifecycle controls.

Knowledge preserves lifecycle information.

Identity identifies the responsible actors and assets.

Security protects the lifecycle operations.

~~~

## 21. Technology Neutrality

Shared Services should be defined at the logical level before selecting specific technologies.

Possible implementations may include:

- Identity providers
- Policy engines
- Knowledge stores
- Metadata services
- Security platforms
- Audit systems
- Enterprise directories
- Cloud services
- Open-source components

Technology selection should remain an implementation concern.

~~~

## 22. Progressive Implementation

Shared Services should evolve incrementally.

Initial implementations may use existing platform capabilities and simple controlled mechanisms.

The progression can be:

```text
Logical Definition
      ↓
Simple Implementation
      ↓
Pilot Integration
      ↓
Post-Pilot Service
      ↓
Reusable Platform Service
      ↓
Scaled Service
```

There is no requirement to implement a complete enterprise-grade shared-service platform before the General Factory and PaaS can be used.

~~~

## 23. Avoiding Duplication

Platform components should use Shared Services where a common capability already exists.

Avoid creating separate implementations of:

- Identity
- Access control
- Policy
- Security
- Knowledge
- Provenance

inside every product or workflow.

At the same time, domain-specific functionality should remain within the appropriate product or platform module.

~~~

## 24. Relationship to QAI Platform Development

Shared Services support the QAI Platform Development lifecycle:

```text
Discover
   ↓
Study
   ↓
Framework
   ↓
Factory
   ↓
Experiment
   ↓
Pilot
   ↓
Validate
   ↓
Post-Pilot
   ↓
PaaS / IaaS / SaaS
```

At each stage, the relevant common services can provide identity, governance, knowledge and security capabilities.

~~~

## 25. Current Scope

The current Shared Services scope consists of:

```text
shared_services/
│
├── governance/
├── identity/
├── knowledge/
└── security/
```

These four domains establish the initial common-service boundary.

Additional shared services should be introduced only when a genuine cross-platform requirement emerges.

~~~

## 26. Guiding Principles

Shared Services follow these principles:

1. Provide common capabilities used by multiple platform layers.
2. Do not replace the General Framework.
3. Do not replace the General Factory.
4. Keep governance distinct from security.
5. Keep identity distinct from user experience.
6. Preserve shared knowledge and provenance.
7. Support PaaS, IaaS and SaaS consistently.
8. Support pilot and post-pilot assets.
9. Support deployment and bootstrap processes.
10. Remain technology-neutral at the logical level.
11. Avoid duplicating cross-platform capabilities.
12. Implement incrementally.
13. Introduce additional services only when justified by cross-platform requirements.
14. Preserve traceability and evidence.

~~~

## 27. Guiding Statement

**Shared Services provide the common governance, identity, knowledge and security foundation that allows the General Framework, General Factory, PaaS, IaaS, SaaS and deployments to operate as one platform.**
~~~
---

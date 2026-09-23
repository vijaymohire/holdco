# Client Implementations

Factory implementation assets used for client-specific tailoring and deployment.

~~~

## 1. Purpose

Client Implementations contain Factory-side assets required to adapt reusable platform capabilities to a specific client environment.

They provide the implementation layer between:

```text
Reusable Platform Capability
        ↓
Industry / Product Capability
        ↓
Client Requirements
        ↓
Client Implementation
        ↓
Client Deployment
```

The objective is to support client-specific requirements without unnecessarily duplicating or forking the General Framework or General Factory.

~~~

## 2. Architectural Position

Client implementations belong to the General Factory post-pilot deployment layer.

```text
General Framework
       ↓
General Factory
       ↓
Common / Industry Capability
       ↓
Client Implementation
       ↓
Client Deployment
```

The client layer therefore specializes reusable capabilities for a particular deployment context.

~~~

## 3. Client Implementation Boundary

Client implementations may contain:

- Client configuration
- Client-specific workflows
- Client-specific adapters
- Client-specific connectors
- Client integrations
- Client data mappings
- Client deployment configuration
- Client-specific resource bindings
- Client-specific validation
- Client-specific UI/workflow configuration where required

They should not automatically contain copies of common platform implementations.

~~~

## 4. Reuse Before Customization

The preferred resolution sequence is:

```text
Client Requirement
       ↓
Existing Product / Capability?
       │
       ├── Yes → Configure
       │
       └── No
            ↓
      Existing Extension?
            │
            ├── Yes → Extend / Adapt
            │
            └── No → Develop Client-Specific Asset
```

This keeps client-specific development proportional to the actual requirement.

~~~

## 5. Client Configuration

Many client requirements should be handled through configuration rather than custom code.

Potential configuration includes:

- Client identity
- Organization
- Users and roles
- Environment
- Industry
- Problem domain
- Assets
- Workflows
- Interfaces
- Resources
- Policies
- Security settings
- Data sources
- Deployment profile

Conceptually:

```text
Common Product
      +
Client Configuration
      ↓
Client Solution
```

~~~

## 6. Client-Specific Workflows

A client may require a workflow that differs from the common product workflow.

The preferred model is:

```text
Common Workflow
      ↓
Client Configuration / Extension
      ↓
Client Workflow
```

Where the client workflow requires genuinely new reusable capabilities, those capabilities should be considered for promotion into the common Framework/Factory rather than remaining permanently client-specific.

~~~

## 7. Client Integrations

Client implementations may contain integration assets for existing client systems.

Examples include:

- APIs
- Databases
- ERP
- CRM
- IoT
- Industrial systems
- Data platforms
- Existing applications
- Cloud services
- Local infrastructure
- Legacy systems

The integration pattern should normally be:

```text
Client System
      ↓
Connector / Adapter
      ↓
Factory Interface
      ↓
Platform Capability
```

~~~

## 8. Brownfield Client Environments

Client implementations are particularly relevant to brownfield deployments.

Existing client environments may contain:

- Legacy applications
- Existing data
- Existing hardware
- Existing networks
- Existing workflows
- Existing APIs
- Existing security infrastructure

The client implementation layer can provide the required integration and adaptation without changing the common platform architecture unnecessarily.

~~~

## 9. Greenfield Client Environments

For greenfield deployments, the client implementation layer may contain primarily:

- Client configuration
- Deployment profiles
- Client workflows
- Resource requirements
- Security configuration
- Data configuration
- Integration definitions

The common platform assets remain reusable.

~~~

## 10. Client Data

Client implementations may define how client data is connected to the platform.

Potential assets include:

- Data-source configuration
- Data mappings
- Transformation rules
- Data interfaces
- Data schemas
- Data access configuration
- Provenance configuration

Client data itself should remain subject to the applicable ownership, security, privacy and governance requirements.

~~~

## 11. Client Resource Requirements

A client solution may require specific resources.

Examples:

- CPU
- GPU
- HPC
- Storage
- Network
- Simulator
- Emulator
- Virtual QPU
- External QPU
- Partner services

The client implementation should describe the **logical requirement** where possible.

```text
Client Requirement
      ↓
Resource Requirement
      ↓
Resource Fabric
      ↓
Available Resource
      ↓
Binding
```

The client implementation should not unnecessarily hard-code a particular physical resource when the Resource Fabric can resolve the requirement.

~~~

## 12. Client Security

Client-specific security requirements may include:

- Client identity
- User roles
- Authentication integration
- Authorization
- Data access
- Network restrictions
- Security classification
- Secrets configuration
- Audit requirements

Common security capabilities should be provided through Shared Services where possible.

```text
Client Security Requirement
        ↓
Shared Security Capability
        +
Client Configuration
```

~~~

## 13. Client Governance

Client implementations may contain client-specific governance configuration.

Examples:

- Approval requirements
- Policies
- Data handling rules
- Operational controls
- Compliance requirements
- Evidence requirements
- Lifecycle controls

Common governance mechanisms should remain reusable.

```text
Common Governance
       +
Client Policy
       ↓
Client Governance Configuration
```

~~~

## 14. Client Identity

Client implementations may reference:

- Client organization
- Users
- Roles
- Projects
- Service identities
- Assets

Identity should be resolved through the appropriate Shared Identity capability rather than implemented independently for each client.

~~~

## 15. Client Evidence and Provenance

Client-specific implementation should preserve traceability.

Potential evidence includes:

- Client requirement
- Configuration version
- Implementation version
- Workflow version
- Deployment version
- Resource binding
- Validation result
- Execution result
- Approval
- Audit record

Conceptually:

```text
Client Requirement
       ↓
Client Implementation
       ↓
Deployment
       ↓
Execution
       ↓
Evidence
```

~~~

## 16. Client Validation

Client implementations should support validation appropriate to the deployment.

Potential validation includes:

- Configuration validation
- Interface validation
- Integration testing
- Workflow testing
- Simulation
- Emulation
- Performance testing
- Security validation
- User acceptance
- Operational validation

```text
Client Implementation
       ↓
Test
       ↓
Validate
       ↓
Evidence
       ↓
Deploy
```

~~~

## 17. Client Implementation and PaaS

PaaS provides the engineering environment in which client-specific capabilities may be developed.

```text
PaaS Workspace
      ↓
Client Configuration
      ↓
Client Extension
      ↓
Test / Simulate / Validate
      ↓
Factory Client Implementation
```

This allows client tailoring to remain connected to the common engineering platform.

~~~

## 18. Client Implementation and IaaS

IaaS/resource capabilities provide the infrastructure required by the client deployment.

```text
Client Requirement
      ↓
Resource Requirement
      ↓
IaaS / Resource Fabric
      ↓
Resource Binding
      ↓
Client Deployment
```

The client implementation should reference resource requirements rather than duplicating infrastructure management logic.

~~~

## 19. Client Implementation and SaaS

A client may consume an existing SaaS product through configuration.

```text
SaaS Product
      +
Client Configuration
      ↓
Client Solution
```

If additional functionality is required:

```text
SaaS Product
      ↓
Client Gap
      ↓
PaaS Development
      ↓
Factory Implementation
      ↓
Client Solution
```

A successful client-specific capability may later be generalized into the common product.

~~~

## 20. Promotion of Client Capabilities

A client-specific implementation may reveal a capability that is reusable across multiple clients.

The promotion path is:

```text
Client Implementation
       ↓
Repeated Requirement
       ↓
Generalizable Pattern
       ↓
Framework Definition
       ↓
Factory Implementation
       ↓
Common Capability
```

This is an important mechanism for allowing client work to improve the platform without turning the platform into a collection of client-specific forks.

~~~

## 21. Client-Specific vs Common Assets

The distinction should remain explicit.

### Common

Reusable across multiple clients.

### Industry

Reusable within an industry.

### Country

Reusable within a country or country-specific context.

### Client

Specific to one client environment.

```text
Common
  ↓
Country / Industry
  ↓
Client
```

The actual hierarchy may vary depending on the capability.

~~~

## 22. Client Deployment Structure

A conceptual client deployment may contain:

```text
Client Deployment
│
├── configuration/
├── workflows/
├── integrations/
├── data/
├── resources/
├── security/
├── governance/
├── validation/
├── evidence/
└── deployment/
```

The exact structure should be determined by the deployment package and implementation requirements.

~~~

## 23. Client Implementation Packages

Client-specific assets may be assembled into a deployment package.

```text
Client Requirements
       ↓
Client Package
       ├── Configuration
       ├── Extensions
       ├── Integrations
       ├── Workflows
       ├── Resource Requirements
       ├── Security
       └── Validation
              ↓
       General Factory Bootstrapper
              ↓
       Client Deployment
```

The package should reference common assets rather than duplicate them.

~~~

## 24. Relationship to General Factory Bootstrapper

The General Factory Bootstrapper can consume client implementation assets when preparing a deployment.

```text
Deployment Request
       ↓
Bootstrapper
       ↓
Client Profile
       ↓
Client Package
       ↓
Common + Client Assets
       ↓
Generation
       ↓
Validation
       ↓
Client Deployment
```

The Bootstrapper remains responsible for composition and preparation.

~~~

## 25. Client Implementation and Asset Synchronization

Client implementations should remain synchronized with common platform assets.

Relevant dimensions include:

- Identity
- Capability
- Interface
- Configuration
- Resource requirements
- Execution contracts
- Security
- Governance
- Provenance
- Lifecycle
- Maturity

```text
Framework
   ↕
Factory
   ↕
Product
   ↕
Client Implementation
   ↕
Client Deployment
```

~~~

## 26. Client Lifecycle

A client implementation may progress through:

```text
Requirement
   ↓
Analysis
   ↓
Configuration
   ↓
Development
   ↓
Integration
   ↓
Testing
   ↓
Validation
   ↓
Deployment
   ↓
Operation
   ↓
Change
   ↓
Retirement
```

Lifecycle state should be recorded where required.

~~~

## 27. Client Change Management

Client-specific changes should be controlled.

Changes may include:

- Configuration changes
- Workflow changes
- Integration changes
- Resource changes
- Security changes
- Governance changes
- Product-version changes

A change should preserve appropriate provenance and validation evidence.

~~~

## 28. Technology Neutrality

Client implementations may use specific technologies required by the client.

However, the common platform boundary should remain technology-neutral.

```text
Client Technology
       ↓
Connector / Adapter
       ↓
Factory Capability
```

This allows different client technologies to be supported without changing the common platform architecture unnecessarily.

~~~

## 29. Client Implementation and Reference Implementations

Reference implementations may be used when developing a client implementation.

```text
Reference Implementation
       ↓
Study / Adapt
       ↓
Client Requirement
       ↓
Client Implementation
```

A reference implementation should not automatically become client production code.

~~~

## 30. Client Implementation and Evidence

Client implementation provides an important source of real-world evidence for the platform.

```text
Client Requirement
       ↓
Implementation
       ↓
Execution
       ↓
Result
       ↓
Evidence
       ↓
Platform Learning
```

Repeated client requirements can identify opportunities for common platform capabilities or product families.

~~~

## 31. Client Implementation and Product Development

Client implementations can feed the product roadmap.

```text
Client Requirement
       ↓
Client Implementation
       ↓
Repeated / Generalizable Need
       ↓
Product Opportunity
       ↓
Common Product
```

This provides a practical route from client delivery to reusable product development.

~~~

## 32. Avoiding Client Forks

The preferred architecture is:

```text
Common Platform
       +
Configuration
       +
Small Client Extension
```

rather than:

```text
Common Platform
       ↓
Complete Client Fork
```

Client forks should be avoided unless there is a documented technical or contractual reason.

~~~

## 33. Current Scope

The current `client/` layer provides the structural boundary for Factory-side client implementations.

The initial focus is:

- Client configuration
- Client-specific workflows
- Integrations
- Extensions
- Resource requirements
- Security configuration
- Governance configuration
- Validation
- Deployment preparation

Detailed implementation should be introduced incrementally as real client requirements emerge.

~~~

## 34. Guiding Principles

1. Reuse common platform capabilities before creating client-specific assets.
2. Prefer configuration over unnecessary custom implementation.
3. Keep client assets separate from common Factory assets.
4. Use connectors and adapters for client integrations.
5. Keep logical resource requirements separate from physical resource bindings.
6. Use Shared Services for common identity, governance, knowledge and security capabilities.
7. Preserve client data ownership and applicable controls.
8. Maintain evidence and provenance.
9. Validate client-specific implementations before deployment.
10. Support both greenfield and brownfield environments.
11. Promote repeated client requirements into common capabilities where justified.
12. Avoid permanent client-specific forks where reusable extensions are practical.
13. Keep client implementation technology-specific only at the appropriate Factory boundary.
14. Allow client delivery to generate evidence and improve the common platform.

~~~

## 35. Guiding Statement

**Client Implementations are the General Factory layer where reusable platform capabilities are tailored, integrated, validated and prepared for a specific client environment.**

**Customize the deployment where necessary, but keep the common platform reusable.**
~~~
---

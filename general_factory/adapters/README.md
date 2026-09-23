# Adapters

Adapters translate General Factory contracts to the interfaces of existing implementation assets.

This protects the Framework from technology-specific interfaces.

The current post-pilot implementation organizes adapters into four implementation sources:

- `github/` — GitHub-based implementations and integrations
- `gitlab/` — GitLab-based implementations and integrations
- `local/` — Local and on-premise implementations and integrations
- `technology/` — Technology-specific implementations and integrations

~~~

## 1. Purpose

The `adapters/` layer contains General Factory implementation assets that translate between standardized Factory contracts and the interfaces exposed by existing implementation assets.

The primary purpose is to allow existing repositories, platforms, technologies and local implementations to participate in the General Factory without requiring the Framework to adopt their implementation-specific interfaces.

```text
General Framework Contract
          ↓
     Factory Interface
          ↓
        Adapter
          ↓
Existing Implementation Interface
          ↓
Existing Implementation
```

~~~

## 2. Current Post-Pilot Adapter Structure

The current post-pilot implementation uses four adapter source categories:

```text
adapters/
│
├── github/
│   └── GitHub-based implementations and integrations
│
├── gitlab/
│   └── GitLab-based implementations and integrations
│
├── local/
│   └── Local / on-premise implementations and integrations
│
└── technology/
    └── Technology-specific implementations and integrations
```

These categories represent **where or how the existing implementation is accessed**, rather than four different Framework concepts.

~~~

## 3. GitHub Adapters

`github/` contains adapters for existing implementations hosted or delivered through GitHub.

Potential examples include:

- GitHub repositories
- GitHub-hosted source implementations
- GitHub-based reference implementations
- GitHub project assets
- GitHub APIs
- GitHub workflows where applicable
- GitHub-based development assets

Conceptually:

```text
Factory Contract
      ↓
GitHub Adapter
      ↓
GitHub Repository / API / Implementation
```

The adapter should reference the existing implementation rather than duplicate it.

~~~

## 4. GitLab Adapters

`gitlab/` contains adapters for existing implementations hosted or delivered through GitLab.

Potential examples include:

- GitLab repositories
- GitLab-hosted source implementations
- GitLab project assets
- GitLab APIs
- GitLab workflows where applicable
- GitLab-based development assets

Conceptually:

```text
Factory Contract
      ↓
GitLab Adapter
      ↓
GitLab Repository / API / Implementation
```

This allows existing GitLab development assets to participate in the General Factory without moving them into the Factory repository.

~~~

## 5. Local Adapters

`local/` contains adapters for implementations and resources available in local or on-premise environments.

Examples may include:

- Local applications
- Local repositories
- Local services
- Local development environments
- Local servers
- Local CPU/GPU resources
- Local HPC resources
- Local simulators
- Local emulators
- Local data
- Local networks
- Local execution environments

Conceptually:

```text
Factory Contract
      ↓
Local Adapter
      ↓
Local Implementation / Resource
```

This supports the current virtual-first and local experimentation model while keeping the logical Factory contract independent of the local environment.

~~~

## 6. Technology Adapters

`technology/` contains adapters that integrate specific technologies with General Factory contracts.

Potential examples include:

- Cloud platforms
- AI platforms
- Quantum platforms
- Simulation engines
- Databases
- APIs
- Development environments
- Runtime technologies
- Storage technologies
- Networking technologies
- Specialized hardware or software

Conceptually:

```text
Factory Contract
      ↓
Technology Adapter
      ↓
Technology-Specific Interface
      ↓
Technology Implementation
```

Technology adapters isolate implementation-specific interfaces from the Framework.

~~~

## 7. Source Category Versus Technology

The four adapter directories should not be interpreted as mutually exclusive technology categories.

For example:

```text
GitHub
   +
Technology
```

may both be relevant to the same implementation.

Likewise:

```text
GitLab
   +
Local
```

may both participate in a development workflow.

The appropriate adapter structure should preserve the actual integration boundary without creating unnecessary duplication.

~~~

## 8. Adapter Composition

Where necessary, adapters may be composed.

For example:

```text
Factory Contract
      ↓
GitHub Adapter
      ↓
Technology Adapter
      ↓
Existing Technology
```

or:

```text
Factory Contract
      ↓
GitLab Adapter
      ↓
Local Adapter
      ↓
Local Execution Environment
```

The exact composition should depend on the implementation being integrated.

~~~

## 9. Architectural Position

Adapters sit at the boundary between the General Factory and existing implementations.

```text
General Framework
       ↓
Factory Contract
       ↓
Factory Adapter
       ↓
Existing Interface
       ↓
Existing Implementation
```

The Framework remains technology-neutral.

The adapter absorbs the technology-specific differences.

~~~

## 10. Why Adapters Exist

Existing implementations frequently have their own:

- APIs
- SDKs
- Data structures
- Protocols
- Command formats
- Authentication mechanisms
- Configuration models
- Execution models
- Error models
- Resource representations

The Factory should not require every existing implementation to conform directly to the Framework.

Instead:

```text
Common Contract
      ↓
Adapter
      ↓
Existing Implementation
```

~~~

## 11. Adapter Versus Connector

Adapters and connectors are related but have different primary purposes.

```text
Adapter
    ↓
Translates one contract/interface into another

Connector
    ↓
Provides the mechanism for communicating with
an external system or service
```

They may be composed:

```text
Factory Contract
      ↓
Adapter
      ↓
Connector
      ↓
External System
```

An adapter addresses **interface or semantic translation**, while a connector primarily provides **communication or integration access**.

~~~

## 12. Adapter Versus Implementation

An adapter is not the implementation of the capability itself.

```text
Capability
    ↓
Implementation
    ↓
Provides the actual capability

Adapter
    ↓
Makes the implementation accessible
through the Factory contract
```

The existing implementation remains independently identifiable.

~~~

## 13. Contract Translation

The primary function of an adapter is contract translation.

```text
Factory Request
      ↓
Adapter
      ↓
Technology-Specific Request
      ↓
Existing Implementation
```

Responses are translated in the opposite direction:

```text
Existing Result
      ↓
Adapter
      ↓
Factory Result Contract
```

~~~

## 14. Interface Mapping

An adapter may map:

- Inputs
- Outputs
- Data schemas
- Commands
- Events
- State
- Errors
- Timing
- Units
- Metadata
- Provenance

For example:

```text
Factory Input
      ↓
Input Mapping
      ↓
Existing Implementation Input
```

and:

```text
Existing Implementation Output
      ↓
Output Mapping
      ↓
Factory Output
```

~~~

## 15. Technology Isolation

Technology-specific details should remain within the Factory implementation boundary.

Examples include:

- SDK calls
- Vendor API formats
- Driver calls
- Provider-specific configuration
- Authentication mechanisms
- Command formats
- Technology-specific error codes

These should be isolated behind the adapter wherever practical.

~~~

## 16. Multiple Implementations

A single Framework capability may have multiple implementations.

```text
Capability
   │
   ├── GitHub Implementation
   │       ↓
   │    GitHub Adapter
   │
   ├── GitLab Implementation
   │       ↓
   │    GitLab Adapter
   │
   ├── Local Implementation
   │       ↓
   │    Local Adapter
   │
   └── Technology Implementation
           ↓
        Technology Adapter
```

The Framework capability remains unchanged while Factory bindings determine which implementation is used.

~~~

## 17. Implementation Substitution

Adapters support implementation substitution.

For example:

```text
Factory Contract
      ↓
GitHub Adapter
      ↓
Implementation A
```

may later become:

```text
Factory Contract
      ↓
GitLab Adapter
      ↓
Implementation B
```

without necessarily changing the Framework contract.

~~~

## 18. Adapter Identity

Each reusable adapter should have a stable identity.

An adapter record may include:

- Adapter ID
- Adapter category
- Framework contract reference
- Factory interface reference
- Target implementation ID
- Target interface
- Version
- Source location
- Technology
- Provider
- Dependencies
- Configuration
- Security requirements
- Lifecycle
- Evidence
- Provenance

~~~

## 19. Factory Registry Integration

Reusable adapters should be registered with the Factory Registry.

```text
Factory Registry
       ↓
Adapter
       ↓
Target Implementation
```

A runtime binding may therefore identify:

```text
Framework Capability
       ↓
Factory Implementation
       ↓
Adapter
       ↓
Existing Interface
```

~~~

## 20. Runtime Binding

Adapters may participate in runtime bindings.

```text
Framework Capability
       ↓
Runtime Binding
       ↓
Factory Implementation
       ↓
Adapter
       ↓
Runtime
       ↓
Resource
```

The binding should remain traceable to the adapter and implementation versions used.

~~~

## 21. Adapter Configuration

Adapter configuration may include:

- Repository reference
- Repository path
- API endpoint
- API version
- SDK configuration
- Mapping rules
- Authentication reference
- Timeout
- Retry policy
- Resource settings
- Protocol settings
- Data transformation rules

Sensitive credentials should remain in appropriate secret-management mechanisms.

~~~

## 22. GitHub and GitLab Repository References

Repository-based adapters should identify the existing implementation rather than copy its source into the Factory.

A reference may include:

```text
Repository
Repository Path
Branch / Tag
Commit
Version
Implementation ID
Interface
Configuration
```

This supports traceability while preserving repository independence.

~~~

## 23. Local Implementation References

Local adapters may identify:

```text
Local Environment
      ↓
Path / Service / Resource
      ↓
Implementation
      ↓
Adapter
```

Local paths, services and resources should be treated as environment-specific bindings rather than Framework identities.

~~~

## 24. Technology Implementation References

Technology adapters may identify:

```text
Technology
Provider
Version
SDK
API
Runtime
Resource
Configuration
```

This allows technology implementations to evolve independently from the logical Factory contract.

~~~

## 25. Legacy System Adapters

Adapters are particularly useful for brownfield environments.

```text
Factory Capability
       ↓
Adapter
       ↓
Legacy Interface
       ↓
Existing System
```

This allows existing systems to participate in modernization without requiring immediate replacement.

~~~

## 26. Industry Adapters

Industry-specific systems may require adapters for:

- ERP
- IoT
- Operational systems
- Industry databases
- Sensors
- Equipment
- External services

```text
Industry Capability
       ↓
Factory Contract
       ↓
Industry Adapter
       ↓
Existing Industry System
```

Industry-specific adapters may initially be implemented under the appropriate source category and later promoted if a reusable industry integration boundary emerges.

~~~

## 27. Client Adapters

Client-specific interfaces may require adapters.

However, a client-specific adapter should be considered for promotion into a reusable industry or common adapter when the same integration pattern appears repeatedly.

```text
Client Adapter
      ↓
Repeated Pattern
      ↓
Reusable Adapter
      ↓
Industry / Common Factory
```

~~~

## 28. Adapter and Modules

An adapter may be part of or referenced by a Factory module.

```text
Module
 ├── Capability
 ├── Interface
 ├── Adapter
 └── Configuration
```

The adapter should remain independently identifiable where it is reusable.

~~~

## 29. Adapter and Packages

Deployment packages may include or reference required adapters.

```text
Package
   ├── Modules
   ├── Interfaces
   ├── Adapters
   └── Connectors
```

This allows a package to define the integration composition required for a deployment.

~~~

## 30. Adapter and Experimentation

Experiments may use adapters to access existing implementations.

```text
Experiment
      ↓
Workflow
      ↓
Factory Contract
      ↓
Adapter
      ↓
Existing Implementation
```

The experiment should record the adapter and implementation versions used.

~~~

## 31. Adapter and Deployment

Deployment implementations may require adapters for brownfield or technology-specific integration.

```text
Deployment
      ↓
Factory Contract
      ↓
Adapter
      ↓
Existing Environment
```

Adapters therefore support both greenfield and brownfield deployments.

~~~

## 32. Adapter and Web Platform

The Web Platform may invoke capabilities through Factory APIs without directly knowing technology-specific interfaces.

```text
Web Platform
      ↓
Factory API
      ↓
Factory Contract
      ↓
Adapter
      ↓
Existing Implementation
```

This preserves separation between user-facing applications and implementation technologies.

~~~

## 33. Security

Adapters must respect Factory security controls.

Security responsibilities may include:

- Authentication integration
- Authorization
- Credential handling
- Endpoint protection
- Data protection
- Audit
- Secure communication

Adapters must not bypass Factory security policies merely because the target implementation exposes a different security model.

~~~

## 34. Adapter Validation

Adapters should be validated for:

- Contract compatibility
- Input mapping
- Output mapping
- Error mapping
- State mapping
- Event mapping
- Authentication
- Authorization
- Performance
- Reliability
- Resource handling
- Security

```text
Factory Contract
      ↓
Adapter
      ↓
Target Implementation
      ↓
Validation
```

~~~

## 35. Adapter Testing

Testing may include:

- Unit testing
- Contract testing
- Integration testing
- Compatibility testing
- Failure testing
- Performance testing
- Security testing
- End-to-end testing

Contract testing is particularly important because the adapter exists at an interface boundary.

~~~

## 36. Evidence and Provenance

Adapter implementations should preserve evidence relating to:

- Source implementation
- Source repository
- Interface mapping
- Configuration
- Tests
- Validation
- Version
- Runtime use
- Errors
- Deployment

Provenance should identify which adapter and implementation versions were used for a given execution.

~~~

## 37. Adapter Versioning

Adapters should be independently versionable.

Changes may affect:

- Contract mapping
- Data transformation
- Protocol
- Error handling
- State mapping
- Event mapping
- Configuration
- Security

Breaking changes should be explicitly versioned and validated.

~~~

## 38. Adapter Compatibility

An adapter should declare compatibility with:

- Framework contract version
- Factory interface version
- Target implementation version
- Runtime version
- Connector version
- Resource environment

```text
Contract Version
      +
Adapter Version
      +
Implementation Version
      ↓
Compatibility
```

~~~

## 39. Adapter Lifecycle

An adapter may progress through:

```text
Identified
   ↓
Designed
   ↓
Implemented
   ↓
Integrated
   ↓
Validated
   ↓
Registered
   ↓
Active
   ↓
Deprecated
   ↓
Retired
```

~~~

## 40. Adapter Resolution

The Factory may resolve an adapter based on:

- Required capability
- Interface contract
- Target implementation
- Source category
- Technology
- Provider
- Version
- Environment
- Configuration
- Compatibility
- Security
- Policy

```text
Requirement
      ↓
Factory Registry
      ↓
Implementation
      ↓
Adapter Resolution
      ↓
Executable Binding
```

~~~

## 41. Adapter and Resource Resolution

Where an implementation requires a particular resource, the adapter may participate in the binding.

```text
Factory Requirement
       ↓
Implementation
       ↓
Adapter
       ↓
Resource Binding
       ↓
Runtime Resource
```

The logical resource identity remains separate from the physical resource.

~~~

## 42. Adapter and Connectors

An adapter and connector may be composed.

```text
Factory Contract
       ↓
Adapter
       ↓
Connector
       ↓
External System
```

Alternatively, an adapter may directly invoke an implementation where a separate connector is unnecessary.

~~~

## 43. Adapter and Factory Core

Factory Core provides common mechanisms used by adapters.

Examples include:

- Configuration
- Lifecycle
- Logging
- Scheduling
- Resource management
- Security
- Observability
- Error handling
- Evidence

```text
Adapter
   ↓
Factory Core
   ↓
Runtime / Resource
```

~~~

## 44. Adapter and Bootstrapper

The General Factory Bootstrapper may resolve adapters while preparing deployments.

```text
Deployment Request
       ↓
Package Resolution
       ↓
Implementation Resolution
       ↓
Adapter Resolution
       ↓
Configuration
       ↓
Validation
       ↓
Deployment
```

This allows deployment generation to remain independent of specific implementation interfaces.

~~~

## 45. Dry-Run

Adapter resolution should support dry-run where practical.

```text
Requirement
      ↓
Resolve Adapter
      ↓
Check Compatibility
      ↓
Validate Configuration
      ↓
Show Planned Binding
      ↓
No Execution
```

This is useful for deployment preparation and controlled execution planning.

~~~

## 46. Current Post-Pilot Usage Model

The current four adapter categories are intended to support the existing post-pilot implementation sources:

```text
                    FACTORY ADAPTERS
                           │
        ┌──────────────────┼──────────────────┐
        │                  │                  │
     GitHub              GitLab             Local
        │                  │                  │
        └──────────────────┼──────────────────┘
                           │
                     Technology
                           │
                           ↓
                Existing Implementations
```

The categories should be populated from actual post-pilot implementation requirements.

~~~

## 47. Current Structure

The current implementation structure is:

```text
adapters/
├── github/
├── gitlab/
├── local/
└── technology/
```

The four directories are the current post-pilot implementation boundaries.

Additional internal organization may be introduced inside these directories as actual adapter implementations emerge.

~~~

## 48. Current Scope

The current `adapters/` layer provides the implementation boundary for:

- GitHub integrations
- GitLab integrations
- Local / on-premise integrations
- Technology-specific integrations
- Contract translation
- Interface mapping
- Data transformation
- Protocol translation
- Error translation
- State translation
- Event translation
- Resource translation
- Backend integration
- Legacy integration
- Industry integration
- Client integration
- Technology isolation

The adapter catalogue should grow from actual integration requirements rather than attempting to anticipate every technology.

~~~

## 49. Guiding Principles

1. Adapters translate contracts; they do not redefine them.
2. Framework contracts remain technology-neutral.
3. The current post-pilot adapter categories are `github/`, `gitlab/`, `local/` and `technology/`.
4. GitHub adapters integrate existing GitHub-based implementations without duplicating them.
5. GitLab adapters integrate existing GitLab-based implementations without duplicating them.
6. Local adapters integrate local and on-premise implementations and resources.
7. Technology adapters isolate technology-specific interfaces.
8. The four categories represent implementation sources and may participate in the same integration chain where required.
9. Existing implementations should be reused where practical.
10. Adapters should be independently identifiable and versionable.
11. Interface mappings should be explicit.
12. Data, event, state and error translations should preserve required semantics.
13. Adapters and connectors should remain conceptually distinct even when composed.
14. Resource bindings should remain separate from logical resource definitions.
15. Adapters should support both greenfield and brownfield integration.
16. Reusable adapters should be registered with the Factory Registry.
17. Adapter versions should be traceable to execution evidence.
18. Security and authorization must not be bypassed through adapters.
19. Adapter compatibility should be validated before execution.
20. Client-specific adapters may be promoted into reusable industry or common adapters when justified.
21. Technology replacement should be possible without changing the Framework contract where the contract itself remains valid.
22. Adapter implementation should remain as thin as practical: translate, integrate and preserve the contract rather than recreate the target system.

~~~

## 50. Guiding Statement

**Adapters are the General Factory boundary that allows the current post-pilot GitHub, GitLab, local and technology-based implementations to participate in standardized Factory contracts without coupling the General Framework to their implementation-specific interfaces.**

**Keep the contract stable, isolate implementation differences, translate only what is necessary, and preserve the identity and provenance of the implementation behind the adapter.**

---

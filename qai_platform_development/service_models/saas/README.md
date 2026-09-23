# SaaS Service Model

Controlled consumption layer for predefined and productized solutions.

SaaS provides a simplified user experience through which clients and other authorized users consume validated platform capabilities without needing to directly manage the underlying engineering, infrastructure or Factory implementation.

SaaS is primarily:

**"Use the platform."**

~~~

## 1. Purpose

The SaaS Service Model defines how validated engineering capabilities are packaged and exposed as reusable products, applications and controlled use cases.

SaaS provides:

- Predefined solutions
- Productized workflows
- Guided user experiences
- Controlled parameters
- Managed execution
- Results and evidence access
- Project/context-aware consumption
- Role-specific experiences
- Industry-specific applications
- Client-specific solutions

The objective is to make useful platform capabilities accessible without exposing unnecessary engineering complexity.

~~~

## 2. Architectural Position

SaaS is the client-facing consumption layer of the Common Web Access Layer.

```text
Common Web Access Layer
        │
        ├── SaaS
        │     ↓
        │   Product / Use Case
        │
        ├── PaaS
        │     ↓
        │   Engineering Workspace
        │
        └── IaaS
              ↓
            Resources / Backends

SaaS
  ↓
General Factory
  ↓
Resources / Fabrics / Backends
```

The service models therefore have distinct roles:

- **SaaS** — consume the platform
- **PaaS** — build on the platform
- **IaaS** — provide resources to the platform

~~~

## 3. Primary Users

SaaS may serve:

- Executives
- Business users
- Business Analysts
- Domain Experts
- Researchers
- Innovation Teams
- Operational users
- Client technical users
- Government and institutional users
- SMEs and startups
- Enterprise users

The level of technical detail presented should depend on the intended user and product.

~~~

## 4. Solution Classes

SaaS solutions can be organized into four initial classes.

### Problem-Based Solutions

Solutions organized around a specific problem.

Examples:

- Optimization
- Forecasting
- Scheduling
- Resource allocation
- Risk analysis
- Scenario analysis
- Decision support

### Domain-Based Solutions

Solutions organized around an industry or domain.

Examples:

- Agriculture
- Energy
- Manufacturing
- Infrastructure
- Transportation
- Public services
- Defence and security engineering
- Research

### Technology-Based Solutions

Solutions organized around a particular technical capability.

Examples:

- AI experimentation
- QAI workflows
- Simulation
- Digital twins
- Optimization
- Hybrid computational workflows
- Data and analytics

Technology-based solutions should expose the useful capability rather than unnecessarily exposing implementation complexity.

### Predefined Client Needs

Solutions designed around a recurring or known client requirement.

Examples:

- Standard analysis
- Standard workflow
- Recurring optimization
- Operational reporting
- Engineering assessment
- Scenario evaluation
- Client-specific decision workflow

~~~

## 5. SaaS Catalogue

Validated capabilities can be packaged into the SaaS catalogue.

```text
PaaS Engineering
      ↓
Validation
      ↓
Evidence
      ↓
Standardization
      ↓
Packaging
      ↓
SaaS Catalogue
      ↓
Client Consumption
```

The catalogue may contain:

- Products
- Applications
- Workflows
- Industry solutions
- Problem solutions
- Technology services
- Client-specific solutions

~~~

## 6. PaaS → SaaS Promotion

PaaS is the primary engineering source for new SaaS capabilities.

```text
PaaS
  ↓
Build
  ↓
Test
  ↓
Simulate
  ↓
Emulate
  ↓
Validate
  ↓
Capture Evidence
  ↓
Standardize
  ↓
Package
  ↓
SaaS
```

Not every PaaS project needs to become SaaS.

Promotion should occur when a capability is sufficiently validated, repeatable and useful as a reusable service or product.

~~~

## 7. Relationship to General Framework

The General Framework defines the logical concepts used by SaaS.

These may include:

- Products
- Capabilities
- Assets
- Interfaces
- Workflows
- Problems
- Domains
- Resources
- Value
- Evidence
- Governance
- Security
- Lifecycle

SaaS should consume these definitions rather than independently creating competing architectural definitions.

~~~

## 8. Relationship to General Factory

The General Factory remains the execution authority.

```text
SaaS
  ↓
Approved Product / Workflow
  ↓
Factory
  ↓
Resolver
  ↓
Binding
  ↓
Connector / Adapter
  ↓
Execution
  ↓
Result
  ↓
Evidence
```

SaaS therefore does not duplicate backend execution logic.

It provides the controlled product experience through which approved Factory capabilities are consumed.

~~~

## 9. Thin SaaS Principle

SaaS should remain relatively thin compared with the engineering and execution layers.

The SaaS layer should primarily provide:

- User experience
- Product context
- Guided inputs
- Approved parameters
- Workflow selection
- Execution request
- Result presentation
- Evidence access

Complex execution logic should remain within the Factory.

Infrastructure resolution should remain within the appropriate resource and IaaS layers.

~~~

## 10. Guided Parameters

SaaS should expose only the parameters that are meaningful to the intended user.

For example:

```text
Client
  ↓
Select Use Case
  ↓
Enter Required Inputs
  ↓
Select Approved Options
  ↓
Run
  ↓
View Result
```

Advanced engineering parameters can remain available in PaaS rather than being exposed unnecessarily through SaaS.

~~~

## 11. SaaS Workflow

A typical SaaS execution can follow:

```text
Select Product
      ↓
Select Use Case
      ↓
Provide Inputs
      ↓
Validate Inputs
      ↓
Create Execution Request
      ↓
Factory Execution
      ↓
Observe Progress
      ↓
Receive Result
      ↓
View / Export Result
      ↓
Evidence / Provenance
```

The exact workflow depends on the product.

~~~

## 12. Country → Product → Use Case Model

SaaS can connect the QAI Platform Development roadmap to practical products through:

```text
Country
   ↓
Priority / Product Topic
   ↓
Product
   ↓
Use Case
   ↓
Client Use Case
   ↓
Required Inputs
   ↓
SaaS Workflow
   ↓
Factory / Fabric Calls
   ↓
Result
```

This provides a structured path from a strategic opportunity to a consumable product.

~~~

## 13. Product Catalogue Structure

A SaaS catalogue may eventually organize solutions by:

```text
Country
  └── Product Topic
       └── Product
            └── Use Case
                 └── Client Use Case
                      └── Workflow
```

Additional metadata may describe:

- Target users
- Required inputs
- Outputs
- Preconditions
- Supported domains
- Computational path
- Resource requirements
- Security classification
- Evidence requirements
- Pricing/service model
- Lifecycle state

~~~

## 14. Computational Path Neutrality

SaaS products should not assume that a specific computational technology is always required.

A product may internally use:

- Classical computing
- AI
- Classical AI
- QAI / quantum-inspired methods
- Quantum computing
- Hybrid computational methods

The client should generally consume the validated capability rather than needing to understand which backend is used.

```text
Client Problem
      ↓
SaaS Product
      ↓
Approved Workflow
      ↓
Factory
      ↓
Computational Strategy
      ↓
Backend
```

~~~

## 15. Virtual-First SaaS Development

SaaS products can initially be developed using:

- Virtual assets
- Simulation
- Emulation
- Existing notebooks
- Existing Factory calls
- External computational resources
- Existing partner infrastructure

Physical infrastructure is introduced where required by the product's validated use case.

~~~

## 16. User Experience

The SaaS experience should be designed around the user's task rather than the underlying platform architecture.

Possible interfaces include:

- Web applications
- Dashboards
- Guided forms
- Workflow pages
- Interactive reports
- Product-specific micro-frontends
- Embedded analytics
- Controlled notebooks where appropriate

The interface may be simple even when the underlying computation is complex.

~~~

## 17. Role-Based Experiences

Different users may receive different views of the same underlying solution.

Examples:

### Executive

- KPIs
- Business outcomes
- High-level results
- Value indicators

### Business Analyst

- Inputs
- Assumptions
- Scenarios
- Results

### Domain Expert

- Domain parameters
- Operational information
- Domain outputs

### Technical User

- Advanced configuration
- Workflow information
- Execution information

### Administrator

- Access
- Configuration
- Security
- Operational information

Presentation differences do not replace backend authorization.

~~~

## 18. SaaS and PaaS Relationship

PaaS provides the engineering environment from which SaaS solutions can emerge.

```text
PaaS Project
      ↓
Engineering
      ↓
Validation
      ↓
Reusable Capability
      ↓
SaaS Product
```

PaaS remains the appropriate layer for experimentation and significant engineering changes.

SaaS should normally consume approved and controlled capabilities.

~~~

## 19. SaaS and IaaS Relationship

SaaS should normally remain independent of direct infrastructure selection.

```text
SaaS
  ↓
Factory
  ↓
Resource Requirement
  ↓
IaaS / Resource Fabric
  ↓
Backend
```

The SaaS user should not normally need to select:

- GPU type
- HPC cluster
- QPU
- Storage implementation
- Network implementation

unless the specific product intentionally exposes such choices.

~~~

## 20. SaaS and Reference Implementations

Reference implementations can provide the technical foundation for future SaaS products.

Examples include:

- Pilot notebooks
- PaaS workflow samples
- Simulation examples
- AI/QAI experiments
- Backend integrations
- Industry demonstrations

The progression is:

```text
Reference
   ↓
Pattern
   ↓
Framework Definition
   ↓
Factory Implementation
   ↓
PaaS Engineering
   ↓
Validation
   ↓
SaaS Product
```

A reference implementation does not automatically become a SaaS product.

~~~

## 21. Pilot Relationship

The Digital Farm pilot provides an example of the earlier experiment-oriented execution model.

The post-pilot SaaS model generalizes this into a product-oriented experience.

```text
Pilot
  ↓
Experiment
  ↓
Evidence
  ↓
Reusable Capability
  ↓
PaaS
  ↓
SaaS Product
```

The pilot therefore remains a reference baseline while SaaS becomes a productization layer.

~~~

## 22. Evidence and Provenance

SaaS executions should preserve sufficient evidence to support the result.

Relevant information may include:

- Product identity
- Use-case identity
- Client/project identity
- Input data
- Parameters
- Workflow identity
- Execution identity
- Backend identity where appropriate
- Results
- Validation status
- Timestamp
- Version
- Provenance
- Evidence records

The amount of technical detail exposed to the user can vary without removing the underlying evidence.

~~~

## 23. Security and Governance

SaaS must operate as a controlled consumption environment.

Controls may include:

- Authentication
- Authorization
- Role-based access
- Project/client isolation
- Data access controls
- Workflow permissions
- Execution permissions
- Resource policies
- Usage quotas
- Audit records
- Evidence and provenance
- Security and compliance policies

The SaaS interface is not itself the security boundary.

~~~

## 24. Client-Specific Solutions

A client may require a solution that is not yet a general catalogue product.

The progression can be:

```text
Client Requirement
      ↓
PaaS Engineering
      ↓
Validation
      ↓
Client-Specific SaaS
      ↓
Potential Generalization
      ↓
Catalogue Product
```

This allows the platform to support both reusable products and tailored client solutions.

~~~

## 25. Product Expansion

A successful SaaS capability may later be expanded into:

- Additional use cases
- Additional industries
- Additional countries
- Additional client profiles
- Additional computational methods
- Additional data sources
- Additional integrations
- Additional workflow options

Expansion should preserve the underlying Framework and Factory contracts.

~~~

## 26. Service Model Development Sequence

The intended post-pilot sequence remains:

```text
PaaS
  ↓
IaaS
  ↓
SaaS
```

### PaaS

Build and engineer the capability.

### IaaS

Provide and bind the resources required to run it.

### SaaS

Package and expose the validated capability for controlled consumption.

The sequence does not mean that SaaS development must wait for a complete commercial IaaS platform. Existing and external resources can support early SaaS implementations.

~~~

## 27. Initial Post-Pilot SaaS Direction

The first SaaS implementation should remain small.

It may be:

- A simple web page
- A micro-frontend
- A guided workflow
- A product-specific dashboard
- A thin application around an existing Factory workflow
- A notebook-backed application

The objective is to demonstrate the SaaS consumption pattern without prematurely building a large product platform.

~~~

## 28. Common Asset Synchronization

SaaS should remain synchronized with:

- General Framework
- General Factory
- PaaS
- IaaS
- Resource Fabric
- Product Catalogue
- Use-Case Catalogue
- Reference Implementations
- Evidence and provenance
- QAI Platform Development

Common identities, capabilities, interfaces and workflows should be reused across the layers.

~~~

## 29. Technology and Vendor Neutrality

The SaaS product should remain focused on the user problem or capability rather than on a specific technology vendor.

Technology-specific implementations remain behind the Factory execution and binding layers.

```text
SaaS Product
      ↓
Logical Capability
      ↓
Factory Workflow
      ↓
Technology Binding
      ↓
Backend
```

This allows the underlying implementation to evolve without unnecessarily changing the user-facing product.

~~~

## 30. Guiding Principles

The SaaS Service Model follows these principles:

1. Keep the client experience simple.
2. Expose validated capabilities rather than raw infrastructure.
3. Use PaaS as the primary engineering source.
4. Use IaaS and Resource Fabric for backend resources.
5. Execute through the General Factory.
6. Support problem-based, domain-based and technology-based solutions.
7. Support predefined client needs.
8. Preserve evidence and provenance.
9. Keep technology-specific implementation behind controlled bindings.
10. Allow client-specific solutions to evolve into reusable products.
11. Start with small SaaS implementations.
12. Expand products through validated use cases.
13. Maintain synchronization with Framework, Factory, PaaS and IaaS.

~~~

## 31. Guiding Statement

**SaaS is the controlled consumption layer where validated platform capabilities become usable products, applications and client solutions.**
~~~
---

# SaaS - Framework Definition

SaaS provides controlled consumption of QAI and General Factory capabilities through product-oriented and use-case-oriented experiences.

SaaS is the **client consumption and productization layer** of the common Web Access Layer.

The General Framework defines what SaaS provides and how it is bounded. The General Factory implements the workflows, integrations, execution mechanisms and backend calls used by SaaS.

SaaS is primarily:

**"Use the platform."**

~~~

## 1. Primary Users

Examples include:

- Executives
- Business Analysts
- Domain Experts
- Innovation Teams
- Researchers
- Data Scientists
- Operational Users
- Client Project Teams

Different users may receive different views and permitted actions according to their role, project context and authorization.

~~~

## 2. SaaS Characteristics

SaaS provides:

- API-driven interaction
- Controlled workflows
- Managed capabilities
- Guided configuration
- Role-based access
- Workspace/project context
- Product and use-case selection
- Evidence and result access
- Controlled data access
- Managed execution
- No requirement to expose internal Factory implementation

SaaS should expose only the level of configuration appropriate to the intended user and use case.

~~~

## 3. SaaS Architectural Position

SaaS is part of the common Web Access Layer.

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
 Fabric / Resources / Backends
```

The three layers have different primary purposes:

- **SaaS** — consume validated capabilities
- **PaaS** — build and engineer capabilities
- **IaaS** — provide and resolve resources

~~~

## 4. SaaS and the General Framework

The General Framework defines the logical SaaS concepts, including:

- products
- product capabilities
- use cases
- workflows
- user roles
- project context
- parameters
- interfaces
- results
- evidence
- access boundaries
- deployment context

SaaS should consume these common Framework definitions rather than creating independent platform semantics.

~~~

## 5. SaaS and the General Factory

The SaaS layer is not the execution authority.

The General Factory remains responsible for implementation and execution.

Conceptually:

```text
SaaS
  ↓
Product
  ↓
Use Case
  ↓
Guided Parameters
  ↓
Approved Workflow
  ↓
General Factory
  ↓
Resolver / Binding
  ↓
Fabric / Resource / Backend
  ↓
Execution
  ↓
Result / Evidence
```

SaaS therefore provides the controlled user-facing path into existing Factory capabilities.

~~~

## 6. Thin SaaS Principle

SaaS should remain a relatively thin product and consumption layer.

It should not duplicate:

- Factory runtime logic
- resource resolution logic
- backend integration logic
- connector logic
- adapter logic
- simulation engines
- workflow execution engines

Instead, SaaS should invoke validated capabilities through controlled interfaces.

The principle is:

**SaaS provides the experience; Factory provides the execution.**

~~~

## 7. Product-Oriented Consumption

SaaS may organize available capabilities into products.

A product may represent:

- a domain solution
- an industry solution
- a business capability
- an engineering capability
- a modernization capability
- a research capability
- a QAI application

The product should present the capabilities in a form appropriate for its intended users.

~~~

## 8. Use-Case-Oriented Consumption

Products may contain multiple use cases.

Conceptually:

```text
Product
   ↓
Use Case
   ↓
Required Inputs
   ↓
Approved Workflow
   ↓
Execution
   ↓
Results
```

This allows one product architecture to support multiple related use cases without creating a separate platform architecture for each one.

~~~

## 9. Country and Product Model

The country product catalogue can provide an input to SaaS product development.

A conceptual path is:

```text
Country
   ↓
Priority / Sector
   ↓
Product Topic
   ↓
Use Case
   ↓
Client Use Case
   ↓
SaaS Workflow
   ↓
Factory / Fabric Calls
   ↓
Result
```

Country-specific products may therefore be developed as SaaS experiences over common platform capabilities.

The country-specific experience does not require a separate General Framework or General Factory architecture.

~~~

## 10. Guided Parameters

SaaS should expose only the parameters appropriate to the selected product and use case.

For example:

```text
Select Product
      ↓
Select Use Case
      ↓
Enter Required Business Inputs
      ↓
Validate Inputs
      ↓
Execute
      ↓
View Results
```

Technical infrastructure parameters should normally remain hidden from ordinary SaaS users.

~~~

## 11. SaaS Workflow

A SaaS workflow is normally a validated or approved workflow rather than an unrestricted engineering workflow.

Conceptually:

```text
Client Request
      ↓
Input Validation
      ↓
Workflow Selection
      ↓
Parameter Binding
      ↓
Factory Execution
      ↓
Result Validation
      ↓
Result Presentation
      ↓
Evidence / Report
```

The workflow may invoke multiple Factory services and resources.

~~~

## 12. SaaS and PaaS

PaaS is the engineering environment in which capabilities can be developed and validated.

Validated capabilities may subsequently be packaged for SaaS.

```text
PaaS
  ↓
Build
  ↓
Test
  ↓
Validate
  ↓
Standardize
  ↓
Package
  ↓
SaaS
  ↓
Client Use Case
```

Not every PaaS capability must become SaaS.

Some may remain:

- internal engineering capabilities
- reusable platform components
- client-specific solutions
- research capabilities
- Factory services

~~~

## 13. SaaS and IaaS

SaaS should normally consume approved or preconfigured resource environments.

The SaaS user should not normally be required to select infrastructure.

```text
PaaS
  ↓
Resource Requirements
  ↓
IaaS / Resource Fabric
  ↓
Approved Resource Configuration
  ↓
SaaS
  ↓
Client Execution
```

This maintains a clear distinction between engineering resource configuration and client consumption.

~~~

## 14. SaaS User Experience

The SaaS experience may be implemented using:

- web applications
- micro-frontends
- dashboards
- guided forms
- workflow pages
- API interfaces
- notebooks where appropriate
- other controlled client interfaces

The presentation technology is an implementation choice.

The Framework requirement is controlled access to platform capabilities.

~~~

## 15. Micro-Frontend and Role-Based Experiences

Different users may see different representations of the same underlying product.

Examples include:

- Executive — KPIs and outcomes
- Business Analyst — assumptions, parameters and results
- Domain Expert — domain inputs and outputs
- Data Scientist — data and model information
- Researcher — experiment and evidence information
- Operational User — approved actions and results

The presentation may vary by role, but authorization and execution controls remain enforced by the platform.

~~~

## 16. SaaS Access Control

SaaS access should respect:

- identity
- authentication
- authorization
- tenant/project context
- role
- product entitlement
- use-case entitlement
- data access
- workflow permissions
- execution permissions
- resource policies

A user-interface restriction is not sufficient as a security mechanism.

~~~

## 17. SaaS Workspace and Project Context

SaaS may operate within:

- tenant context
- organization context
- client context
- project context
- product context
- use-case context

This allows results, configuration, evidence and access rights to remain associated with the appropriate client or project.

~~~

## 18. SaaS Results and Evidence

SaaS should provide controlled access to appropriate:

- results
- KPIs
- reports
- recommendations
- execution status
- validation status
- evidence
- provenance

The level of technical detail may depend on the user's role.

The underlying evidence should remain traceable to the Factory execution.

~~~

## 19. SaaS and Evidence Traceability

Conceptually:

```text
SaaS Result
    ↓
Execution
    ↓
Workflow
    ↓
Parameters
    ↓
Resources / Backends
    ↓
Factory
    ↓
Evidence / Provenance
```

This provides a traceable path from the client-visible result back to the underlying execution.

~~~

## 20. SaaS Product Templates

Country- and sector-specific product templates may eventually be represented through reusable product structures.

A conceptual template may contain:

```text
Product
├── Product Definition
├── Target Country / Sector
├── Use Cases
├── User Roles
├── Input Definitions
├── Parameter Definitions
├── Workflow References
├── Output Definitions
├── Evidence Requirements
└── Access / Entitlement Rules
```

The actual workflow implementation remains in the appropriate Factory structures.

~~~

## 21. SaaS and Industry Solutions

SaaS may expose industry solution modules such as:

- Agriculture
- Energy
- Manufacturing
- Infrastructure
- Public Services
- Transportation
- Other validated industry domains

Industry-specific SaaS should reuse common platform capabilities wherever practical.

~~~

## 22. SaaS and QAI

SaaS does not require every use case to use quantum computation.

A SaaS product may use:

- Classical computation
- AI
- Classical AI
- QAI / quantum-inspired computation
- Quantum computation
- Hybrid computation

The computational path should be selected according to the validated workflow, resource availability and intended value.

The client experience should normally abstract these implementation details.

~~~

## 23. SaaS Virtual-First Principle

Where appropriate, SaaS capabilities may initially operate using:

- virtual assets
- simulation
- emulation
- software implementations
- external computational resources
- hybrid resources

Physical infrastructure is introduced when justified by the product and deployment requirements.

~~~

## 24. SaaS Technology Neutrality

The General Framework does not mandate a particular:

- web framework
- frontend framework
- API framework
- cloud provider
- notebook technology
- workflow technology
- database technology
- AI platform
- quantum SDK
- backend provider

These are implementation choices managed through the General Factory and its reference implementations.

~~~

## 25. SaaS Product Development Sequence

The initial post-pilot productization sequence is:

```text
Pilot Reference
      ↓
PaaS Engineering
      ↓
Validation / Evidence
      ↓
IaaS Resource Resolution
      ↓
Validated Capability
      ↓
SaaS Product Template
      ↓
Use Case
      ↓
Client Consumption
```

The exact order of validation and resource integration may vary by project, but SaaS should normally be downstream of sufficient engineering validation.

~~~

## 26. Initial Post-Pilot SaaS Direction

The first SaaS implementation should remain deliberately small.

A basic product experience may provide:

- product selection
- use-case selection
- guided inputs
- parameter configuration
- execution
- results
- evidence/report access

The initial experience may be implemented as a simple notebook, web page or micro-frontend where appropriate.

The objective is to demonstrate the **post-pilot consumption pattern**, not to build a complete commercial SaaS platform immediately.

~~~

## 27. Relationship to the Pilot

The pilot notebook remains a reference implementation.

SaaS should not simply expose the pilot notebook directly as the final product.

Instead:

```text
Pilot
  ↓
Validated Workflow
  ↓
PaaS Engineering
  ↓
Generalization
  ↓
Factory Capability
  ↓
SaaS Product / Use Case
```

This separates experimental implementation from reusable client-facing product capability.

~~~

## 28. Relationship to the General Factory

The SaaS layer should remain dependent on the General Factory for controlled execution.

```text
SaaS
  ↓
Factory API / Service
  ↓
Workflow
  ↓
Factory Runtime
  ↓
Resource Fabric
  ↓
Backend
```

SaaS should not establish independent backend integrations that bypass the Factory architecture.

~~~

## 29. Product Expansion

Once the first SaaS product pattern is validated, additional use cases can be added without creating a new platform architecture.

```text
Common SaaS Architecture
          │
    ┌─────┼─────┬─────┐
    ↓     ↓     ↓     ↓
Use Case 1  Use Case 2  Use Case 3  ...
    │     │     │
    └─────┼─────┘
          ↓
Common Factory / Fabric
```

This allows country-specific and sector-specific products to grow from common platform capabilities.

~~~

## 30. SaaS Security and Governance Boundary

SaaS should inherit and enforce applicable:

- governance policies
- security policies
- data policies
- compliance requirements
- approval requirements
- resource policies
- execution controls
- evidence requirements

SaaS simplifies the user experience but does not remove platform governance.

~~~

## 31. Current Post-Pilot Direction

The immediate post-pilot priority is **PaaS development**.

IaaS capabilities will evolve from concrete PaaS resource requirements.

SaaS will follow by packaging validated capabilities into thin, controlled product/use-case experiences.

The intended progression is:

```text
PaaS
  ↓
IaaS
  ↓
Validated Capability
  ↓
SaaS
```

~~~

## 32. SaaS Design Principle

SaaS should provide the simplest appropriate interface for consuming a validated platform capability while preserving the underlying Framework, Factory, resource, security and evidence boundaries.

It should be:

- simple for the intended user
- controlled
- product-oriented
- use-case-oriented
- reusable
- evidence-aware
- technology-neutral at the Framework level

~~~

## 33. Guiding Statement

**SaaS is the controlled consumption layer of the QAI platform.**

It packages validated capabilities into accessible products and use cases while hiding unnecessary implementation and infrastructure complexity from the client.

**SaaS is where the client uses the platform.**
~~~
---

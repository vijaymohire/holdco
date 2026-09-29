# SaaS - Factory Implementation

Implementation area for controlled platform consumption.

The SaaS layer may expose:

- Dashboards
- Project views
- Experiment management
- Workflow execution
- Results
- Evidence
- Reports
- Administration

Business logic remains in platform services rather than being
duplicated in the front-end.
---
# SaaS - Factory Implementation

Reference implementation area for **Software-as-a-Service (SaaS) consumption** of General Factory and platform capabilities.

The SaaS layer provides controlled, simplified consumption of platform capabilities through application-oriented user experiences.

The SaaS layer may expose:

- Dashboards
- Project views
- Experiment management
- Workflow execution
- Results
- Evidence
- Reports
- Administration
- Other managed application capabilities

Business and application logic remains in platform services rather than being duplicated in the front-end.

The SaaS layer is therefore a **controlled consumption and productization boundary**, not the semantic authority for workflows, resources, execution, or General Factory implementation resolution.

---

## 1. Purpose

The SaaS implementation provides an application-oriented consumption layer above the underlying PaaS and General Factory capabilities.

It may provide users with managed access to:

- Projects
- Workflows
- Experiments
- Virtual assets
- Results
- Evidence
- Reports
- Dashboards
- Platform status
- Selected resource information
- Administration

The SaaS experience should simplify consumption without hiding the underlying platform architecture from engineering and operational users where that visibility is required.

---

## 2. Post-Pilot Position

The immediate post-pilot focus is the **PaaS engineering environment**.

SaaS represents the future productization and controlled-consumption layer.

The intended evolution is:

    General Framework
          |
          v
    General Factory
          |
          v
    PaaS
          |
          v
    SaaS Consumption

with infrastructure underneath:

    PaaS
      |
      v
    Resource Fabric
      |
      v
    IaaS
      |
      v
    Infrastructure

Therefore:

- PaaS provides the engineering environment.
- SaaS provides managed consumption.
- IaaS provides underlying infrastructure capability.
- General Factory provides implementation resolution.

---

## 3. SaaS Is Not a Separate Platform Architecture

SaaS should consume the same underlying platform capabilities rather than creating a parallel implementation stack.

Preferred model:

    SaaS
      |
      v
    Platform APIs / Services
      |
      v
    General Factory
      |
      v
    Resource Fabric
      |
      v
    Runtime / Backends

This avoids duplicating business logic, workflow semantics, resource resolution, and execution logic in the SaaS layer.

---

## 4. SaaS vs PaaS

The primary distinction is the level of technical control exposed to the user.

### PaaS

The user may work with:

- Code
- Notebooks
- IDE
- Terminal
- Workflows
- Experiments
- Virtual assets
- Runtime configuration
- Resources
- Simulation
- Emulation
- AI
- Quantum
- Development tooling

### SaaS

The user may primarily consume:

- Applications
- Dashboards
- Managed workflows
- Results
- Reports
- Insights
- Evidence
- Controlled project functions

Conceptually:

    PaaS
      |
      +--> Build
      +--> Configure
      +--> Develop
      +--> Experiment
      +--> Execute

    SaaS
      |
      +--> Consume
      +--> Operate
      +--> Review
      +--> Analyze
      +--> Report

The same underlying platform capabilities can support both.

---

## 5. SaaS Architectural Position

The SaaS layer sits above the common platform service/API boundary.

    User
      |
      v
    SaaS Application
      |
      v
    API Gateway
      |
      v
    Platform Services
      |
      v
    General Factory
      |
      v
    Resource Fabric
      |
      v
    Runtime / Backends

The SaaS application provides the user experience.

Platform services provide application/business logic.

General Factory provides implementation resolution.

Resource Fabric provides authoritative resource resolution.

---

## 6. Controlled Consumption

SaaS provides a controlled subset of platform capabilities.

For example:

    Full PaaS Capability Set
             |
             v
    SaaS Product Boundary
             |
       +-----+-----+-----+
       |     |     |     |
       v     v     v     v
    Dashboard Workflow Results Reports

The SaaS layer does not need to expose every engineering capability available in the PaaS.

This allows technical complexity to remain behind managed interfaces.

---

## 7. Business Logic Separation

Business and application logic should remain in platform services.

Preferred architecture:

    SaaS Front-End
          |
          v
    API Gateway
          |
          v
    Application / Platform Service
          |
          v
    General Factory
          |
          v
    Runtime

Avoid:

    SaaS Front-End
          |
          +--> Business Logic
          +--> Workflow Logic
          +--> Resource Resolution
          +--> Execution Logic

The second model would create unnecessary duplication and weaken the platform architecture.

---

## 8. Dashboards

SaaS dashboards may provide high-level views of platform activity.

Potential dashboard information includes:

- Project status
- Workflow status
- Experiment status
- Execution status
- Resource status
- Results
- Metrics
- Evidence status
- Operational status
- Business/application indicators

Dashboards should consume authoritative platform data.

They should not independently calculate authoritative execution or resource state.

---

## 9. Project Views

SaaS may provide simplified project views.

A project view may show:

- Project information
- Active workflows
- Experiments
- Results
- Reports
- Evidence
- Users
- Status
- Key metrics

The underlying project model remains managed by platform services.

---

## 10. Workflow Consumption

SaaS may expose managed workflow capabilities.

Potential operations include:

- Select workflow
- View workflow
- Submit workflow
- Start execution
- Monitor execution
- Cancel execution
- View results

A conceptual flow is:

    SaaS User
        |
        v
    Workflow View
        |
        v
    API Gateway
        |
        v
    Workflow Service
        |
        v
    Workflow Engine
        |
        v
    General Factory
        |
        v
    Runtime

The SaaS layer consumes workflow capabilities.

It does not become the Workflow Engine.

---

## 11. Workflow Authoring vs Workflow Consumption

The PaaS may expose full workflow authoring capabilities.

SaaS may expose a more controlled experience.

For example:

### PaaS

    Create
    Edit
    Validate
    Version
    Configure
    Execute

### SaaS

    Select
    Configure permitted parameters
    Execute
    Monitor
    Review Results

This distinction allows SaaS applications to provide managed experiences without exposing unnecessary engineering complexity.

---

## 12. Experiment Management

SaaS may provide controlled experiment-management capabilities.

Potential features include:

- Experiment selection
- Experiment status
- Run submission
- Run history
- Metric viewing
- Result comparison
- Report generation
- Evidence access

Supporting experiment technologies may be used underneath.

For example:

    SaaS Experiment View
            |
            v
    Experiment Service
            |
            v
    Experiment Runtime / Supporting Tools
            |
            v
    Results / Evidence

Tools such as MLflow may support experiment/model lifecycle functions but do not become the semantic authority for the General Factory.

---

## 13. Results

SaaS may provide controlled access to results.

Potential results include:

- Execution outputs
- Metrics
- Simulation results
- Emulation results
- AI results
- Quantum results
- Hybrid results
- Validation results

The results flow is:

    Runtime
      |
      v
    Results Service
      |
      v
    Authorization
      |
      v
    SaaS Results View
      |
      v
    User

The SaaS interface presents results.

The Results Service remains responsible for authoritative result retrieval.

---

## 14. Evidence

Evidence may be exposed through the SaaS layer where appropriate.

Potential evidence includes:

- Execution metadata
- Configuration
- Source version
- Workflow version
- Runtime information
- Metrics
- Validation outputs
- Logs
- Provenance
- Result references

Conceptually:

    Execution
       |
       v
    Evidence Service
       |
       v
    SaaS Evidence View
       |
       v
    Authorized User

The SaaS layer does not become the authoritative evidence store.

---

## 15. Reports

SaaS may provide application-oriented reports.

Reports may combine:

- Project information
- Workflow information
- Execution results
- Metrics
- Evidence
- Validation status
- Business/application indicators

The report-generation capability should consume authoritative platform data.

The SaaS presentation layer should not independently recreate the platform's underlying calculations.

---

## 16. Administration

SaaS may provide controlled administrative experiences.

Potential functions include:

- Project administration
- User administration
- Tenant administration
- Role administration
- Configuration
- Service status
- Usage information
- Reports
- Audit access

Administrative functions remain subject to the platform Authentication and Authorization architecture.

---

## 17. Authentication Integration

SaaS users should authenticate through the common Web Platform authentication boundary.

Conceptually:

    SaaS User
        |
        v
    Authentication
        |
        v
    Identity
        |
        v
    SaaS Application
        |
        v
    API Gateway

The SaaS application should not become an independent identity authority.

---

## 18. Authorization Integration

SaaS consumption must remain subject to server-side authorization.

Potential authorization context includes:

- User
- Role
- Tenant
- Project
- Capability
- Resource
- Operation
- Environment

Conceptually:

    SaaS Request
         |
         v
    Authentication
         |
         v
    Authorization
         |
         v
    Platform Service
         |
         v
    Operation

Client-side visibility may improve the user experience, but it must not be treated as the security boundary.

---

## 19. Tenant Isolation

Where SaaS supports multiple tenants, tenant isolation becomes an important concern.

Conceptually:

    SaaS
      |
      +--> Tenant A
      |      |
      |      +--> Projects
      |
      +--> Tenant B
             |
             +--> Projects

Tenant context should be enforced by trusted backend services.

A client-supplied tenant identifier should not by itself establish authorization.

---

## 20. Project Isolation

Projects may provide an additional logical isolation boundary.

For example:

    Tenant
      |
      +--> Project A
      |
      +--> Project B
      |
      +--> Project C

SaaS users may see only projects authorized for their identity and role.

Project isolation remains a platform authorization/service responsibility.

---

## 21. API Gateway Integration

SaaS applications should normally consume platform capabilities through the API Gateway.

Preferred flow:

    SaaS
      |
      v
    API Gateway
      |
      v
    Platform Service
      |
      v
    General Factory

The API Gateway provides the controlled API access boundary.

The SaaS layer remains focused on consumption and presentation.

---

## 22. Micro-Frontend Integration

SaaS may be implemented using the common Web Platform Micro-Frontend architecture.

Potential modules include:

- Dashboard View
- Project View
- Workflow View
- Experiment View
- Results View
- Evidence View
- Reports View
- Administration View

Conceptually:

    SaaS Web Shell
          |
          +--> Dashboard
          +--> Projects
          +--> Workflows
          +--> Experiments
          +--> Results
          +--> Evidence
          +--> Reports
          +--> Administration

These modules consume common platform APIs.

---

## 23. Web Shell

The SaaS experience may use a common Web Shell for:

- Navigation
- Authentication context
- Tenant context
- Project context
- Module composition
- Notifications
- Common UI conventions

The Web Shell remains a presentation/composition component.

It should not become the business-logic authority.

---

## 24. General Factory Relationship

SaaS does not directly select concrete implementations.

Preferred relationship:

    SaaS
      |
      v
    Platform Service
      |
      v
    General Factory
      |
      +--> Registry
      +--> Connector
      +--> Adapter
      |
      v
    Implementation
      |
      v
    Runtime

This allows SaaS applications to remain stable while implementations evolve.

---

## 25. Resource Fabric Relationship

SaaS may display resource information or submit resource-aware requests.

However:

> **The Resource Fabric remains the authoritative resource-resolution layer.**

Conceptually:

    SaaS
      |
      v
    Platform Service
      |
      v
    Resource Fabric
      |
      v
    IaaS / Resource Backend

SaaS should generally expose logical resource capabilities rather than raw infrastructure details.

---

## 26. IaaS Relationship

SaaS is normally several layers above IaaS.

Preferred relationship:

    SaaS
      |
      v
    PaaS / Platform
      |
      v
    General Factory
      |
      v
    Resource Fabric
      |
      v
    IaaS
      |
      v
    Infrastructure

SaaS users should not normally need to manage raw infrastructure resources.

Authorized engineering or administration interfaces may expose selected infrastructure information where required.

---

## 27. PaaS Relationship

PaaS provides the technical environment from which SaaS capabilities are productized.

Conceptually:

    PaaS
      |
      +--> Development
      +--> Workflow Design
      +--> Experimentation
      +--> Resource Management
      +--> Execution
      |
      v
    SaaS
      |
      +--> Managed Consumption
      +--> Dashboards
      +--> Results
      +--> Reports
      +--> Application Experience

SaaS should reuse platform capabilities rather than duplicate PaaS implementation logic.

---

## 28. AI and ML Consumption

SaaS may expose AI/ML capabilities through application-oriented experiences.

Potential experiences include:

- AI workflow execution
- Model results
- Predictions
- Metrics
- Experiment results
- Reports

The logical flow is:

    SaaS
      |
      v
    AI / ML Service
      |
      v
    General Factory
      |
      v
    AI Implementation
      |
      v
    Runtime
      |
      v
    Results

The SaaS layer should not become the AI execution engine.

---

## 29. Quantum Consumption

SaaS may expose controlled quantum-related application capabilities.

Potential experiences include:

- Quantum experiment submission
- Quantum simulation
- Quantum emulation
- Selected QPU-backed execution
- Quantum results
- Comparative results

The architecture must distinguish:

    Quantum Simulation
          |
          v
    Quantum Simulator

from:

    Quantum Emulation
          |
          v
    Quantum Emulator

and:

    Physical QPU Execution
          |
          v
    QPU Integration
          |
          v
    Physical QPU

A SaaS interface must not imply physical QPU execution merely because a quantum capability is visible.

---

## 30. Simulation and Digital Twin Consumption

SaaS may expose managed simulation experiences.

Potential applications include:

- System simulation
- Digital twin
- Scenario execution
- Results visualization
- Comparison
- Validation

Conceptually:

    SaaS
      |
      v
    Simulation Service
      |
      v
    General Factory
      |
      v
    Simulation Runtime
      |
      v
    Results

The SaaS layer provides controlled consumption.

---

## 31. Virtual-First Consumption

SaaS may consume virtual-first capabilities without exposing the underlying complexity.

For example:

    SaaS User
        |
        v
    Managed Application
        |
        v
    Virtual Asset
        |
        v
    Simulation / Emulation
        |
        v
    Results

This provides a path from technical platform capability to application-oriented consumption.

---

## 32. Execution Lifecycle

A managed SaaS execution may follow:

    Select Application / Workflow
              |
              v
    Configure Permitted Parameters
              |
              v
    Validate Request
              |
              v
    Submit Execution
              |
              v
    General Factory
              |
              v
    Runtime
              |
              v
    Results
              |
              v
    Evidence
              |
              v
    Report / Dashboard

The SaaS user may not need to see every underlying engineering step.

---

## 33. Execution Status

SaaS may provide simplified execution states such as:

- Submitted
- Queued
- Running
- Completed
- Failed
- Cancelled
- Awaiting Review

These states should be derived from authoritative execution services.

The SaaS interface should not independently invent execution state.

---

## 34. Human-in-the-Loop

SaaS applications may incorporate controlled human actions.

Examples include:

- Approval
- Review
- Exception handling
- Parameter confirmation
- Result acceptance
- Report approval

Conceptually:

    Automated Execution
           |
           v
      Human Review
           |
       +---+---+
       |       |
       v       v
    Approve   Reject
       |
       v
    Continue

The underlying workflow engine remains responsible for execution semantics.

---

## 35. Notifications

SaaS may provide notifications for events such as:

- Workflow completion
- Execution failure
- Approval required
- Results available
- Evidence available
- Resource availability
- Project events

Notifications should be generated from authoritative platform events where practical.

---

## 36. Reports and Export

SaaS may allow authorized users to export:

- Reports
- Results
- Evidence packages
- Metrics
- Project summaries

Exports should preserve relevant:

- Version information
- Provenance
- Project context
- Execution context
- Authorization context

The export mechanism should not bypass platform authorization.

---

## 37. Audit and Provenance

SaaS interactions may generate audit events.

Potential events include:

- User access
- Project access
- Workflow submission
- Execution request
- Results access
- Evidence access
- Report generation
- Administrative changes

Audit information should be retained through the appropriate platform audit capability.

The SaaS front end should not become the authoritative audit repository.

---

## 38. Observability

SaaS may provide client-level and application-level observability.

Potential information includes:

- Application availability
- Module load status
- API errors
- User-facing errors
- Request latency
- Execution status
- Results availability

Backend service and infrastructure telemetry remain the responsibility of their respective layers.

---

## 39. Data and IP Protection

SaaS may expose valuable project information, including:

- Source-derived outputs
- Models
- Results
- Reports
- Evidence
- Experiment information
- Workflow information

Access should therefore be controlled through:

- Authentication
- Authorization
- Tenant isolation
- Project isolation
- Role policies
- API controls

The SaaS layer should not expose sensitive information merely because it is technically available from a backend service.

---

## 40. Commercial Productization

SaaS provides a future route toward productizing General Factory capabilities.

The evolution may be:

    General Factory
          |
          v
    Technical PaaS
          |
          v
    Managed SaaS Capability
          |
          v
    Industry / Enterprise Application

This allows the same technical platform to support multiple application experiences.

Potential SaaS product categories may eventually include:

- Workflow applications
- Simulation applications
- Digital twin applications
- AI applications
- Quantum applications
- Industry applications
- Enterprise engineering applications

These should consume common platform capabilities rather than recreate them.

---

## 41. Industry Application Relationship

The Agriculture Digital Farm pilot provides an example of a domain application that may eventually consume generalized SaaS capabilities.

The intended progression is:

    Agriculture Pilot
          |
          v
    Generalized Platform Capability
          |
          v
    PaaS Implementation
          |
          v
    SaaS Application
          |
          v
    Digital Farm Application

The same architecture can support future industry domains.

The SaaS layer should therefore avoid embedding agriculture-specific assumptions into its generic platform definition.

---

## 42. Pilot-to-SaaS Generalization

The pilot should be treated as an evidence source rather than a SaaS template to be copied wholesale.

The intended transformation is:

    Pilot Implementation
          |
          v
    Reusable Capability
          |
          v
    General Factory
          |
          v
    PaaS
          |
          v
    SaaS Consumption
          |
          v
    Domain Application

This provides a controlled path from technical pilot evidence to productized capability.

---

## 43. PaaS-to-SaaS Boundary

The boundary can be summarized as:

| Capability | PaaS | SaaS |
|---|---:|---:|
| Project management | Full | Managed |
| Code development | Yes | Usually limited |
| Browser IDE | Yes | Optional |
| Terminal | Yes | Usually hidden |
| Workflow authoring | Full | Controlled/managed |
| Workflow execution | Yes | Yes |
| Experiment development | Yes | Managed |
| Resource configuration | Advanced | Abstracted |
| Simulation | Yes | Managed |
| Quantum development | Yes | Controlled |
| Results | Yes | Yes |
| Evidence | Yes | Yes |
| Reports | Optional | Strong focus |
| Infrastructure management | Advanced | Usually hidden |

This is a product/experience distinction, not a separate technical architecture.

---

## 44. Initial Scope

The initial SaaS reference implementation scope is:

- Controlled platform consumption
- SaaS Web Shell
- Dashboard
- Project views
- Workflow consumption
- Experiment management
- Results
- Evidence
- Reports
- Administration
- Authentication integration
- Authorization integration
- API Gateway integration
- PaaS integration
- General Factory integration
- Resource Fabric integration
- Managed execution
- Notifications
- Audit integration
- Tenant context
- Project context

The following are outside the initial scope unless separately implemented:

- Full commercial SaaS product suite
- Complete billing/subscription platform
- Full customer-management system
- Full enterprise CRM
- Full identity-provider implementation
- General Factory implementation
- Resource Fabric implementation
- IaaS implementation
- Full workflow engine implementation
- Complete domain-specific application portfolio
- Production-scale global SaaS infrastructure

---

## 45. Reference Implementation Status

**Status:** Post-pilot reference implementation definition

**Reference ID:** `REF-WEB-SAAS-001`

**Primary Layer:** General Factory / Web Platform

**Primary Role:** Controlled platform consumption and future productization layer

**Semantic Authority:** No

**Business Logic Authority:** No — platform services remain authoritative

**Commercial Priority:** Future productization layer

**Implementation-Specific:** Yes

**Production Ready:** No

**Pilot Derived:** Partially — generalized from post-pilot platform requirements and pilot evidence

---

## 46. Guiding Principles

1. Treat SaaS as a controlled consumption layer.
2. Keep business and application logic in platform services.
3. Reuse PaaS and General Factory capabilities.
4. Avoid duplicating workflow semantics in the front end.
5. Keep Resource Fabric authoritative for resource resolution.
6. Keep General Factory authoritative for implementation resolution.
7. Keep Authentication and Authorization separate.
8. Enforce authorization server-side.
9. Preserve tenant and project isolation.
10. Provide simplified experiences without destroying technical traceability.
11. Distinguish managed consumption from engineering development.
12. Keep infrastructure complexity behind appropriate platform boundaries.
13. Preserve results and evidence provenance.
14. Generalize pilot capabilities rather than copying domain-specific applications.
15. Treat SaaS as a future productization path rather than the immediate replacement for PaaS.
16. Maintain a common platform beneath multiple SaaS experiences.

---

## 47. Future Evolution

Future work may include:

- SaaS application templates
- Domain-specific SaaS applications
- Subscription management
- Usage metering
- Tenant onboarding
- Customer administration
- SaaS-specific dashboards
- Managed workflow products
- Managed simulation products
- Digital twin applications
- AI application services
- Quantum application services
- Industry applications
- Report automation
- Advanced notifications
- API productization
- External developer APIs
- SaaS analytics
- Usage-based resource controls
- Multi-tenant SaaS operations
- Enterprise SaaS deployment
- SaaS marketplace integration

These capabilities should be introduced as the PaaS capabilities mature and concrete product opportunities are validated.

---

## 48. Summary

The SaaS reference implementation establishes the **controlled consumption and future productization layer above the post-pilot PaaS**.

Its architectural role is:

    User
      |
      v
    SaaS Application
      |
      +--> Dashboards
      +--> Projects
      +--> Workflows
      +--> Experiments
      +--> Results
      +--> Evidence
      +--> Reports
      +--> Administration
      |
      v
    API Gateway
      |
      v
    Platform Services
      |
      v
    General Factory
      |
      v
    Resource Fabric
      |
      v
    Runtime / IaaS / Backends

The key architectural principle is:

> **SaaS provides controlled consumption of platform capabilities; platform services retain business and application logic; the General Factory resolves capabilities to implementations; the Resource Fabric resolves resources; and the PaaS remains the underlying technical engineering environment.**

This creates a coherent progression:

    General Framework
          |
          v
    General Factory
          |
          v
    PaaS
    Engineering Environment
          |
          v
    SaaS
    Managed Consumption
          |
          v
    Industry / Enterprise Applications

The architecture therefore provides a practical path from the post-pilot technical platform toward future SaaS productization without prematurely duplicating the underlying platform capabilities.
---

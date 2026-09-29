# Micro-frontends - Factory Implementation

Implementation area for composable Web Platform front-end
modules.

Individual modules may later be implemented independently
while remaining integrated through the common Web Shell.
---
# Micro-frontends - Factory Implementation

Reference implementation area for **composable Web Platform front-end modules** within the General Factory.

The Micro-Frontend implementation provides a modular presentation architecture in which individual front-end modules can be developed, versioned, deployed, and evolved independently while remaining integrated through a common **Web Shell**.

The Web Shell provides composition, navigation, shared client capabilities, and integration boundaries.

Individual micro-frontends provide focused user experiences such as workflow design, resource views, project management, experimentation, administration, and other platform functions.

The Micro-Frontend layer is a **presentation and interaction boundary**. It is not the semantic authority for workflows, resources, execution, authorization, or General Factory capability resolution.

---

## 1. Purpose

The Micro-Frontend implementation provides a composable user-interface architecture for the post-pilot Web Platform.

It may support:

- Independent front-end modules
- Common Web Shell
- Navigation
- Shared client context
- Project context
- Tenant context
- Authentication integration
- Authorization-aware presentation
- API Gateway integration
- Workflow views
- Resource views
- Client views
- Project views
- Experiment views
- Results views
- Administration views
- Developer views
- Operations views

The architecture should allow individual modules to evolve without requiring the entire Web Platform front end to be redeployed as a single application.

---

## 2. Post-Pilot Role

The Micro-Frontend layer provides the presentation experience for the post-pilot PaaS.

The intended relationship is:

    User
      |
      v
    Web Shell
      |
      +------------------------------+
      |              |               |
      v              v               v
    Client        Workflow         Resource
    View            View             View
      |              |               |
      +--------------+---------------+
                     |
                     v
               API Gateway
                     |
                     v
              Platform Services
                     |
                     v
               General Factory

The micro-frontends provide user interaction.

The platform services provide logical capabilities.

The General Factory provides implementation resolution.

---

## 3. Architectural Position

The Micro-Frontend layer sits at the presentation edge of the Web Platform.

Conceptually:

    User
      |
      v
    Micro-Frontends
      |
      v
    Web Shell
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

The exact ordering of Web Shell and micro-frontends may vary according to the selected front-end implementation, but the logical separation remains.

---

## 4. Web Shell

The Web Shell provides the common environment in which micro-frontends operate.

Potential responsibilities include:

- Application bootstrap
- Navigation
- Module composition
- Shared layout
- Global client context
- Session state integration
- Project context
- Tenant context
- Common notifications
- Common error handling
- API client integration
- Module lifecycle
- Front-end routing
- Shared UI conventions

The Web Shell should remain relatively lightweight.

It should not become a second platform backend.

---

## 5. Micro-Frontend Modules

Individual modules may represent focused platform experiences.

Potential modules include:

- Client View
- Project View
- Workflow View
- Resource View
- Experiment View
- Notebook View
- Results View
- Evidence View
- Administration View
- Developer View
- Operations View
- QAI Engineer View
- Systems Engineer View

Each module may have its own implementation lifecycle while participating in the common Web Platform.

---

## 6. Module Independence

A micro-frontend should ideally have a clearly defined boundary.

A module may have:

- Own UI components
- Own routes
- Own presentation state
- Own API client logic
- Own tests
- Own version
- Own build process
- Own deployment artifact

However, modules should use shared platform contracts rather than bypassing the platform architecture.

Conceptually:

    Micro-Frontend
          |
          v
    Common API Boundary
          |
          v
    Platform Capability

---

## 7. Common Web Shell Integration

Individual modules remain integrated through the Web Shell.

For example:

    Web Shell
       |
       +--> Client View
       |
       +--> Project View
       |
       +--> Workflow View
       |
       +--> Resource View
       |
       +--> Experiment View
       |
       +--> Results View
       |
       +--> Administration View

The Web Shell provides a consistent user experience while allowing modules to evolve independently.

---

## 8. Presentation vs Semantic Authority

Micro-frontends should not become the semantic authority for platform objects.

For example:

### Workflow

The micro-frontend presents and edits the workflow.

The logical workflow model remains authoritative elsewhere.

### Resource

The resource view presents resource information.

The Resource Fabric remains authoritative for resource resolution.

### Execution

The UI presents execution state.

The Workflow Engine/runtime remains authoritative for execution.

### Capability

The UI presents available capabilities.

The Framework and platform services define the logical capability model.

This distinction is central to the architecture.

---

## 9. Workflow Micro-Frontend

The Workflow View may provide:

- Workflow browsing
- Workflow creation
- Visual workflow design
- Workflow editing
- Workflow validation
- Workflow version selection
- Execution submission
- Execution status

A conceptual flow is:

    Workflow View
          |
          v
    Visual Workflow Designer
          |
          v
    Logical Workflow Model
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

The micro-frontend provides the user experience.

It does not become the workflow execution authority.

---

## 10. Resource Micro-Frontend

The Resource View may provide:

- Resource discovery
- Resource status
- Resource capabilities
- Resource availability
- Resource requirements
- Execution-resource selection views

Conceptually:

    Resource View
         |
         v
    API Gateway
         |
         v
    Resource Service
         |
         v
    Resource Fabric
         |
         v
    IaaS / Resource Backend

The Resource View is a presentation layer.

The Resource Fabric remains authoritative for resource resolution.

---

## 11. Client Views

Different users may require different presentations of the same platform.

Potential views include:

- Executive
- Business Analyst
- Domain Expert
- Workflow Designer
- Developer
- Data Scientist
- QAI Engineer
- Systems Engineer
- Operations
- Administrator

These views may be implemented as separate micro-frontends or as modules within a shared front-end architecture.

The presentation differences should not automatically imply different authorization models.

Authorization remains a server-side concern.

---

## 12. Project Context

Project context may be shared across micro-frontends.

For example:

    Web Shell
       |
       +--> Current Tenant
       |
       +--> Current Project
       |
       +--> Current Environment
       |
       +--> Current User
       |
       +--> Current Session

A Workflow View can therefore operate within the same project context as:

- Experiment View
- Resource View
- Results View
- Evidence View

The authoritative project context remains managed by the platform rather than being trusted solely from client-side state.

---

## 13. Tenant Context

Where multi-tenant operation is required, the Web Shell may provide the user experience for tenant selection or context display.

Conceptually:

    User
      |
      v
    Web Shell
      |
      v
    Tenant Context
      |
      v
    Micro-Frontend
      |
      v
    API Gateway
      |
      v
    Server-Side Authorization

Client-side tenant context is presentation information.

Server-side authorization remains authoritative.

---

## 14. Authentication Integration

Micro-frontends may consume authentication state provided through the Web Platform.

Conceptually:

    Identity Provider
          |
          v
    Authentication
          |
          v
    Web Shell
          |
          v
    Micro-Frontends
          |
          v
    API Gateway

The Micro-Frontend layer should not independently implement the platform's identity authority.

Authentication remains a separate Web Platform capability.

---

## 15. Authorization Integration

Micro-frontends may use authorization information to improve the user experience.

For example:

    Authorization Context
          |
          v
    Web Shell
          |
          +--> Show permitted navigation
          |
          +--> Hide unavailable actions
          |
          v
    Micro-Frontend

However:

> **Client-side presentation controls are not the authorization boundary.**

Protected operations must remain enforced by trusted backend services.

---

## 16. API Gateway Integration

Micro-frontends should normally access platform capabilities through the API Gateway or an approved platform API boundary.

Preferred interaction:

    Micro-Frontend
          |
          v
    API Gateway
          |
          v
    Platform Service
          |
          v
    General Factory

This avoids direct coupling between browser code and infrastructure-specific backend services.

---

## 17. Platform Service Integration

The micro-frontend should consume logical platform services.

Potential services include:

- Project Service
- Workflow Service
- Asset Service
- Experiment Service
- Resource Service
- Execution Service
- Results Service
- Evidence Service
- Registry Service
- Administration Service

The micro-frontend should not bypass these services to directly manipulate infrastructure.

---

## 18. General Factory Relationship

Micro-frontends do not directly resolve implementations.

The preferred relationship is:

    User
      |
      v
    Micro-Frontend
      |
      v
    API Gateway
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

The presentation layer requests a logical capability.

The General Factory determines the implementation.

---

## 19. Resource Fabric Relationship

Resource-oriented micro-frontends should not become resource authorities.

Preferred interaction:

    Resource View
          |
          v
    Resource Service
          |
          v
    Resource Fabric
          |
          v
    IaaS / Backend

The Resource View presents:

- Available resources
- Resource characteristics
- Status
- Capabilities
- Requirements

The Resource Fabric resolves actual resource requirements.

---

## 20. Workflow Designer Integration

The Micro-Frontend architecture provides a natural host for visual workflow design.

For example:

    Web Shell
       |
       v
    Workflow Micro-Frontend
       |
       v
    Visual Workflow Designer
       |
       +--> React Flow
       +--> Eclipse GLSP
       +--> BPMN tooling
       |
       v
    Logical Workflow Model
       |
       v
    Workflow Service

React Flow, Eclipse GLSP, BPMN, or other technologies are implementation choices.

They do not become the semantic authority for the General Framework.

---

## 21. Notebook and IDE Integration

The Web Platform may expose links or embedded experiences for:

- Jupyter
- Experiment notebooks
- VS Code
- Eclipse Theia
- Eclipse Che
- QAI laboratory tools

For example:

    Developer View
          |
          +--> Notebook
          |
          +--> IDE
          |
          +--> Workflow Designer
          |
          +--> Experiment View

The Micro-Frontend layer provides navigation and integration.

The actual development environment may remain independently implemented.

---

## 22. Experiment View

An Experiment View may provide:

- Experiment creation
- Experiment configuration
- Run submission
- Run history
- Metrics
- Artifact views
- Comparison
- Validation
- Evidence access

A conceptual flow is:

    Experiment View
          |
          v
    Experiment Service
          |
          v
    Experiment Runtime
          |
          v
    Results / Evidence

Supporting tools such as MLflow may be integrated where useful.

MLflow remains a supporting experiment/model lifecycle technology rather than the semantic authority for the General Factory.

---

## 23. Results View

The Results View may present:

- Execution status
- Metrics
- Output artifacts
- Validation results
- Experiment results
- Simulation results
- Emulation results
- AI results
- Quantum results
- Hybrid results

Conceptually:

    Results View
         |
         v
    Results Service
         |
         v
    Authorized Results
         |
         v
    User

The UI does not become the authoritative results store.

---

## 24. Evidence View

The Evidence View may provide controlled presentation of:

- Execution evidence
- Validation evidence
- Provenance
- Configuration
- Metrics
- Logs
- Results
- Version information

The evidence service remains responsible for authoritative evidence retrieval.

---

## 25. Administration View

An Administration micro-frontend may provide access to:

- User administration
- Tenant administration
- Project administration
- Role configuration
- Platform configuration
- Service status
- Registry status
- Deployment status

Administrative actions remain subject to server-side authorization.

---

## 26. Operations View

The Operations View may present:

- Platform health
- Service status
- Workflow executions
- Runtime state
- Resource availability
- Failures
- Alerts
- Execution history

The Operations View should consume operational APIs rather than directly managing infrastructure.

---

## 27. Developer View

The Developer View may provide access to:

- Project files
- Source repositories
- API documentation
- Workflow definitions
- Notebooks
- Experiment tools
- Logs
- Results
- Development environments

It may integrate with:

- GitHub
- GitLab
- VS Code
- Eclipse Theia
- Jupyter
- QAI development tools

Repository and execution access remain subject to Authentication and Authorization.

---

## 28. Module Communication

Micro-frontends may need to communicate with the Web Shell or other modules.

Preferred communication mechanisms should use explicit contracts.

Possible mechanisms include:

- Shared application context
- Typed events
- Navigation events
- Shared client services
- API-mediated state
- URL/query state
- Controlled browser messaging

Modules should avoid tightly coupling themselves to the internal implementation of other modules.

---

## 29. Shared State

Shared state should be minimized and carefully defined.

Potential shared state includes:

- Current user
- Current tenant
- Current project
- Current environment
- Session state
- Navigation state
- Notification state

Domain state such as workflow execution state should normally remain authoritative in backend services.

---

## 30. Module Lifecycle

A micro-frontend may follow a lifecycle such as:

    Discover
       |
       v
    Load
       |
       v
    Initialize
       |
       v
    Authenticate Context
       |
       v
    Establish Project Context
       |
       v
    Render
       |
       v
    Interact
       |
       v
    Persist via API
       |
       v
    Update
       |
       v
    Unload

The Web Shell coordinates module lifecycle where required.

---

## 31. Independent Versioning

Individual modules may have independent versions.

For example:

    Web Shell       1.x
    Workflow View   1.x
    Resource View   1.x
    Experiment View 1.x
    Admin View      1.x

Compatibility should be governed through explicit contracts.

Independent versioning does not remove the need for platform API compatibility.

---

## 32. Independent Deployment

Where appropriate, individual micro-frontends may be independently deployed.

Possible deployment models include:

- Static assets
- Separate frontend applications
- Containerized modules
- Module federation
- Web component-based modules
- Server-delivered modules

The selected technology is an implementation decision.

The logical micro-frontend boundary remains independent of the technology.

---

## 33. Deployment Relationship

The Micro-Frontend layer is deployed as part of the Web Platform deployment architecture.

Conceptually:

    Deployment Profile
          |
          v
    Web Platform
          |
          +--> Web Shell
          |
          +--> Micro-Frontends
          |
          +--> API Gateway
          |
          +--> Platform Services

The same logical micro-frontend architecture may be deployed on:

- VPS
- Cloud
- Private cloud
- Dedicated infrastructure
- Enterprise environments

---

## 34. PaaS Integration

Micro-frontends provide the primary user experience for the post-pilot PaaS.

Potential PaaS experiences include:

    PaaS Web Shell
       |
       +--> Project Management
       +--> Workflow Design
       +--> Virtual Assets
       +--> Notebook / Code
       +--> Experiments
       +--> Resources
       +--> Execution
       +--> Results
       +--> Evidence
       +--> Administration

This allows the PaaS to present one integrated workspace while internally using modular front-end components.

---

## 35. SaaS Integration

Future SaaS applications may use a subset of the same micro-frontends or dedicated application experiences.

Conceptually:

    SaaS Application
          |
          v
    Selected Micro-Frontends
          |
          v
    Platform APIs
          |
          v
    General Factory

SaaS consumers should generally see simplified domain/application experiences rather than raw infrastructure complexity.

---

## 36. IaaS Relationship

Micro-frontends may present selected infrastructure information to authorized users.

For example:

    Resource View
          |
          v
    Resource Service
          |
          v
    Resource Fabric
          |
          v
    IaaS

Ordinary users should generally interact with logical resource capabilities rather than provider-specific infrastructure details.

Engineering and operations views may expose additional infrastructure information where authorized.

---

## 37. Security Boundary

The Micro-Frontend layer is not a trusted security boundary.

Client-side code can:

- Display controls
- Hide controls
- Display available capabilities
- Provide navigation
- Validate user input for convenience

Client-side code must not be relied upon to:

- Grant permissions
- Protect sensitive resources
- Enforce tenant isolation
- Enforce project isolation
- Authorize execution
- Protect infrastructure

Server-side Authentication and Authorization remain authoritative.

---

## 38. Accessibility and Usability

The post-pilot Web Platform should consider:

- Consistent navigation
- Keyboard accessibility
- Responsive layouts
- Clear status information
- Error visibility
- Consistent terminology
- User-role appropriate presentation
- Clear workflow state
- Accessible data presentation

The specific accessibility standard and implementation approach should be established during detailed UI implementation.

---

## 39. Observability

Micro-frontends may provide client-side telemetry such as:

- Page/module load time
- Client errors
- API errors
- Navigation events
- User interaction metrics
- Module availability

Telemetry should respect applicable privacy, security, and data-governance requirements.

Backend execution telemetry remains the responsibility of the relevant platform/runtime services.

---

## 40. Performance

Micro-frontend architecture introduces additional considerations around:

- Module loading
- Bundle size
- Network requests
- Shared dependencies
- Initialization time
- Caching
- Lazy loading

The post-pilot implementation should avoid unnecessary fragmentation.

Micro-frontends should be introduced where modularity provides meaningful architectural or delivery value.

---

## 41. Post-Pilot Demonstrator

The initial demonstrator should prove that multiple independently defined views can operate through a common Web Shell.

A practical sequence is:

1. Load Web Shell.
2. Authenticate the user.
3. Establish tenant and project context.
4. Load Client View.
5. Navigate to Workflow View.
6. Open the Visual Workflow Designer.
7. Save a workflow through the API Gateway.
8. Navigate to Resource View.
9. Inspect authorized resources.
10. Submit an execution request.
11. Navigate to Results View.
12. Display results and evidence.
13. Navigate to Operations View.
14. Observe execution state.

The demonstrator should prove **composition and common platform integration**, not production-scale front-end federation.

---

## 42. Relationship to Pilot

The Agriculture Digital Farm pilot provides an important source of user journeys and interface requirements.

The post-pilot Micro-Frontend architecture should generalize reusable interaction patterns rather than reproduce a Digital Farm-specific front end.

Potential reusable patterns include:

- Project management
- Workflow composition
- Virtual asset management
- Experiment management
- Resource management
- Execution monitoring
- Results presentation
- Evidence presentation
- Administration
- Operations

These patterns can later support agriculture and other industry implementations.

---

## 43. Reference Implementations

The General Factory contains supporting Micro-Frontend reference implementations.

Relevant areas include:

- `reference_implementations/micro_frontends/client_views/`
- `reference_implementations/micro_frontends/workflow_views/`
- `reference_implementations/micro_frontends/resource_views/`

These reference implementations provide more specific patterns.

This directory provides the **Web Platform-level Micro-Frontend implementation boundary**.

---

## 44. Initial Scope

The initial reference implementation scope is:

- Common Web Shell
- Modular front-end architecture
- Module composition
- Navigation
- Shared client context
- Tenant context
- Project context
- Authentication integration
- Authorization-aware presentation
- API Gateway integration
- Client View
- Workflow View
- Resource View
- Experiment View
- Results View
- Evidence View
- Administration View
- Operations View
- Developer View
- Independent module lifecycle
- Independent versioning concepts
- PaaS integration

The following are outside the initial scope unless separately implemented:

- Complete production front-end platform
- Full design system
- Identity-provider implementation
- Authorization engine
- API Gateway implementation
- Workflow Engine implementation
- General Factory implementation
- Resource Fabric implementation
- IaaS implementation
- Complete SaaS application suite
- Production-scale module federation
- Multi-region frontend delivery

---

## 45. Reference Implementation Status

**Status:** Post-pilot reference implementation definition

**Reference ID:** `REF-WEB-MICROFRONTENDS-001`

**Primary Layer:** General Factory / Web Platform

**Primary Role:** Composable presentation and interaction layer

**Semantic Authority:** No

**Security Authority:** No — server-side authorization remains authoritative

**Implementation-Specific:** Yes

**Production Ready:** No

**Pilot Derived:** Partially — generalized from post-pilot platform and pilot interaction requirements

---

## 46. Guiding Principles

1. Use the Web Shell as the common composition boundary.
2. Keep individual micro-frontends focused and modular.
3. Separate presentation from platform semantics.
4. Keep workflow semantics outside the UI.
5. Keep Resource Fabric authoritative for resource resolution.
6. Keep execution authority outside the front end.
7. Use API Gateway and platform APIs as controlled integration boundaries.
8. Do not treat client-side controls as security enforcement.
9. Preserve tenant and project context.
10. Allow modules to evolve independently where useful.
11. Use explicit contracts between modules and platform services.
12. Minimize shared client state.
13. Keep provider-specific infrastructure details out of ordinary user experiences.
14. Support different user perspectives without duplicating platform semantics.
15. Generalize reusable pilot interaction patterns rather than copying application-specific UI.
16. Avoid unnecessary front-end fragmentation.

---

## 47. Future Evolution

Future work may include:

- Module federation
- Web Components
- Shared design system
- Independent module repositories
- Independent module deployment
- Front-end API client SDK
- Typed platform contracts
- Shared event model
- Advanced role-aware navigation
- Real-time execution status
- WebSocket/SSE integration
- Collaborative workflow design
- Embedded IDE experiences
- Embedded notebook experiences
- Advanced resource visualization
- Experiment dashboards
- Evidence dashboards
- Front-end observability
- Accessibility validation
- Performance optimization
- SaaS-specific application shells

The selected technologies should be determined during implementation rather than becoming requirements of the Framework.

---

## 48. Summary

The Micro-Frontend reference implementation establishes the **composable presentation layer for the post-pilot Web Platform**.

Its architectural role is:

    User
      |
      v
    Web Shell
      |
      +-------------------------------+
      |        |        |       |     |
      v        v        v       v     v
    Client   Workflow Resource Experiment Results
     View      View      View     View     View
      |        |        |       |     |
      +--------+--------+-------+-----+
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
                 Runtime / IaaS

The key architectural principle is:

> **The Web Shell composes the user experience, individual micro-frontends provide focused presentation and interaction, platform APIs provide controlled access to capabilities, and the backend platform remains authoritative for semantics, authorization, resource resolution, and execution.**

This provides a practical foundation for the post-pilot **PaaS workspace**, while preserving a path toward future SaaS applications and multiple user-specific experiences without turning the front end into the platform's semantic authority.
---

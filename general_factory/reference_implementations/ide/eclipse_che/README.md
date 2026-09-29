# Eclipse Che

Reference implementation for the General Factory.

## Reference ID

REF-IDE-ECLIPSECHE-001

## Purpose

Reference implementation for cloud development workspaces and IDE-based PaaS engineering.

## Architectural Role

This reference implementation demonstrates how a technology,
sample, external system, development environment, resource,
workflow or execution capability can participate in the
General Factory.

The reference implementation does not redefine the General
Framework. It provides an implementation reference that can
be resolved through Factory capabilities, registries,
connectors, adapters and runtime services.

## Common Structure

- configuration/ — configuration and environment definitions.
- samples/ — sample implementation assets.
- workflows/ — workflow examples and execution definitions.
- deployment/ — deployment examples and profiles.
- execution/ — execution configuration and runtime examples.
- results/ — sample execution results.
- evidence/ — validation, provenance and evidence artifacts.

## Integration Pattern

Framework Capability
        ↓
Factory Registry
        ↓
Connector / Adapter
        ↓
Reference Implementation
        ↓
Execution
        ↓
Results
        ↓
Evidence

## Status

Reference structure established.

Actual implementation assets should be added only when
available and validated.

## Principles

1. Keep the Framework technology-neutral.
2. Do not duplicate existing repositories unnecessarily.
3. Preserve implementation identity.
4. Preserve provenance.
5. Use connectors for access and invocation.
6. Use adapters where contract translation is required.
7. Resolve resources through the Resource Fabric.
8. Capture meaningful results and evidence.
9. Keep simulation, emulation and physical execution distinct.
10. Promote validated samples incrementally.
---

# Eclipse Che

Reference implementation for the General Factory.

## Reference ID

REF-IDE-ECLIPSECHE-001

## Purpose

Reference implementation for cloud development workspaces and IDE-based PaaS engineering.

This reference implementation demonstrates how Eclipse Che can provide a browser-accessible development workspace for General Factory engineering activities.

The workspace may provide an integrated environment for:

- Source code development.
- Notebook development.
- Workflow development.
- Configuration development.
- Experiment development.
- AI/ML development.
- Quantum development.
- Virtual asset development.
- Simulation and emulation development.
- Testing and validation.
- Deployment preparation.
- Engineering documentation.

Eclipse Che is treated as an IDE and development-workspace implementation. It is not the semantic authority for the General Framework, General Factory or logical workflow model.

## Architectural Role

This reference implementation demonstrates how a technology, sample, external system, development environment, resource, workflow or execution capability can participate in the General Factory.

The reference implementation does not redefine the General Framework. It provides an implementation reference that can be resolved through Factory capabilities, registries, connectors, adapters and runtime services.

The architectural relationship may be represented as:

    General Framework
            ↓
    Factory Capability
            ↓
    Factory Registry
            ↓
    IDE / Workspace Binding
            ↓
    Eclipse Che Workspace
            ↓
    Development / Engineering Activity
            ↓
    General Factory Services
            ↓
    Execution
            ↓
    Results
            ↓
    Evidence

Eclipse Che provides the development environment while the surrounding General Factory provides capability resolution, runtime integration and resource management.

## Development Workspace Model

The Eclipse Che reference implementation may provide a workspace containing the tools and resources required for a specific engineering activity.

A simplified model is:

    User
      ↓
    Workspace
      ↓
    IDE
      ↓
    Source / Notebook / Workflow / Configuration
      ↓
    Development
      ↓
    Validation
      ↓
    Execution
      ↓
    Results + Evidence

The workspace should be treated as an engineering environment rather than as the authoritative representation of the General Factory architecture.

## Cloud Workspace

The implementation is intended to support cloud-hosted development workspaces.

A possible deployment model is:

    User
      ↓
    Web Access
      ↓
    Eclipse Che Workspace
      ↓
    Development Environment
      ↓
    General Factory Services
      ↓
    Resource Fabric
      ↓
    Execution

The exact infrastructure may vary according to the deployment profile.

## IDE Role

The IDE may provide:

- Source editing.
- File navigation.
- Terminal access.
- Debugging.
- Project management.
- Extension support.
- Notebook development where supported.
- Configuration editing.
- Workflow development.
- Test execution.
- Version-control interaction.

The IDE is a presentation and development environment.

It should not become the semantic authority for:

- Framework definitions.
- Factory capability definitions.
- Resource policies.
- Governance policies.
- Execution semantics.

## Workspace Role

The workspace provides an isolated or controlled environment in which engineering activities can be performed.

Potential workspace components include:

- Source repositories.
- Development tools.
- Runtime dependencies.
- Python environments.
- Container tools.
- Notebook tools.
- CLI tools.
- Configuration.
- Test utilities.
- QAI development assets.

The exact workspace contents should be defined by the selected workspace profile.

## General Factory Integration

Eclipse Che may be resolved as an IDE capability through the General Factory.

For example:

    IDE Capability
          ↓
    Factory Registry
          ↓
    Eclipse Che Binding
          ↓
    Workspace Profile
          ↓
    Eclipse Che Workspace
          ↓
    Engineering Activity

This allows the logical IDE capability to remain independent from the selected IDE technology.

## IDE Portability

The General Factory may support multiple IDE implementations.

For example:

    IDE / Workspace Capability
            ↓
    Factory Registry
            ├── Eclipse Che
            ├── Eclipse Theia
            └── VS Code
            ↓
    Workspace
            ↓
    Engineering Activity

The logical development-workspace capability remains stable while the implementation can vary.

## Source Repository Integration

The workspace may connect to source repositories.

Potential repository sources include:

- GitHub.
- GitLab.
- Local repositories.
- Other authorized source systems.

A representative path is:

    Workspace
        ↓
    Source Repository
        ↓
    Working Tree
        ↓
    Development
        ↓
    Validation
        ↓
    Execution

Repository identity and revision should be preserved where provenance and reproducibility are required.

## Git Integration

Git-based development may support:

- Repository cloning.
- Branch management.
- Revision management.
- Commit creation.
- Source comparison.
- Change tracking.
- Remote synchronization.

Git operations remain source-management activities and should not be confused with General Factory capability resolution.

## Workflow Development

Eclipse Che may provide an engineering environment for developing logical workflows.

A representative path is:

    Workflow Requirement
            ↓
    Workspace
            ↓
    Workflow Definition
            ↓
    Validation
            ↓
    General Factory
            ↓
    Runtime Binding
            ↓
    Execution

The workflow definition should remain portable and should not become dependent on Eclipse Che-specific implementation details unless explicitly required.

## Visual Workflow Designer Relationship

The workspace may host or integrate with a visual workflow designer.

For example:

    Eclipse Che Workspace
            ↓
    Visual Workflow Designer
            ↓
    Logical Workflow Model
            ↓
    Validation
            ↓
    General Factory
            ↓
    Execution

Potential visual workflow technologies may include:

- Eclipse GLSP.
- React Flow.
- Other compatible node-based editors.
- BPMN-oriented tooling where appropriate.

The visual editor provides composition and interaction.

The logical workflow model remains the semantic representation.

## Notebook Development

Eclipse Che may provide a development environment for notebook-based engineering.

Potential activities include:

- Experiment notebooks.
- Data analysis.
- AI/ML experimentation.
- Quantum experimentation.
- Simulation.
- Emulation.
- Validation.
- Demonstration development.

A representative path is:

    Notebook
        ↓
    Workspace
        ↓
    Development / Experiment
        ↓
    Runtime
        ↓
    Results
        ↓
    Evidence

Notebook execution may use a separate runtime or execution backend.

## AI/ML Development

The workspace may support development of AI/ML implementations.

Potential activities include:

- Model development.
- Local inference development.
- Experiment development.
- Evaluation.
- Data processing.
- AI workflow development.
- MLflow integration.
- AI emulation development.

A possible architecture is:

    Eclipse Che
          ↓
    AI/ML Development
          ↓
    General Factory
          ↓
    AI/ML Reference Implementation
          ↓
    Runtime / Resource Fabric
          ↓
    Results + Evidence

The workspace itself is not a complete AI/ML platform.

## Quantum Development

The workspace may also support quantum development.

Potential activities include:

- Quantum circuit development.
- Quantum algorithm development.
- Quantum simulation.
- Quantum emulation.
- Hybrid quantum-classical workflows.
- Quantum experiment development.

A representative path is:

    Eclipse Che
          ↓
    Quantum Development
          ↓
    General Factory
          ↓
    Quantum Implementation
          ↓
    Simulator / Emulator / QPU
          ↓
    Results + Evidence

The workspace does not itself constitute a quantum backend.

## Virtual Asset Development

The workspace may be used to develop and validate virtual assets.

For example:

    Virtual Asset Definition
            ↓
    Eclipse Che Workspace
            ↓
    Implementation
            ↓
    Validation
            ↓
    Factory Registry
            ↓
    Runtime Binding

Virtual assets may include virtual devices, computational resources, data assets or other executable representations.

## Simulation and Emulation Development

The workspace may provide an environment for developing simulation and emulation components.

For example:

    Workspace
        ↓
    Simulation / Emulation Code
        ↓
    Validation
        ↓
    Reference Implementation
        ↓
    Runtime
        ↓
    Results + Evidence

Simulation, emulation and physical execution remain separate execution modes.

## PaaS Relationship

Eclipse Che may serve as an implementation component within the General Factory PaaS engineering workspace.

A possible relationship is:

    PaaS Workspace
            ↓
    Eclipse Che IDE
            ↓
    Code / Notebook / Workflow
            ↓
    General Factory
            ↓
    Resource Fabric
            ↓
    Execution

The PaaS capability is broader than the IDE.

The IDE provides one development-workspace implementation within the PaaS architecture.

## Micro-Frontend Relationship

Eclipse Che may be integrated behind role-oriented micro-frontends where appropriate.

Possible views include:

- Developer.
- Data Scientist.
- QAI Engineer.
- Systems Engineer.
- Workflow Designer.
- Domain Expert.

A representative model is:

    Web Shell
        ↓
    Role-Oriented View
        ↓
    Workspace Service
        ↓
    Eclipse Che
        ↓
    Engineering Activity

The micro-frontend is a presentation concern.

Authorization remains a server-side responsibility.

## Resource Fabric Relationship

The workspace may require computational resources that are resolved through the Resource Fabric.

Potential resources include:

- CPU.
- GPU.
- HPC.
- TPU.
- Virtual compute.
- Storage.
- Network.
- Edge resources.

A representative path is:

    Workspace Request
            ↓
    Workspace Profile
            ↓
    Resource Fabric
            ↓
    Workspace Resources
            ↓
    Eclipse Che
            ↓
    Development

The workspace should not hard-code a specific infrastructure provider unless required by the deployment profile.

## Deployment Profiles

The Eclipse Che reference implementation may support different deployment profiles.

Potential profiles include:

- Development.
- Demonstration.
- Pilot.
- Private cloud.
- Public cloud.
- Virtual development environment.
- Dedicated engineering environment.

A deployment profile may define:

- Workspace resources.
- Network requirements.
- Authentication.
- Repository access.
- Runtime dependencies.
- Workspace lifecycle.
- Storage requirements.
- Integration endpoints.

## Configuration

Configuration should remain separate from implementation logic.

Potential configuration includes:

- Workspace identity.
- Workspace profile.
- User or tenant context.
- Source repository.
- Runtime environment.
- Tooling.
- Extensions.
- Resource requirements.
- Network configuration.
- Authentication references.
- Deployment environment.

Credentials and secrets should not be stored directly in committed configuration.

## Workspace Lifecycle

A workspace may follow a lifecycle such as:

    Requested
        ↓
    Provisioned
        ↓
    Configured
        ↓
    Ready
        ↓
    Active
        ↓
    Suspended
        ↓
    Resumed
        ↓
    Terminated

The exact lifecycle depends on the deployment environment.

Workspace lifecycle should remain separate from the lifecycle of the logical workflow or implementation.

## Development-to-Execution Path

The reference implementation may support the following development path:

    Requirement
        ↓
    Workspace
        ↓
    Source / Notebook / Workflow
        ↓
    Development
        ↓
    Validation
        ↓
    Factory Resolution
        ↓
    Runtime Binding
        ↓
    Execution
        ↓
    Results
        ↓
    Evidence

This supports the transition from engineering development to controlled execution.

## Execution Separation

The IDE should not automatically become the production execution environment.

A development workflow may be:

    Eclipse Che
        ↓
    Develop
        ↓
    Validate
        ↓
    Package
        ↓
    General Factory
        ↓
    Selected Execution Backend

The execution backend may be:

- Local.
- GitLab Runner.
- Cloud.
- VPS.
- Emulator.
- Simulator.
- Other authorized runtime.

## Evidence and Provenance

Engineering activities may generate evidence including:

- Workspace profile.
- Repository identity.
- Source revision.
- Configuration.
- Tooling version.
- Dependency information.
- Execution reference.
- Test results.
- Validation results.
- Generated artifacts.

Evidence should identify the development environment where that information is relevant to reproducibility.

## Validation

The reference implementation should be validated at multiple levels.

### Workspace Validation

Confirm that the workspace can be provisioned and accessed.

### Configuration Validation

Confirm that the selected workspace configuration is valid.

### Repository Validation

Confirm that required repositories can be accessed.

### Tooling Validation

Confirm that required development tools are available.

### Resource Validation

Confirm that required workspace resources are available.

### Development Validation

Confirm that representative development activities can be completed.

### Integration Validation

Confirm that the workspace can interact with General Factory services.

### Execution Validation

Confirm that developed assets can be passed to an appropriate execution backend.

### Evidence Validation

Confirm that relevant workspace, source and execution provenance can be captured.

## Initial Demonstration

The first demonstration should establish:

    User
        ↓
    Eclipse Che Workspace
        ↓
    Source Repository
        ↓
    Simple Development Asset
        ↓
    Validation
        ↓
    General Factory
        ↓
    Execution Backend
        ↓
    Results
        ↓
    Evidence

A small Python application, notebook or workflow definition can establish the initial integration before more complex QAI workloads are introduced.

## Common Structure

- `configuration/` — workspace, environment and IDE configuration definitions.
- `samples/` — sample Eclipse Che workspace and development assets.
- `workflows/` — workflow development and execution examples.
- `deployment/` — workspace deployment examples and profiles.
- `execution/` — execution configuration and runtime examples.
- `results/` — sample development or execution results.
- `evidence/` — validation, provenance and evidence artifacts.

Additional directories should be introduced only when required by an actual implementation.

## Relationship to Other IDE Implementations

Eclipse Che is one implementation of the broader IDE and development-workspace capability.

The logical abstraction may be represented as:

    IDE / Development Workspace
            ↓
    Factory Registry
            ├── Eclipse Che
            ├── Eclipse Theia
            └── VS Code
            ↓
    Workspace
            ↓
    Engineering Activity

Each implementation should preserve its own technology identity while satisfying the relevant logical capability contract.

## Relationship to Eclipse Theia

Eclipse Che and Eclipse Theia may share ecosystem relationships, but they represent different implementation concerns within this reference-implementation structure.

Eclipse Che is treated here primarily as a cloud development-workspace implementation.

Eclipse Theia is represented separately as an IDE/framework implementation.

The General Factory should resolve the required capability rather than assume that one technology replaces the other.

## Relationship to VS Code

VS Code may provide another development environment implementation.

The logical relationship is:

    Development Workspace Capability
            ↓
    IDE Implementation
            ├── Eclipse Che
            ├── Eclipse Theia
            └── VS Code

The selected implementation may depend on deployment, workspace, integration and user requirements.

## Security Considerations

Cloud development workspaces may provide access to source code, credentials, resources and execution systems.

Relevant considerations include:

- User authentication.
- Authorization.
- Tenant isolation.
- Workspace isolation.
- Repository access.
- Secret management.
- Network controls.
- Resource limits.
- Dependency controls.
- Workspace lifecycle.
- Auditability.

The IDE presentation layer should not be treated as the security boundary.

Authorization should be enforced by the applicable platform services.

## Scope

### In Scope

- Cloud development workspaces.
- IDE-based engineering.
- Source repository integration.
- Development environments.
- Notebook development.
- Workflow development.
- AI/ML development.
- Quantum development.
- Virtual asset development.
- Simulation development.
- Emulation development.
- Resource Fabric integration.
- General Factory integration.
- PaaS workspace integration.
- Workspace configuration.
- Workspace deployment profiles.
- Development validation.
- Execution handoff.
- Results.
- Evidence.
- Provenance.

### Out of Scope

The initial reference implementation does not attempt to provide:

- A replacement for Eclipse Che.
- A complete cloud IDE platform.
- A complete PaaS implementation.
- A replacement for the General Framework.
- A replacement for the General Factory.
- A complete workflow engine.
- A complete visual workflow platform.
- A complete source-control platform.
- A complete AI/ML platform.
- A complete quantum development platform.
- A complete production execution environment.

These capabilities remain represented by other platform and reference-implementation areas.

## Common Reference Implementation Principles

1. Keep the Framework technology-neutral.
2. Do not duplicate existing repositories unnecessarily.
3. Preserve implementation identity.
4. Preserve provenance.
5. Use connectors for access and invocation.
6. Use adapters where contract translation is required.
7. Resolve resources through the Resource Fabric.
8. Capture meaningful results and evidence.
9. Keep simulation, emulation and physical execution distinct.
10. Promote validated samples incrementally.
11. Keep IDE concerns separate from workflow semantics.
12. Keep workspace concerns separate from production execution.
13. Preserve source and workspace provenance.
14. Keep credentials and secrets outside committed configuration.
15. Prefer portable development assets where practical.
16. Treat Eclipse Che as one implementation of a broader development-workspace capability.

## Promotion Path

An Eclipse Che reference implementation may progress through:

    Structure
        ↓
    Workspace Configuration
        ↓
    Basic Workspace
        ↓
    Repository Integration
        ↓
    Development Demonstration
        ↓
    General Factory Integration
        ↓
    Validated Engineering Workspace
        ↓
    Reusable IDE / PaaS Capability

Promotion should be based on demonstrated workspace operation, integration, validation, provenance and reuse potential rather than the existence of configuration files alone.

## Future Extensions

Potential extensions include:

- Workspace templates.
- Role-specific workspaces.
- Project-specific workspace profiles.
- GitHub integration.
- GitLab integration.
- Notebook environments.
- Visual workflow designer integration.
- Eclipse GLSP integration.
- React Flow integration.
- AI/ML development environments.
- Quantum development environments.
- Virtual device development.
- Digital twin development.
- Simulation environments.
- Emulation environments.
- GPU-enabled workspaces.
- HPC-enabled development.
- QPU-connected development where available.
- Integrated experiment tracking.
- Integrated evidence capture.
- Workspace-to-runner execution.
- Workspace-to-cloud deployment.
- Multi-tenant PaaS integration.

These capabilities should be introduced incrementally as validated reference implementations.

## Status

Reference structure established.

The directory provides the structural and architectural reference for Eclipse Che-based cloud development workspaces and IDE-based PaaS engineering.

Actual workspace configurations, deployment assets, connectors, adapters, integrations and other implementation assets should be added only when available and validated.

---

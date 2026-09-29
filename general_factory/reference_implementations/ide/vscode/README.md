# Visual Studio Code

Reference implementation for the General Factory.

## Reference ID

REF-IDE-VSCODE-001

## Purpose

Reference implementation for code-centric development workspace integration.

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

# Visual Studio Code

Reference implementation for the General Factory.

## Reference ID

REF-IDE-VSCODE-001

## Purpose

Reference implementation for code-centric development workspace integration.

This reference implementation demonstrates how Visual Studio Code can provide a flexible code-centric engineering environment for General Factory development activities.

The implementation may support:

- Source-code development.
- Repository-based development.
- Script development.
- Notebook development.
- Workflow development.
- Configuration development.
- AI/ML development.
- Quantum development.
- Virtual asset development.
- Simulation and emulation development.
- Testing and validation.
- Runtime preparation.
- Deployment preparation.
- Engineering documentation.

Visual Studio Code is treated as an IDE and development-workspace implementation. It is not the semantic authority for the General Framework, General Factory or logical workflow model.

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
    Visual Studio Code
            ↓
    Engineering Activity
            ↓
    General Factory Services
            ↓
    Execution
            ↓
    Results
            ↓
    Evidence

Visual Studio Code provides the development environment while the surrounding General Factory provides capability resolution, runtime integration and resource management.

## Code-Centric Development Model

Visual Studio Code may provide a lightweight and extensible environment for developing General Factory implementation assets.

A simplified model is:

    User
      ↓
    Visual Studio Code
      ↓
    Source / Notebook / Workflow / Configuration
      ↓
    Development
      ↓
    Validation
      ↓
    General Factory
      ↓
    Execution
      ↓
    Results + Evidence

The IDE provides the development interaction layer.

The logical models, factory semantics and runtime contracts remain outside the IDE.

## Development Workspace

The Visual Studio Code implementation may operate as a local or remotely connected development workspace.

Potential workspace capabilities include:

- Source editing.
- Project navigation.
- Integrated terminal.
- Debugging.
- Extension-based tooling.
- Source control.
- Notebook development.
- Configuration editing.
- Workflow development.
- Testing.
- Runtime preparation.
- Deployment preparation.

The workspace configuration should remain independent of the logical General Factory capability.

## General Factory Integration

Visual Studio Code may be resolved through the General Factory as an implementation of an IDE or development-workspace capability.

For example:

    IDE Capability
          ↓
    Factory Registry
          ↓
    Visual Studio Code Binding
          ↓
    Workspace Profile
          ↓
    Visual Studio Code Workspace
          ↓
    Engineering Activity

This permits the logical IDE capability to remain independent of the selected IDE technology.

## IDE Portability

The General Factory may support several IDE and development-workspace implementations.

For example:

    IDE / Development Workspace
            ↓
    Factory Registry
            ├── Eclipse Che
            ├── Eclipse Theia
            └── Visual Studio Code
            ↓
    Workspace
            ↓
    Engineering Activity

Visual Studio Code therefore represents one implementation option rather than the definition of the broader IDE capability.

## Extension Model

Visual Studio Code extensions may be used to provide additional engineering capabilities.

Potential extension areas include:

- Programming languages.
- Source control.
- Debugging.
- Testing.
- Notebook development.
- Container development.
- Cloud development.
- Workflow development.
- AI/ML development.
- Quantum development.
- Systems engineering.
- Documentation.
- Visualization.

Extensions should support defined engineering contracts and should not introduce hidden dependencies into the General Framework.

## Source Repository Integration

Visual Studio Code may interact with source repositories used by General Factory development.

Potential repositories include:

- GitHub.
- GitLab.
- Local Git repositories.
- Other authorized source systems.

A representative path is:

    Visual Studio Code
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

The development environment may support Git-based engineering activities such as:

- Repository access.
- Branch management.
- Change tracking.
- Commit creation.
- Revision inspection.
- Source comparison.
- Remote synchronization.

Git remains a source-management capability.

It does not become the semantic authority for General Factory workflows or framework definitions.

## Workflow Development

Visual Studio Code may provide a code-centric environment for developing logical workflow definitions.

A representative path is:

    Workflow Requirement
            ↓
    Visual Studio Code
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

Workflow definitions should remain portable where practical and should not depend unnecessarily on Visual Studio Code-specific implementation details.

## Visual Workflow Designer Relationship

Visual Studio Code may host or integrate with visual workflow design tools where required.

For example:

    Visual Studio Code
          ↓
    Visual Workflow Tool
          ↓
    Logical Workflow Model
          ↓
    Validation
          ↓
    General Factory
          ↓
    Runtime Binding
          ↓
    Execution

Potential technologies may include:

- Eclipse GLSP.
- React Flow.
- BPMN-oriented tooling.
- Other compatible visual workflow technologies.

The visual editor provides composition and interaction.

The logical workflow model remains the semantic representation.

## Notebook Development

Visual Studio Code may provide an environment for notebook-oriented engineering activities.

Potential uses include:

- Experiment notebooks.
- AI/ML experiments.
- Quantum experiments.
- Simulation.
- Emulation.
- Data analysis.
- Validation.
- Demonstration development.

A representative path is:

    Notebook
        ↓
    Visual Studio Code
        ↓
    Development / Experiment
        ↓
    Runtime
        ↓
    Results
        ↓
    Evidence

Notebook execution may use a separately resolved runtime.

## AI/ML Development

Visual Studio Code may be used for development of AI/ML implementations.

Potential activities include:

- Model development.
- Local inference development.
- Experiment development.
- Evaluation.
- Data-processing development.
- AI workflow development.
- MLflow-related development.
- AI emulation development.

A possible architecture is:

    Visual Studio Code
          ↓
    AI/ML Development
          ↓
    General Factory
          ↓
    AI/ML Reference Implementation
          ↓
    Resource / Runtime
          ↓
    Results + Evidence

The IDE is not itself a complete AI/ML platform.

## Quantum Development

The development workspace may also support quantum engineering activities.

Potential activities include:

- Quantum circuit development.
- Quantum algorithm development.
- Quantum simulation.
- Quantum emulation.
- Hybrid quantum-classical workflows.
- Quantum experiment development.

A representative path is:

    Visual Studio Code
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

The IDE does not itself constitute a quantum backend.

## Virtual Asset Development

Visual Studio Code may be used to develop and validate virtual assets.

For example:

    Virtual Asset Definition
            ↓
    Visual Studio Code Workspace
            ↓
    Implementation
            ↓
    Validation
            ↓
    Factory Registry
            ↓
    Runtime Binding

Virtual assets may include virtual devices, computational resources, data assets and other executable representations.

## Simulation and Emulation Development

The development environment may support implementation of simulation and emulation components.

For example:

    Visual Studio Code
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

Visual Studio Code may participate as an IDE implementation within the General Factory PaaS engineering workspace.

A possible relationship is:

    PaaS Workspace
            ↓
    Visual Studio Code
            ↓
    Code / Notebook / Workflow
            ↓
    General Factory
            ↓
    Resource Fabric
            ↓
    Execution

The PaaS capability is broader than the IDE.

Visual Studio Code provides one code-centric development environment within that architecture.

## Micro-Frontend Relationship

Visual Studio Code may be integrated into role-oriented micro-frontend experiences where appropriate.

Potential roles include:

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
    Visual Studio Code
        ↓
    Engineering Activity

The presentation layer should not be treated as the security boundary.

Authorization remains a server-side responsibility.

## Resource Fabric Relationship

The development workspace may require resources resolved through the Resource Fabric.

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
    Visual Studio Code
            ↓
    Development

The workspace should remain portable across resource environments where practical.

## Local Development

Visual Studio Code may provide a local engineering environment.

A representative path is:

    User
        ↓
    Local Visual Studio Code
        ↓
    Local Repository
        ↓
    Local Runtime
        ↓
    Development / Validation
        ↓
    General Factory
        ↓
    Selected Execution Backend

Local development is an implementation/deployment option and does not redefine the General Factory architecture.

## Remote Development

Where supported by the selected deployment environment, Visual Studio Code may participate in remote development.

The logical relationship is:

    Local Client
        ↓
    Remote Development Environment
        ↓
    Visual Studio Code
        ↓
    Source / Runtime
        ↓
    General Factory

The actual remote-development mechanism should be represented by the applicable deployment profile.

## Deployment Profiles

The Visual Studio Code reference implementation may support different deployment profiles.

Potential profiles include:

- Local development.
- Remote development.
- Virtual development.
- Demonstration.
- Pilot.
- Private cloud.
- Public cloud.
- Dedicated engineering environment.

A profile may define:

- Workspace resources.
- Network requirements.
- Authentication.
- Repository access.
- Runtime dependencies.
- Extension configuration.
- Workspace lifecycle.
- Storage requirements.
- Integration endpoints.

## Configuration

Configuration should remain separate from IDE implementation logic.

Potential configuration includes:

- Workspace identity.
- Workspace profile.
- User or tenant context.
- Repository configuration.
- Runtime environment.
- Extensions.
- Tooling.
- Resource requirements.
- Network configuration.
- Authentication references.
- Deployment environment.

Credentials and secrets should not be stored directly in committed configuration.

## Workspace Lifecycle

A development workspace may follow a lifecycle such as:

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

The actual lifecycle depends on the selected deployment environment.

Workspace lifecycle should remain separate from workflow and implementation lifecycle.

## Development-to-Execution Path

The reference implementation may support:

    Requirement
        ↓
    Visual Studio Code Workspace
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

This supports progression from code-centric engineering to controlled execution.

## Execution Separation

The IDE should not automatically become the production execution environment.

A development asset may follow:

    Visual Studio Code
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

Potential execution backends include:

- Local runtime.
- GitLab Runner.
- GitHub-based execution.
- Cloud runtime.
- VPS runtime.
- Emulator.
- Simulator.
- Other authorized runtime.

## Evidence and Provenance

Engineering activities may generate evidence including:

- Workspace profile.
- Repository identity.
- Source revision.
- IDE configuration.
- Extension information.
- Dependency information.
- Test results.
- Validation results.
- Execution reference.
- Generated artifacts.

Evidence should identify the development environment where that information contributes to reproducibility.

## Validation

The reference implementation should be validated at multiple levels.

### Workspace Validation

Confirm that the development workspace can be established and accessed.

### Configuration Validation

Confirm that the selected workspace configuration is valid.

### Repository Validation

Confirm that required repositories can be accessed.

### Tooling Validation

Confirm that required development tools and extensions are available.

### Resource Validation

Confirm that required workspace resources are available.

### Development Validation

Confirm that representative code-centric engineering activities can be completed.

### Integration Validation

Confirm that the IDE can interact with General Factory services.

### Execution Validation

Confirm that developed assets can be passed to an appropriate execution backend.

### Evidence Validation

Confirm that relevant workspace, source and execution provenance can be captured.

## Initial Demonstration

The first demonstration should establish:

    User
        ↓
    Visual Studio Code Workspace
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

A small application, notebook or workflow definition can establish the initial integration before more complex QAI workloads are introduced.

## Common Structure

- `configuration/` — IDE, workspace and environment configuration definitions.
- `samples/` — sample Visual Studio Code workspace and development assets.
- `workflows/` — workflow development and execution examples.
- `deployment/` — workspace deployment examples and profiles.
- `execution/` — execution configuration and runtime examples.
- `results/` — sample development or execution results.
- `evidence/` — validation, provenance and evidence artifacts.

Additional directories should be introduced only when required by an actual implementation.

## Relationship to Other IDE Implementations

Visual Studio Code is one implementation of the broader IDE and development-workspace capability.

The logical abstraction may be represented as:

    IDE / Development Workspace
            ↓
    Factory Registry
            ├── Eclipse Che
            ├── Eclipse Theia
            └── Visual Studio Code
            ↓
    Workspace
            ↓
    Engineering Activity

Each implementation should preserve its own technology identity while satisfying the relevant logical capability contract.

## Relationship to Eclipse Che

Eclipse Che, Eclipse Theia and Visual Studio Code are represented as separate implementation choices within the IDE reference-implementation family.

Eclipse Che is treated primarily as a cloud development-workspace implementation.

Eclipse Theia is treated primarily as an extensible browser-based IDE and development-workspace implementation.

Visual Studio Code is treated primarily as a code-centric development workspace that may operate locally or as part of a remote development environment.

The General Factory should resolve the required logical capability rather than assume that one implementation replaces another.

## Relationship to Workflow Designer

Visual Studio Code may serve as the development environment for workflow definitions while a separate visual workflow designer provides graphical composition.

For example:

    Visual Studio Code
          ↓
    Workflow Definition
          +
    Visual Workflow Designer
          ↓
    Logical Workflow Model
          ↓
    General Factory
          ↓
    Execution

The IDE and visual designer remain development and presentation capabilities.

The General Factory remains responsible for capability resolution and runtime binding.

## Relationship to GitHub and GitLab

Visual Studio Code may provide development access to GitHub and GitLab repositories.

For example:

    Visual Studio Code
          ↓
    Git Integration
          ↓
    Repository
          ├── GitHub
          └── GitLab
          ↓
    Source Revision
          ↓
    Development
          ↓
    Execution

Repository hosting and IDE capabilities remain separate architectural concerns.

## Relationship to GitLab Runner

A Visual Studio Code workspace may develop an implementation that is subsequently executed through GitLab Runner.

For example:

    Visual Studio Code
        ↓
    Develop
        ↓
    Validate
        ↓
    Commit / Package
        ↓
    GitLab
        ↓
    GitLab Runner
        ↓
    Execution
        ↓
    Results + Evidence

This provides a development-to-controlled-execution path while keeping the IDE separate from the execution backend.

## Relationship to Cloud Development

Visual Studio Code may be used with remote or cloud-hosted development environments.

A representative model is:

    Visual Studio Code
            ↓
    Remote Development Environment
            ↓
    Cloud / VPS / Private Infrastructure
            ↓
    General Factory Services
            ↓
    Resource Fabric
            ↓
    Execution

The infrastructure provider remains separate from the IDE implementation.

## Security Considerations

Development environments may provide access to source code, credentials, resources and execution systems.

Relevant considerations include:

- User authentication.
- Authorization.
- Workspace isolation.
- Repository access.
- Secret management.
- Network controls.
- Resource limits.
- Dependency controls.
- Extension trust.
- Local machine security.
- Remote workspace security.
- Auditability.

The IDE presentation layer should not be treated as the security boundary.

Authorization should be enforced by applicable platform services.

## Scope

### In Scope

- Code-centric IDE integration.
- Development workspaces.
- Local development.
- Remote development.
- Source repository integration.
- Script development.
- Notebook development.
- Workflow development.
- Visual workflow integration.
- AI/ML development.
- Quantum development.
- Virtual asset development.
- Simulation development.
- Emulation development.
- Resource Fabric integration.
- General Factory integration.
- PaaS workspace integration.
- IDE configuration.
- Workspace deployment profiles.
- Development validation.
- Execution handoff.
- Results.
- Evidence.
- Provenance.

### Out of Scope

The initial reference implementation does not attempt to provide:

- A replacement for Visual Studio Code.
- A complete IDE platform.
- A complete remote-development platform.
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
16. Treat Visual Studio Code as one implementation of a broader development-workspace capability.

## Promotion Path

A Visual Studio Code reference implementation may progress through:

    Structure
        ↓
    Workspace Configuration
        ↓
    Basic Development Workspace
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

- Workspace profiles.
- Role-specific development environments.
- Project-specific configurations.
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
- GPU-enabled development.
- HPC-enabled development.
- QPU-connected development where available.
- Integrated experiment tracking.
- Integrated evidence capture.
- Workspace-to-runner execution.
- Workspace-to-cloud deployment.
- PaaS workspace integration.
- Custom General Factory extensions.

These capabilities should be introduced incrementally as validated reference implementations.

## Status

Reference structure established.

The directory provides the structural and architectural reference for Visual Studio Code-based code-centric development workspace integration.

Actual workspace configurations, extensions, deployment assets, connectors, adapters, integrations and other implementation assets should be added only when available and validated.

---

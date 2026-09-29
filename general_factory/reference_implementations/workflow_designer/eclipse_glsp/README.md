# Eclipse GLSP

Reference implementation for the General Factory.

## Reference ID

REF-WORKFLOW-DESIGN-GLSP-001

## Purpose

Reference implementation for graphical workflow and model-based visual editing.

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
# Eclipse GLSP

Reference implementation for the General Factory.

## Reference ID

REF-WORKFLOW-DESIGN-GLSP-001

## Purpose

Reference implementation for graphical workflow and model-based visual editing.

This reference implementation demonstrates how Eclipse GLSP can provide a client-server foundation for graphical workflow and model-based editors within the General Factory.

The implementation may support:

- Graphical workflow editing.
- Model-based visual editing.
- Node and edge representation.
- Drag-and-drop interaction.
- Diagram navigation.
- Workflow composition.
- Model validation feedback.
- Property editing.
- Workflow-state visualization.
- Model synchronization.
- Integration with logical workflow models.
- Integration with BPMN or other modelling representations where validated.

Eclipse GLSP is treated as a concrete diagram-editor technology rather than as the semantic authority for the General Framework.

## Architectural Role

This reference implementation demonstrates how a technology, sample, external system, development environment, resource, workflow or execution capability can participate in the General Factory.

The reference implementation does not redefine the General Framework. It provides an implementation reference that can be resolved through Factory capabilities, registries, connectors, adapters and runtime services.

A representative relationship is:

    General Framework
            ↓
    Logical Workflow / Model
            ↓
    Eclipse GLSP
            ↓
    Graphical Representation
            ↓
    Validation / Model Mapping
            ↓
    Workflow Engine
            ↓
    Factory Registry
            ↓
    Implementation Binding
            ↓
    Resource Fabric
            ↓
    Execution
            ↓
    Results
            ↓
    Evidence

Eclipse GLSP primarily occupies the graphical editing and model-visualization boundary.

## Eclipse GLSP Role

Eclipse GLSP may provide the graphical client-server foundation for a workflow or model editor.

A representative separation is:

    Client
      ↓
    Graphical Editor
      ↓
    GLSP Protocol / Services
      ↓
    Model / Diagram Server
      ↓
    Logical Model
      ↓
    Workflow / Factory Services

The exact implementation depends on the selected GLSP architecture and integration approach.

## Semantic Authority

Eclipse GLSP is not the semantic authority for the General Framework.

The logical model remains authoritative.

For workflow use:

    Logical Workflow
          ↕
    GLSP Diagram
          ↓
    User Interaction
          ↓
    Model Update
          ↓
    Validation
          ↓
    Workflow Engine

The graphical representation should remain synchronized with the logical model.

## Graphical Representation

The editor may represent:

- Workflow nodes.
- Workflow edges.
- Activities.
- Events.
- Gateways.
- Resource requirements.
- Execution states.
- Logical capabilities.
- Virtual assets.
- Simulation stages.
- AI/ML stages.
- Quantum stages.

The visual representation should not create unsupported semantic constructs.

## Client-Server Model

A representative GLSP-oriented architecture is:

    Browser / Web Client
            ↓
    Graphical Editor
            ↓
    GLSP Client
            ↓
    GLSP Server
            ↓
    Model / Workflow Services
            ↓
    General Factory

This separation can allow graphical interaction to remain independent of the concrete workflow execution runtime.

## Model-Based Editing

The reference implementation should support model-based editing where applicable.

A representative flow is:

    User Action
         ↓
    Diagram Command
         ↓
    Model Update
         ↓
    Validation
         ↓
    Diagram Refresh
         ↓
    Logical Workflow

The graphical diagram should remain a representation of the underlying model.

## Workflow Editing

A workflow editor may provide:

- Node creation.
- Node deletion.
- Edge creation.
- Edge deletion.
- Node movement.
- Property editing.
- Connection editing.
- Grouping.
- Sub-process representation.
- Validation feedback.
- Save and version operations.

Only capabilities supported by the selected implementation should be enabled.

## Node Representation

A logical workflow capability may be represented as a graphical node.

For example:

    [Logical Capability]

The node may contain:

- Capability identity.
- Display name.
- Configuration summary.
- Resource requirement.
- Execution state.
- Validation state.

The graphical node should not replace the underlying capability definition.

## Edge Representation

Edges may represent relationships such as:

- Sequence.
- Dependency.
- Data flow.
- Control flow.
- Event relationship.

The specific meaning should be explicitly defined by the logical workflow model.

## Drag-and-Drop

A graphical editor may support drag-and-drop composition.

For example:

    Palette
      ↓
    Drag Node
      ↓
    Canvas
      ↓
    Configure
      ↓
    Connect
      ↓
    Validate

The palette should contain only capabilities or templates that are available to the current context.

## Palette Integration

The editor may expose reusable elements such as:

- Workflow patterns.
- Logical capabilities.
- AI/ML stages.
- Quantum stages.
- Simulation stages.
- Virtual assets.
- Resource requirements.
- Approval stages.

Palette entries should resolve to valid logical model elements.

## Workflow Pattern Integration

Eclipse GLSP may represent patterns from the Workflow Patterns reference implementation.

For example:

    Pattern Library
          ↓
    GLSP Palette
          ↓
    Graphical Composition
          ↓
    Logical Workflow
          ↓
    Workflow Engine

The pattern semantics remain outside the diagram renderer.

## BPMN Integration

GLSP may be used as a graphical technology for a BPMN-oriented editor.

For example:

    BPMN Model
        ↓
    GLSP Server
        ↓
    GLSP Client
        ↓
    BPMN Diagram

The BPMN model and mapping rules remain separate from the generic GLSP capability.

## React Flow Relationship

React Flow is another possible implementation technology for node-based visual workflow editing.

A possible architecture is:

    Visual Workflow Capability
       ├── Eclipse GLSP
       ├── React Flow
       └── BPMN-oriented Editor

The technologies should be treated as alternative or complementary implementations rather than as competing semantic authorities.

## Visual Workflow Relationship

Eclipse GLSP is one implementation option under the broader Visual Workflow capability.

    Visual Workflow
          ↓
    ┌─────┼──────────┐
    ↓     ↓          ↓
   GLSP  React Flow  BPMN
    ↓     ↓          ↓
       Logical Workflow

The common semantic boundary remains the logical workflow model.

## Workflow Engine Integration

The GLSP editor should hand executable workflow definitions to the Workflow Engine.

For example:

    GLSP Editor
         ↓
    Logical Workflow
         ↓
    Validation
         ↓
    Workflow Engine
         ↓
    Factory Resolution
         ↓
    Runtime
         ↓
    Results

The GLSP implementation should not become the workflow runtime.

## Runtime State Visualization

The editor may display execution state.

For example:

    Workflow Engine
          ↓
    Execution State
          ↓
    GLSP Model
          ↓
    Graphical State
          ↓
    User

Potential states include:

- Pending.
- Ready.
- Running.
- Completed.
- Failed.
- Skipped.
- Cancelled.
- Blocked.

Runtime state should come from authoritative execution services.

## Validation Feedback

The editor may display validation feedback.

For example:

    Model
      ↓
    Validation
      ↓
    Errors / Warnings
      ↓
    GLSP Diagram
      ↓
    User

Validation may include:

- Structural validation.
- Semantic validation.
- Dependency validation.
- Resource validation.
- Implementation validation.
- Policy validation.

## Property Views

A GLSP-based editor may provide property editing for selected elements.

For example:

    Select Node
        ↓
    Property View
        ↓
    Modify Configuration
        ↓
    Model Update
        ↓
    Validation

Properties should be validated against the logical model.

## Model Synchronization

The graphical representation and logical model should remain synchronized.

For example:

    Logical Model
          ↕
    GLSP Server
          ↕
    Diagram Model
          ↕
    Client View

Changes from either supported direction should pass through controlled model-update mechanisms.

## Serialization

The implementation may support serialization of:

- Diagram layout.
- Logical workflow.
- Node properties.
- Edge relationships.
- Model version.
- View configuration.

Diagram layout and workflow semantics should be distinguishable.

For example:

    Workflow Semantics
          +
    Diagram Layout

The layout should not become the sole source of workflow semantics.

## Layout

The editor may support:

- Automatic layout.
- Manual positioning.
- Alignment.
- Grouping.
- Zoom.
- Pan.
- Fit-to-screen.

Layout information should remain presentation metadata where appropriate.

## Version Control

GLSP-based workflow definitions may be stored in Git repositories.

For example:

    GLSP Model
       ↓
    Git Repository
       ↓
    Revision
       ↓
    Workflow Validation
       ↓
    Execution

Workflow identity and source revision should be retained as provenance.

## GitHub Integration

The workflow model may be stored in GitHub where appropriate.

For example:

    GLSP Workflow
          ↓
    GitHub Repository
          ↓
    Revision
          ↓
    Factory
          ↓
    Execution

GitHub remains a source-control integration rather than the workflow semantic authority.

## GitLab Integration

The workflow model may also be stored in GitLab.

For example:

    GLSP Workflow
          ↓
    GitLab Repository
          ↓
    Revision
          ↓
    GitLab Runner
          ↓
    Execution

The workflow source and runner identity should remain traceable.

## Connector Integration

Connectors may provide access to:

- GitHub.
- GitLab.
- Local repositories.
- Cloud environments.
- Workflow services.
- Execution runtimes.

For example:

    GLSP
      ↓
    Factory Connector
      ↓
    External Service
      ↓
    Result

## Adapter Integration

Adapters may translate between:

- GLSP model representations.
- BPMN representations.
- Logical workflow contracts.
- External workflow models.
- Runtime-specific execution contracts.

For example:

    GLSP Model
         ↓
    Adapter
         ↓
    Logical Workflow
         ↓
    Workflow Engine

## Factory Registry Integration

The GLSP implementation may be registered as a graphical workflow-design capability.

For example:

    Workflow Design Capability
            ↓
    Factory Registry
            ↓
    Eclipse GLSP
            ↓
    Graphical Editor
            ↓
    Logical Workflow

The registry should preserve implementation identity and version.

## Resource Fabric Integration

The GLSP editor may display or configure logical resource requirements.

For example:

    Workflow Node
          ↓
    Resource Requirement
          ↓
    Resource Fabric
          ↓
    Resource Selection
          ↓
    Execution

The GLSP editor should not become the authoritative resource manager.

## Resource Visualization

The graphical editor may display resource information such as:

- Required compute class.
- Selected resource.
- Resource availability.
- Execution environment.
- Backend type.
- Execution mode.

This is presentation information.

Authoritative resource resolution remains with the Resource Fabric.

## AI / ML Workflow Editing

GLSP may represent AI/ML workflow stages.

For example:

    [Data]
       ↓
    [Preprocess]
       ↓
    [Model]
       ↓
    [Inference]
       ↓
    [Evaluation]
       ↓
    [Result]

The model and runtime remain separate implementations.

## Local Inference

A workflow node may represent local inference.

    [Input]
       ↓
    [Local Inference]
       ↓
    [Prediction]

The local inference implementation is resolved through the Factory.

## Quantum Workflow Editing

GLSP may represent quantum workflow stages.

For example:

    [Problem]
       ↓
    [Circuit]
       ↓
    [Quantum Backend]
       ↓
    [Measurement]
       ↓
    [Analysis]

The backend may represent:

- Quantum simulation.
- Quantum emulation.
- Physical QPU execution where available.

The graphical editor must not imply physical QPU availability.

## Hybrid AI / Quantum Editing

A hybrid workflow may be represented as:

    [Classical]
        ↓
    [AI / ML]
        ↓
    [Quantum]
        ↓
    [Classical]
        ↓
    [Result]

The implementation technologies remain behind the logical workflow and Factory boundaries.

## Simulation Workflow Editing

GLSP may represent simulation workflows.

    [System Model]
          ↓
    [Scenario]
          ↓
    [Simulation]
          ↓
    [Analysis]
          ↓
    [Evidence]

The simulation runtime remains a separate implementation.

## Digital Twin Editing

A GLSP editor may represent digital-twin workflow relationships.

    [Observed State]
          ↓
    [Twin]
          ↓
    [Scenario]
          ↓
    [Simulation]
          ↓
    [Decision]

The Digital Twin remains the system representation.

## Virtual-First Editing

GLSP may represent a virtual-first development workflow.

    [Concept]
       ↓
    [Logical Model]
       ↓
    [Virtual Asset]
       ↓
    [Simulation / Emulation]
       ↓
    [Validation]
       ↓
    [Evidence]

The visual editor provides representation; the underlying lifecycle remains separately defined.

## Notebook Integration

GLSP workflow nodes may reference notebook-based implementations.

For example:

    [Workflow Node]
          ↓
    [Notebook Reference]
          ↓
    [Runner]
          ↓
    [Execution]
          ↓
    [Results]

Notebook identity and source revision should remain traceable.

## PaaS Integration

Eclipse GLSP may serve as the graphical editor inside the General Factory PaaS.

For example:

    PaaS Workspace
          ↓
    GLSP Workflow Designer
          ↓
    Logical Workflow
          ↓
    Workflow Engine
          ↓
    Factory
          ↓
    Resource Fabric
          ↓
    Execution

This supports a visual engineering workspace without making the editor itself the platform semantic authority.

## SaaS Integration

A SaaS workflow product may expose a GLSP-based workflow editor.

For example:

    SaaS Client
          ↓
    Web Shell
          ↓
    GLSP Workflow Editor
          ↓
    Workflow API
          ↓
    Workflow Engine
          ↓
    Results

Server-side services remain responsible for authorization and execution.

## Micro-Frontend Integration

GLSP may be embedded as a Workflow View micro-frontend.

For example:

    Web Shell
       ↓
    Workflow View
       ↓
    GLSP Editor
       ↓
    Workflow API
       ↓
    Workflow Engine

Related micro-frontends may include:

- Client Views.
- Resource Views.
- Workflow Views.
- Results Views.
- Evidence Views.

## IDE Integration

GLSP-based editors may be integrated with:

- Eclipse Che.
- Eclipse Theia.
- VS Code-based environments.
- Browser-based PaaS workspaces.

For example:

    IDE / Workspace
          ↓
    GLSP Editor
          ↓
    Workflow Definition
          ↓
    Code / Notebook
          ↓
    Execution

The IDE remains the development environment.

## Model Review

The editor may support workflow review through:

- Model comparison.
- Version comparison.
- Comments.
- Validation status.
- Approval state.
- Change history.

These are supporting capabilities and should not replace repository-based provenance.

## Collaboration

Where supported, collaborative editing may provide:

- Shared model editing.
- User presence.
- Comments.
- Review.
- Change tracking.

Collaboration should preserve workflow version and author identity.

## Execution Profiles

Workflow definitions may reference execution profiles.

Potential profiles include:

- Local.
- Development.
- Container.
- VPS.
- Cloud.
- GitHub.
- GitLab Runner.
- Simulation.
- Emulation.
- Physical execution where available.

The editor should preserve the selected profile without hard-coding provider-specific runtime assumptions into the logical workflow.

## Configuration

Potential configuration includes:

- GLSP client configuration.
- GLSP server configuration.
- Model configuration.
- Diagram configuration.
- Palette configuration.
- Validation configuration.
- Mapping rules.
- Connector configuration.
- Adapter configuration.
- Execution profiles.
- UI configuration.

Configuration should distinguish graphical settings from workflow semantics.

## Deployment

Potential deployment environments include:

- Local development.
- Browser-based application.
- Container.
- VPS.
- Cloud.
- PaaS workspace.

The selected deployment environment should not change the logical meaning of the workflow.

## Results

The editor may provide graphical access to workflow results.

For example:

    Workflow
       ↓
    Execution
       ↓
    Results
       ↓
    GLSP View
       ↓
    User

Results should retain:

- Workflow ID.
- Workflow version.
- Run ID.
- Node or stage identity.
- Implementation.
- Resource.
- Execution mode.

## Evidence

Evidence may include:

- Model source.
- Diagram version.
- Logical workflow.
- Mapping version.
- Execution run.
- Implementation identity.
- Resource identity.
- Results.
- Validation output.
- Provenance.

## Provenance

A representative provenance chain is:

    Source Repository
          ↓
    Workflow Model
          ↓
    GLSP Representation
          ↓
    Logical Workflow
          ↓
    Workflow Version
          ↓
    Run
          ↓
    Implementation
          ↓
    Resource
          ↓
    Results
          ↓
    Evidence

This provides traceability between graphical authoring and execution.

## Model-to-Execution Boundary

A key boundary is:

    GLSP
      ↓
    Model
      ↓
    Logical Workflow
      ↓
    Workflow Engine
      ↓
    General Factory
      ↓
    Runtime

The GLSP implementation should not directly bypass Factory resolution for normal execution paths.

## Validation

The reference implementation should be validated at multiple levels.

### Graphical Validation

Confirm that diagrams can be created, edited and rendered correctly.

### Model Validation

Confirm that graphical operations result in valid model structures.

### Mapping Validation

Confirm that supported graphical/model constructs map correctly to logical workflows.

### Workflow Validation

Confirm that mapped workflows satisfy workflow semantics.

### Factory Validation

Confirm that required capabilities can be resolved through the Factory Registry.

### Resource Validation

Confirm that required resources can be resolved through the Resource Fabric.

### Execution Validation

Confirm that validated workflows can be submitted to the Workflow Engine.

### Runtime Validation

Confirm that execution state can be returned to the graphical representation.

### Results Validation

Confirm that results are associated with the correct workflow run and stage.

### Evidence Validation

Confirm that graphical model, logical workflow, implementation, resource and result provenance is retained.

## Initial Demonstration

The first demonstration should establish a simple graphical workflow:

    [Input]
       ↓
    [Process]
       ↓
    [Result]

The demonstration should establish:

1. GLSP editor initialization.
2. Graphical node creation.
3. Graphical edge creation.
4. Model serialization.
5. Logical workflow mapping.
6. Validation.
7. Workflow Engine submission.
8. Execution.
9. Result collection.
10. Evidence generation.

## Pattern Demonstration

A second demonstration may represent a reusable workflow pattern:

    [Input]
       ↓
    [Parallel]
       ├── [A]
       └── [B]
             ↓
           [Join]
             ↓
           [Result]

This demonstrates graphical composition of a workflow pattern.

## Execution-State Demonstration

A further demonstration may show:

    [A] → [B] → [C]

with runtime state represented as:

    [Completed] → [Running] → [Pending]

The state should originate from the Workflow Engine.

## Common Structure

- `configuration/` — configuration and environment definitions.
- `samples/` — sample GLSP editor and model assets.
- `workflows/` — workflow examples and execution definitions.
- `deployment/` — deployment examples and profiles.
- `execution/` — execution configuration and runtime examples.
- `results/` — sample execution results.
- `evidence/` — validation, provenance and evidence artifacts.

Additional directories may be added for implementation-specific GLSP client/server components when actual assets are introduced.

## Relationship to General Framework

The General Framework defines technology-neutral concepts.

Eclipse GLSP provides a graphical implementation mechanism.

    General Framework
          ↓
    Workflow Abstraction
          ↓
    Logical Workflow
          ↓
    GLSP Representation
          ↓
    User Interaction

GLSP should not redefine the General Framework.

## Relationship to General Factory

The General Factory may resolve Eclipse GLSP as one implementation of a graphical workflow-design capability.

For example:

    Graphical Workflow Capability
              ↓
        Factory Registry
              ↓
          Eclipse GLSP
              ↓
        Logical Workflow
              ↓
        Workflow Engine

Alternative graphical technologies may be resolved through the same capability boundary.

## Relationship to Workflow Patterns

Workflow Patterns define reusable structures.

GLSP may provide their graphical representation.

    Workflow Pattern
          ↓
    GLSP Template / Palette
          ↓
    Workflow Model
          ↓
    Logical Workflow
          ↓
    Workflow Engine

## Relationship to BPMN

BPMN provides a process-modelling notation.

GLSP may provide a graphical editor technology for BPMN or other model types.

    BPMN Model
       ↓
    GLSP Editor
       ↓
    Graphical Representation
       ↓
    Logical Workflow

The BPMN and GLSP reference implementations should remain separately identifiable.

## Relationship to Workflow Views

Workflow Views provide presentation-oriented micro-frontends.

GLSP provides the underlying graphical editing capability.

For example:

    Workflow View
         ↓
    GLSP Editor
         ↓
    Logical Workflow
         ↓
    Workflow Engine

The Workflow View remains a presentation boundary.

## Relationship to Resource Views

Resource Views present resource information.

GLSP may visualize resource requirements or selected resources.

    GLSP
      ↓
    Resource Requirement
      ↓
    Resource View
      ↓
    Resource Fabric

Resource Views and GLSP remain presentation technologies.

## Relationship to QAI Platform

The QAI Platform may incorporate GLSP as part of its engineering workspace.

For example:

    QAI Platform
          ↓
    Engineering Workspace
          ↓
    GLSP Workflow Designer
          ↓
    Workflow Engine
          ↓
    General Factory
          ↓
    Resource Fabric
          ↓
    Runtime

## Relationship to QAI Lab

QAI Lab workflows may be graphically represented using GLSP.

For example:

    QAI Experiment
          ↓
    GLSP Workflow
          ↓
    Notebook / Runner
          ↓
    QAI Execution
          ↓
    Results
          ↓
    Evidence

The QAI Lab remains an execution and experimentation environment.

## Agriculture Digital Farm Relationship

The Agriculture Digital Farm pilot may provide concrete workflow examples that can be represented graphically using GLSP.

For example:

    [Farm State]
          ↓
    [Data]
          ↓
    [Analysis]
          ↓
    [Optimization]
          ↓
    [Decision]
          ↓
    [Action]
          ↓
    [Observation]

This illustrates how an application-specific workflow may be visualized.

The pilot remains a domain-specific workload and evidence source.

It should not become the semantic definition of the General Factory workflow designer.

## Pilot-to-Generalization Path

Reusable graphical workflow patterns may be extracted through:

    Pilot Workflow
          ↓
    Identify Reusable Structure
          ↓
    Define Logical Pattern
          ↓
    Create GLSP Representation
          ↓
    Validate
          ↓
    Execute
          ↓
    Capture Evidence
          ↓
    Promote

The purpose is to generalize reusable workflow structures rather than copy the pilot implementation.

## Security Considerations

Relevant considerations include:

- Authentication.
- Authorization.
- Workflow ownership.
- Project isolation.
- Tenant isolation.
- Model access control.
- Execution authorization.
- Resource authorization.
- Connector credentials.
- Secret management.
- Server-side validation.
- Audit logging.

The graphical client must not be treated as a security boundary.

## Data Governance

Workflow models may contain:

- Business processes.
- Engineering procedures.
- Operational logic.
- Resource requirements.
- Model references.
- Configuration.

Controls may include:

- Classification.
- Ownership.
- Versioning.
- Access control.
- Retention.
- Data sovereignty.
- Provenance.

## IP and Provenance Considerations

Eclipse GLSP is an external technology and should retain its implementation identity and applicable licensing information.

The repository should distinguish:

- Eclipse GLSP technology.
- GLSP-based implementation code.
- BPMN or other external model standards.
- General Factory integration.
- Original QAI workflow mappings.
- Original QAI workflow patterns.
- Original QAI execution and evidence structures.

Third-party technologies should not be represented as original Bhadale IT intellectual property.

## Scope

### In Scope

- Graphical workflow editing.
- Model-based visual editing.
- Node and edge representation.
- Drag-and-drop.
- Workflow composition.
- Diagram navigation.
- Property editing.
- Model synchronization.
- Workflow validation feedback.
- Logical workflow mapping.
- Workflow pattern visualization.
- BPMN-oriented editor integration.
- React Flow comparison/integration boundary.
- Workflow Engine integration.
- Factory Registry integration.
- Connector integration.
- Adapter integration.
- Resource Fabric integration.
- AI/ML workflow visualization.
- Quantum workflow visualization.
- Simulation workflow visualization.
- Digital-twin workflow visualization.
- Virtual-first workflow visualization.
- Notebook integration.
- Git integration.
- PaaS integration.
- SaaS integration.
- Micro-frontend integration.
- IDE integration.
- Execution-state visualization.
- Results.
- Evidence.
- Provenance.

### Out of Scope

The initial reference implementation does not attempt to provide:

- A replacement for the General Framework.
- A replacement for the General Factory.
- A universal workflow engine.
- A universal workflow language.
- A complete BPMN runtime.
- A replacement for the Workflow Engine.
- A replacement for the Resource Fabric.
- A universal resource scheduler.
- Automatic physical QPU access.
- Automatic physical-system control.
- Guaranteed simulation-to-physical equivalence.
- Multi-agent or swarm orchestration as a required capability.
- Provider-specific graphical tooling as the semantic authority.

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
11. Treat Eclipse GLSP as a graphical implementation technology.
12. Keep the logical workflow model as the semantic authority.
13. Separate graphical representation from workflow execution.
14. Preserve model and workflow version identity.
15. Keep GLSP-specific protocol and editor concerns behind the implementation boundary.
16. Use explicit mappings between graphical models and logical workflows.
17. Validate graphical models before execution.
18. Resolve concrete implementations through the General Factory.
19. Resolve computational resources through the Resource Fabric.
20. Preserve execution state and provenance.
21. Keep BPMN and other modelling technologies distinguishable from GLSP itself.
22. Keep third-party technology distinguishable from original QAI engineering.
23. Do not imply physical execution from graphical workflow capability.
24. Promote validated GLSP samples incrementally.

## Promotion Path

The Eclipse GLSP reference implementation may progress through:

    Graphical Prototype
          ↓
    Model Representation
          ↓
    GLSP Client / Server Validation
          ↓
    Logical Workflow Mapping
          ↓
    Workflow Validation
          ↓
    Factory Resolution
          ↓
    Resource Resolution
          ↓
    Workflow Engine
          ↓
    Execution
          ↓
    Runtime State
          ↓
    Results
          ↓
    Evidence
          ↓
    Reproducibility / Traceability Validation
          ↓
    Reusable GLSP Reference
          ↓
    General Factory Capability Binding

Promotion should be based on demonstrated graphical editing, model synchronization, logical-workflow mapping, execution integration and evidence.

## Future Extensions

Potential future extensions include:

- Full workflow palette support.
- Reusable workflow-pattern templates.
- BPMN editor integration.
- Advanced model validation.
- Model comparison.
- Workflow version comparison.
- Collaborative editing.
- Workflow review.
- Approval workflows.
- Runtime execution overlays.
- Resource-aware graphical views.
- Execution monitoring.
- Results visualization.
- Evidence visualization.
- Notebook workflow nodes.
- AI/ML workflow nodes.
- Quantum workflow nodes.
- Simulation workflow nodes.
- Digital-twin workflow nodes.
- Virtual-device nodes.
- Virtual-first lifecycle templates.
- PaaS engineering workspace integration.
- SaaS workflow authoring.
- Micro-frontend integration.
- Eclipse Theia integration.
- Eclipse Che integration.
- VS Code-based integration.
- Cross-editor model portability.
- Workflow import/export.
- Model-to-code integration where validated.
- Workflow conformance testing.

These extensions should be introduced incrementally as validated capabilities.

## Status

Reference structure established.

Eclipse GLSP is positioned as a concrete graphical workflow and model-based editing implementation within the General Factory.

Its primary architectural responsibility is to provide a client-server graphical editing capability that can represent and manipulate logical workflow models while remaining separate from workflow execution, Factory resolution and Resource Fabric management.

Actual GLSP client/server assets, model definitions, workflow editors, mapping adapters, connectors, deployment profiles, execution integrations, results and evidence should be added only when available and validated.
---

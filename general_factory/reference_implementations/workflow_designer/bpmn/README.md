# BPMN Workflow Designer

Reference implementation for the General Factory.

## Reference ID

REF-WORKFLOW-DESIGN-BPMN-001

## Purpose

Reference implementation for business process and workflow visualization.

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
# BPMN Workflow Designer

Reference implementation for the General Factory.

## Reference ID

REF-WORKFLOW-DESIGN-BPMN-001

## Purpose

Reference implementation for business process and workflow visualization.

This reference implementation provides a BPMN-oriented approach for visually representing and composing business processes and workflows.

It is intended to demonstrate how a standards-oriented process notation can participate in the General Factory without becoming the semantic authority for the General Framework.

The implementation may support:

- Business process visualization.
- Workflow composition.
- Process modelling.
- Activities and tasks.
- Events.
- Gateways.
- Sequence flows.
- Sub-processes.
- Human activities.
- Approval flows.
- Conditional paths.
- Parallel paths.
- Process documentation.
- Workflow model import/export where supported.
- Mapping between BPMN-oriented representations and logical workflows.

The BPMN implementation is primarily a workflow-design and visualization capability.

Execution remains the responsibility of the Workflow Engine and the resolved runtime implementation.

## Architectural Role

This reference implementation demonstrates how a BPMN-oriented workflow designer can participate in the General Factory.

The reference implementation does not redefine the General Framework. It provides an implementation reference that can be resolved through Factory capabilities, registries, connectors, adapters and runtime services.

A representative relationship is:

    General Framework
            ↓
    Logical Capability
            ↓
    Logical Workflow
            ↓
    BPMN Representation
            ↓
    Validation / Mapping
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

The BPMN designer therefore provides a concrete visual representation and authoring mechanism for applicable workflow structures.

## BPMN Representation

BPMN may represent workflow structures through concepts such as:

- Tasks.
- Activities.
- Events.
- Gateways.
- Sequence flows.
- Sub-processes.
- Pools and lanes.
- Message flows.
- Data associations.

Only the subset required by the General Factory reference implementation should be adopted initially.

The implementation should avoid introducing BPMN semantics into the General Framework unless those semantics are explicitly required and generalized.

## Semantic Authority

The logical workflow remains the semantic authority within the General Factory architecture.

The BPMN model is a representation and authoring format.

    Logical Workflow
          ↕
    BPMN Representation
          ↓
    Validation
          ↓
    Workflow Engine

Where a BPMN model is used as the source representation, a controlled mapping should establish the corresponding logical workflow.

## BPMN as Implementation Technology

BPMN is treated as a concrete workflow-design technology or notation.

It is not itself the General Factory architecture.

The relationship is:

    General Framework
          ↓
    Workflow Capability
          ↓
    BPMN Designer
          ↓
    BPMN Model
          ↓
    Logical Workflow Mapping
          ↓
    Workflow Engine

Other workflow-design implementations may coexist with BPMN.

## Relationship to Visual Workflow

The BPMN Workflow Designer is one concrete implementation of the broader Visual Workflow capability.

    Visual Workflow
          ├── BPMN
          ├── React Flow
          ├── Eclipse GLSP
          └── Other Validated Implementations

The broader Visual Workflow reference implementation should remain technology-neutral.

## Relationship to React Flow

React Flow may provide a node-based visual editing implementation.

BPMN provides a process-oriented modelling notation.

They may therefore serve different implementation needs.

For example:

    Visual Workflow Capability
             ↓
       ┌─────┴─────┐
       ↓           ↓
     BPMN      React Flow
       ↓           ↓
    Logical Workflow Representation

Neither implementation should automatically become the semantic authority.

## Relationship to Eclipse GLSP

Eclipse GLSP may provide a client-server architecture for building web-based diagram editors.

A BPMN implementation may use GLSP or another diagram-editing technology where appropriate.

The relationship may therefore be:

    BPMN Model
        ↓
    Diagram Editor
        ↓
    GLSP / Other Editor Technology
        ↓
    User Interface

The diagram technology remains an implementation detail.

## Relationship to Workflow Engine

The BPMN designer should remain separate from workflow execution.

    BPMN Designer
          ↓
    BPMN Model
          ↓
    Logical Workflow
          ↓
    Workflow Engine
          ↓
    Execution

The designer should not be required to contain the complete execution runtime.

## Workflow Authoring

A representative authoring flow is:

    Create Workflow
          ↓
    Add Activities
          ↓
    Add Events
          ↓
    Add Gateways
          ↓
    Connect Flows
          ↓
    Validate
          ↓
    Save Version
          ↓
    Publish / Submit
          ↓
    Execute

The exact authoring experience depends on the selected BPMN tooling.

## Visual Composition

The designer may provide:

- Drag-and-drop.
- Node placement.
- Flow connections.
- Activity configuration.
- Gateway configuration.
- Event configuration.
- Lane assignment.
- Sub-process composition.
- Diagram navigation.
- Zoom and pan.
- Selection.
- Editing.
- Model validation.

Visual interaction should update the underlying workflow model rather than create an independent execution definition.

## BPMN Activities

Activities may represent executable or logical workflow stages.

Examples include:

- User tasks.
- Service tasks.
- Script or code activities.
- Manual activities.
- Sub-processes.

When mapped into the General Factory, an activity should resolve to a logical capability rather than directly embedding provider-specific implementation details wherever practical.

## BPMN Events

Events may represent workflow conditions or lifecycle points.

Examples include:

- Start events.
- End events.
- Intermediate events.
- Message-related events.
- Timer-related events.
- Error-related events.

Only supported event semantics should be mapped to executable General Factory workflows.

## BPMN Gateways

Gateways may represent control-flow decisions.

Examples include:

- Exclusive branching.
- Parallel branching.
- Inclusive branching.
- Event-based decisions where supported.

Gateway semantics must remain explicit when converting to an executable logical workflow.

## Sequence Flows

Sequence flows represent control-flow relationships between activities.

For example:

    [Activity A]
          ↓
    [Activity B]
          ↓
    [Activity C]

The mapping layer should preserve sequence relationships when constructing the logical workflow.

## Parallel Flow

A BPMN model may represent parallel execution.

For example:

    [Start]
       ↓
    [Parallel Gateway]
       ├──→ [A]
       └──→ [B]
              ↓
       [Join Gateway]
              ↓
             [C]

The corresponding logical workflow should preserve the required dependency and join semantics.

## Conditional Flow

A BPMN model may represent conditional branching.

For example:

    [A]
     ↓
    [Gateway]
     ├── condition 1 → [B]
     └── condition 2 → [C]

Conditions should be explicit and validated before execution.

## Approval Workflow

BPMN can represent human approval processes.

For example:

    [Submit]
       ↓
    [Review]
       ↓
    [Approval]
      ├── Approved → [Execute]
      └── Rejected → [Return]

Approval should remain an explicit workflow state.

Authorization remains the responsibility of the applicable security and service layers.

## Human-in-the-Loop

A BPMN model may represent human interaction.

For example:

    [Automated Analysis]
            ↓
      [Human Review]
        ├── Approve
        ├── Reject
        └── Request Changes

The designer represents the human activity.

The Workflow Engine manages the corresponding execution state.

## Pools and Lanes

BPMN pools and lanes may represent organizational or responsibility boundaries.

For example:

    ┌──────────────────────────────────┐
    │ Business                        │
    │ [Request] → [Review]            │
    ├──────────────────────────────────┤
    │ Engineering                     │
    │             [Implement]         │
    ├──────────────────────────────────┤
    │ Operations                      │
    │                       [Deploy]   │
    └──────────────────────────────────┘

These constructs may provide useful visualization of responsibility.

They should not automatically be treated as security boundaries.

Security and authorization remain server-side responsibilities.

## Sub-Processes

BPMN sub-processes may represent nested workflow structures.

For example:

    [Main Workflow]
          ↓
    [Sub-Process]
       ├── [A]
       ├── [B]
       └── [C]
          ↓
    [Next Stage]

Sub-processes may map to reusable workflow patterns or nested logical workflows.

## Workflow Pattern Integration

BPMN may visually represent reusable workflow patterns.

Examples include:

- Sequential.
- Parallel.
- Conditional.
- Feedback.
- Approval.
- Open-loop.
- Closed-loop.
- Retry.
- Exception handling.

For example:

    Workflow Pattern
          ↓
    BPMN Template
          ↓
    BPMN Workflow
          ↓
    Logical Workflow
          ↓
    Workflow Engine

Pattern semantics should remain separately defined by the Workflow Patterns reference implementation.

## Feedback Workflow

A feedback workflow may be represented conceptually as:

    [Process]
        ↓
    [Evaluate]
        ↓
    [Decision]
        └────────→ [Process]

The implementation should explicitly define loop termination conditions.

## Closed-Loop Workflow

A closed-loop workflow may use:

    [Sense]
       ↓
    [Process]
       ↓
    [Decide]
       ↓
    [Act]
       ↓
    [Observe]
       └────────→ [Process]

This may be useful for:

- Digital twins.
- CPS workflows.
- Industrial systems.
- Agriculture systems.
- Optimization.
- Adaptive control.

The BPMN representation should not imply physical control capability by itself.

## Open-Loop Workflow

An open-loop workflow may use:

    [Input]
       ↓
    [Process]
       ↓
    [Output]

Results may still be captured for analysis and evidence.

## Logical Workflow Mapping

A key implementation responsibility is mapping BPMN constructs to the General Factory logical workflow model.

A representative mapping is:

    BPMN Activity
          ↓
    Logical Workflow Node

    BPMN Sequence Flow
          ↓
    Workflow Dependency

    BPMN Gateway
          ↓
    Workflow Control Structure

    BPMN Event
          ↓
    Workflow Event / State

    BPMN Sub-Process
          ↓
    Nested / Composite Workflow

The exact mapping should be explicitly documented and validated.

## Mapping Boundary

The mapping layer should prevent BPMN-specific details from leaking unnecessarily into the General Framework.

For example:

    BPMN-Specific Model
          ↓
    Mapping / Adapter
          ↓
    Logical Workflow Model
          ↓
    General Factory

This preserves technology neutrality.

## Factory Registry Integration

The BPMN Workflow Designer may be registered as a workflow-design implementation.

For example:

    Workflow Design Capability
            ↓
    Factory Registry
            ↓
    BPMN Designer
            ↓
    BPMN Model
            ↓
    Logical Workflow

The registry should preserve implementation identity.

## Connector and Adapter Integration

A connector may provide access to the BPMN implementation environment.

An adapter may translate between BPMN and the logical workflow contract.

For example:

    General Factory
          ↓
    Connector
          ↓
    BPMN Tool
          ↓
    BPMN Model
          ↓
    Adapter
          ↓
    Logical Workflow

The exact arrangement depends on the selected BPMN implementation.

## Resource Fabric Integration

The designer may display or configure logical resource requirements.

For example:

    BPMN Activity
          ↓
    Resource Requirement
          ↓
    Resource Fabric
          ↓
    CPU / GPU / HPC / TPU /
    QPU / Virtual Compute
          ↓
    Execution

The designer should not become the authoritative resource manager.

## Resource Annotations

Where useful, workflow activities may contain logical resource requirements.

Examples include:

- Compute class.
- Memory.
- Accelerator requirement.
- Runtime requirement.
- Execution environment.
- Quantum resource requirement.

Concrete resource resolution remains a Resource Fabric responsibility.

## AI / ML Workflow Design

BPMN may represent AI/ML workflow stages.

For example:

    [Data]
       ↓
    [Preprocess]
       ↓
    [Model]
       ↓
    [Inference]
       ↓
    [Evaluate]
       ↓
    [Result]

The AI/ML implementation is resolved separately from the BPMN representation.

## Local Inference

A BPMN activity may represent local inference.

    [Input]
       ↓
    [Local AI Inference]
       ↓
    [Prediction]
       ↓
    [Validation]

The actual model and runtime are implementation bindings.

## Quantum Workflow Design

BPMN may represent quantum workflow stages.

    [Problem]
       ↓
    [Quantum Model]
       ↓
    [Quantum Backend]
       ↓
    [Measurement]
       ↓
    [Analysis]
       ↓
    [Result]

The backend may be:

- Quantum simulation.
- Quantum emulation.
- Physical QPU execution where available.

The BPMN diagram alone does not establish physical quantum execution.

## Hybrid AI / Quantum Workflow

BPMN may represent a hybrid workflow.

    [Classical Processing]
             ↓
    [AI / ML]
             ↓
    [Quantum Stage]
             ↓
    [Classical Analysis]
             ↓
    [Result]

The actual technologies are resolved through the General Factory.

## Simulation Workflow

A BPMN representation may describe a simulation workflow.

    [System Model]
          ↓
    [Scenario]
          ↓
    [Simulation]
          ↓
    [Analysis]
          ↓
    [Evidence]

The simulation engine remains a separate implementation.

## Digital Twin Workflow

A BPMN workflow may represent digital-twin activities.

    [Observed State]
          ↓
    [Twin Update]
          ↓
    [Scenario]
          ↓
    [Simulation]
          ↓
    [Comparison]
          ↓
    [Decision]

The digital twin remains the system representation, while BPMN provides workflow representation.

## Virtual-First Workflow

BPMN may represent a virtual-first lifecycle.

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
       ↓
    [Deployment Candidate]

Physical execution may be represented as a later stage where applicable.

## Notebook Integration

A BPMN activity may map to a notebook execution stage.

For example:

    [BPMN Activity]
          ↓
    [Logical Capability]
          ↓
    [Notebook]
          ↓
    [Runner]
          ↓
    [Results]

Notebook identity and source revision should be preserved.

## Git Integration

BPMN workflow definitions may be stored under version control.

Potential sources include:

- GitHub.
- GitLab.
- Local Git repositories.

For example:

    BPMN Model
        ↓
    Git Repository
        ↓
    Revision
        ↓
    Workflow Validation
        ↓
    Execution

The source revision should be included in workflow provenance.

## Workflow Versioning

BPMN workflow definitions should be versioned.

For example:

    BPMN v1
       ↓
    Modification
       ↓
    BPMN v2
       ↓
    Mapping
       ↓
    Logical Workflow v2
       ↓
    Execution

Execution results should identify the workflow version used.

## Import and Export

Where supported, the implementation may support:

- BPMN model import.
- BPMN model export.
- Workflow serialization.
- Logical workflow mapping.
- Version-controlled model storage.

Import/export support should be validated for the selected implementation.

## Model Validation

Validation may include:

- BPMN structural validation.
- Required element validation.
- Sequence-flow validation.
- Gateway validation.
- Event validation.
- Sub-process validation.
- Mapping validation.
- Logical workflow validation.
- Execution compatibility validation.

Not every BPMN construct needs to be executable in the initial reference implementation.

## Execution Compatibility

A BPMN model may be visually valid but not executable by the General Factory runtime.

Therefore:

    BPMN Validation
          ↓
    Mapping Validation
          ↓
    Factory Capability Validation
          ↓
    Execution Compatibility
          ↓
    Executable Workflow

Unsupported BPMN constructs should be clearly identified.

## Execution

The BPMN designer should normally hand execution to the Workflow Engine.

    BPMN Designer
          ↓
    BPMN Model
          ↓
    Logical Workflow
          ↓
    Workflow Engine
          ↓
    Factory
          ↓
    Runtime

This separation allows alternative workflow execution technologies to be used without changing the visual authoring layer.

## Execution State

The Workflow Engine may return execution state to the BPMN view.

For example:

    Workflow Engine
          ↓
    Execution State
          ↓
    BPMN View
          ↓
    Activity Status

Possible states include:

- Pending.
- Ready.
- Running.
- Completed.
- Failed.
- Skipped.
- Cancelled.
- Blocked.

The designer should display authoritative execution state received from the runtime.

## Results

Workflow results may be associated with BPMN activities.

For example:

    [Activity]
        ↓
    [Execution]
        ↓
    [Result]
        ↓
    [Evidence]

Result identity should preserve:

- Workflow ID.
- Workflow version.
- Activity ID.
- Run ID.
- Implementation.
- Resource.
- Execution mode.

## Evidence

Evidence may include:

- BPMN model.
- Workflow version.
- Mapping version.
- Execution run.
- Activity execution.
- Implementation identity.
- Resource identity.
- Results.
- Validation output.
- Logs where appropriate.
- Provenance.

## Provenance

A representative provenance chain is:

    BPMN Source
         ↓
    BPMN Version
         ↓
    Logical Workflow
         ↓
    Workflow Version
         ↓
    Run ID
         ↓
    Activity
         ↓
    Implementation
         ↓
    Resource
         ↓
    Result
         ↓
    Evidence

This allows the execution lineage to be reconstructed where sufficient information is retained.

## PaaS Integration

The BPMN designer may be exposed through the General Factory PaaS.

For example:

    PaaS Workspace
          ↓
    BPMN Workflow Designer
          ↓
    Logical Workflow
          ↓
    Workflow Engine
          ↓
    Results / Evidence

The PaaS should expose the logical capability rather than unnecessarily exposing provider-specific implementation details.

## SaaS Integration

A SaaS application may provide BPMN-oriented workflow authoring.

For example:

    SaaS Client
          ↓
    Workflow Designer
          ↓
    Logical Workflow
          ↓
    Workflow API
          ↓
    Workflow Engine
          ↓
    Results

Authorization remains server-side.

## Micro-Frontend Integration

The BPMN designer may be exposed as a Workflow View micro-frontend.

For example:

    Web Shell
       ↓
    Workflow View
       ↓
    BPMN Designer
       ↓
    Workflow API
       ↓
    Workflow Engine

Other views may include:

- Client Views.
- Resource Views.
- Results Views.
- Evidence Views.

The presentation layer does not become the execution authority.

## IDE Integration

The BPMN designer may operate alongside:

- Eclipse Che.
- Eclipse Theia.
- VS Code.
- Jupyter.
- Web-based PaaS workspaces.

For example:

    IDE / Workspace
          ↓
    BPMN Designer
          ↓
    Workflow Definition
          ↓
    Code / Notebook
          ↓
    Workflow Engine

The IDE remains a development workspace.

## Collaboration

Where supported, BPMN editing may provide collaborative capabilities.

Potential features include:

- Shared workflow editing.
- Version comparison.
- Comments.
- Review.
- Approval.
- Change history.

Collaboration features should not replace repository-based version control and provenance.

## Configuration

Potential configuration includes:

- BPMN editor configuration.
- Model schema.
- Supported BPMN subset.
- Mapping rules.
- Workflow templates.
- Validation rules.
- Connector configuration.
- Adapter configuration.
- Execution profiles.
- UI configuration.

Provider-specific configuration should remain isolated from logical workflow definitions where practical.

## Deployment

Potential deployment environments include:

- Local development.
- Container.
- VPS.
- Cloud.
- PaaS workspace.
- Browser-based web application.

Deployment environment should remain separate from workflow semantics.

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
- Audit logging.

Visual lanes and BPMN roles should not be treated as sufficient security boundaries.

## Data Governance

BPMN models may contain business processes, engineering procedures and operational logic.

Relevant controls include:

- Classification.
- Ownership.
- Versioning.
- Access control.
- Retention.
- Data sovereignty.
- Provenance.

## IP and Provenance Considerations

BPMN is an established process-modelling notation and may be implemented using third-party tools or libraries.

The repository should preserve the identity and licensing of any selected BPMN implementation.

Original QAI-specific contributions may include:

- Logical workflow mappings.
- Factory integration.
- Resource-resolution integration.
- QAI workflow templates.
- QAI-specific validation rules.
- Execution evidence structures.

These should remain distinguishable from third-party BPMN technology and standards.

## Relationship to General Factory

The General Factory may resolve the BPMN Workflow Designer as one implementation of the workflow-design capability.

For example:

    Workflow Design Capability
              ↓
        Factory Registry
              ↓
       BPMN Implementation
              ↓
        Logical Workflow
              ↓
       Workflow Engine
              ↓
          Execution

Alternative workflow-design implementations may be resolved through the same capability boundary.

## Relationship to General Framework

The General Framework defines the technology-neutral concepts and architectural semantics.

BPMN provides a concrete representation.

    General Framework
          ↓
    Workflow Abstraction
          ↓
    BPMN Representation
          ↓
    Logical Workflow
          ↓
    General Factory

BPMN should therefore extend implementation choices without redefining the framework.

## Relationship to Workflow Patterns

Workflow Patterns define reusable workflow structures.

BPMN provides a representation for those structures.

For example:

    Workflow Pattern
          ↓
    BPMN Template
          ↓
    BPMN Workflow
          ↓
    Logical Workflow
          ↓
    Workflow Engine

## Relationship to Workflow Engine

The BPMN Workflow Designer creates and represents workflows.

The Workflow Engine validates and executes workflows.

    BPMN Designer
          ↓
    Workflow Model
          ↓
    Workflow Engine
          ↓
    Execution

This separation should be preserved.

## Relationship to Visual Workflow

BPMN is one concrete implementation under the broader Visual Workflow capability.

The architecture may support:

    Visual Workflow
       ├── BPMN
       ├── React Flow
       ├── Eclipse GLSP
       └── Other Validated Implementations

The logical workflow model provides the common semantic boundary.

## Relationship to Resource Views

Resource Views present available and selected resources.

The BPMN designer may reference logical resource requirements.

For example:

    BPMN Activity
          ↓
    Resource Requirement
          ↓
    Resource View
          ↓
    Resource Fabric
          ↓
    Execution

The Resource View is not the authoritative resource manager.

## Relationship to Client Views

Client Views provide role-oriented presentation.

The BPMN designer may be embedded within:

- Business Analyst View.
- Workflow Designer View.
- Domain Expert View.
- Developer View.
- QAI Engineer View.
- Systems Engineer View.
- Operations View.

The view determines presentation, not workflow semantics.

## Agriculture Digital Farm Relationship

The Agriculture Digital Farm pilot provides a concrete domain workload that may be represented using BPMN-oriented workflow structures.

For example, a domain workflow might conceptually contain:

    [Farm State]
          ↓
    [Data Collection]
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

This is an example of how pilot workflow behaviour may be represented.

The Digital Farm pilot remains an application-specific workload and should not define the generic BPMN reference implementation.

## Pilot-to-Generalization Path

Reusable BPMN patterns may be extracted from pilot workloads through:

    Pilot Workflow
          ↓
    Identify Reusable Structure
          ↓
    Remove Domain-Specific Semantics
          ↓
    BPMN Pattern / Template
          ↓
    Generic Workflow
          ↓
    Validation
          ↓
    General Factory Reference

This avoids copying the pilot implementation wholesale into the General Factory.

## Initial Demonstration

The first demonstration should establish a simple business workflow:

    [Start]
       ↓
    [Input]
       ↓
    [Process]
       ↓
    [Review]
       ↓
    [Approval]
       ↓
    [Result]
       ↓
     [End]

The demonstration should establish:

1. BPMN model creation.
2. Visual representation.
3. Workflow validation.
4. Logical workflow mapping.
5. Workflow Engine submission.
6. Execution.
7. Result collection.
8. Evidence generation.

## Parallel Demonstration

A second demonstration may establish:

    [Start]
       ↓
    [Parallel Gateway]
       ├──→ [A]
       └──→ [B]
              ↓
       [Join Gateway]
              ↓
             [C]
              ↓
            [End]

This demonstrates parallel workflow representation and mapping.

## Conditional Demonstration

A third demonstration may establish:

    [Start]
       ↓
    [Analysis]
       ↓
    [Decision Gateway]
       ├──→ [Path A]
       └──→ [Path B]
              ↓
             [End]

This demonstrates conditional workflow representation.

## Common Structure

- `configuration/` — configuration and environment definitions.
- `samples/` — sample BPMN models and implementation assets.
- `workflows/` — BPMN workflow examples and execution definitions.
- `deployment/` — deployment examples and profiles.
- `execution/` — execution configuration and runtime examples.
- `results/` — sample workflow execution results.
- `evidence/` — validation, provenance and evidence artifacts.

Additional implementation-specific directories may be added when required by the selected BPMN technology.

## Validation

The reference implementation should be validated at multiple levels.

### Representation Validation

Confirm that BPMN models can be created and represented correctly.

### Model Validation

Confirm that supported BPMN structures satisfy the selected modelling rules.

### Mapping Validation

Confirm that supported BPMN constructs map correctly to the logical workflow model.

### Workflow Validation

Confirm that mapped workflows satisfy General Factory workflow requirements.

### Factory Validation

Confirm that required logical capabilities can be resolved through the Factory Registry.

### Resource Validation

Confirm that required resources can be resolved through the Resource Fabric.

### Execution Validation

Confirm that mapped workflows execute through the Workflow Engine.

### Results Validation

Confirm that expected outputs are produced.

### Evidence Validation

Confirm that the BPMN model, workflow, implementation, resource and results remain traceable.

## Scope

### In Scope

- BPMN-oriented workflow visualization.
- Business process modelling.
- Workflow composition.
- Activities.
- Events.
- Gateways.
- Sequence flows.
- Sub-processes.
- Approval workflows.
- Human-in-the-loop workflows.
- Parallel workflows.
- Conditional workflows.
- Open-loop workflows.
- Closed-loop workflows.
- Workflow pattern representation.
- Logical workflow mapping.
- Workflow validation.
- Factory Registry integration.
- Connector integration.
- Adapter integration.
- Resource Fabric integration.
- AI/ML workflow representation.
- Quantum workflow representation.
- Simulation workflow representation.
- Digital-twin workflow representation.
- Virtual-first workflow representation.
- Notebook integration.
- Git integration.
- Workflow versioning.
- PaaS integration.
- SaaS integration.
- Micro-frontend integration.
- IDE integration.
- Results.
- Evidence.
- Provenance.

### Out of Scope

The initial reference implementation does not attempt to provide:

- A replacement for the General Framework.
- A replacement for the General Factory.
- A universal workflow engine.
- A universal BPMN runtime.
- A complete BPMN compliance implementation.
- A replacement for the Workflow Engine.
- A replacement for the Workflow Patterns reference.
- A replacement for the Resource Fabric.
- A universal resource scheduler.
- Automatic physical QPU access.
- Automatic physical-system control.
- Guaranteed equivalence between simulation and physical execution.
- Multi-agent or swarm orchestration as a required capability.
- Provider-specific BPMN tooling as the semantic authority.

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
11. Treat BPMN as a concrete workflow-design and representation technology.
12. Keep the logical workflow model as the semantic authority.
13. Keep visual representation separate from workflow execution.
14. Keep BPMN-specific semantics behind an appropriate mapping boundary.
15. Do not require every BPMN construct to be executable.
16. Validate mappings before execution.
17. Preserve workflow and model version identity.
18. Preserve source and execution provenance.
19. Keep third-party BPMN technology distinguishable from original QAI engineering.
20. Resolve implementations through the General Factory.
21. Resolve computational resources through the Resource Fabric.
22. Preserve execution-mode identity.
23. Promote validated BPMN mappings incrementally.
24. Keep domain-specific pilot workflows separate from generic BPMN capabilities.

## Promotion Path

The BPMN Workflow Designer reference implementation may progress through:

    BPMN Model
          ↓
    Representation Validation
          ↓
    Mapping Validation
          ↓
    Logical Workflow
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
    Results
          ↓
    Evidence
          ↓
    Reproducibility / Traceability Validation
          ↓
    Reusable BPMN Reference
          ↓
    General Factory Capability Binding

Promotion should be based on demonstrated modelling, mapping, execution and evidence behaviour.

## Future Extensions

Potential future extensions include:

- Expanded BPMN construct support.
- BPMN template library.
- Workflow-pattern templates.
- BPMN-to-logical-workflow mapping tools.
- Logical-workflow-to-BPMN visualization.
- Eclipse GLSP-based BPMN editor.
- React-based BPMN editor integration.
- Collaborative workflow modelling.
- Workflow review and approval.
- Model comparison.
- Model version visualization.
- Execution-state visualization.
- Runtime result overlays.
- Resource requirement visualization.
- Resource-aware workflow design.
- AI/ML workflow templates.
- Quantum workflow templates.
- Simulation workflow templates.
- Digital-twin workflow templates.
- Virtual-first workflow templates.
- PaaS workflow authoring.
- SaaS workflow templates.
- Evidence-package generation.
- Workflow conformance testing.
- BPMN model validation automation.
- Cross-designer workflow portability.
- Integration with additional workflow-design technologies.

These extensions should be introduced incrementally as validated capabilities.

## Status

Reference structure established.

The BPMN Workflow Designer is positioned as a concrete workflow-design and business-process visualization implementation within the General Factory.

Its primary architectural responsibility is to provide a BPMN-oriented representation and authoring mechanism that can be mapped to logical workflows and subsequently executed through the Workflow Engine.

Actual BPMN tooling, models, mapping adapters, connectors, workflow templates, execution integrations, results and evidence should be added only when available and validated.

---

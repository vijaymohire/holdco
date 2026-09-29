# Strawberry Fields

Reference implementation for the General Factory.

## Reference ID

REF-QUANTUM-STRAWBERRYFIELDS-001

## Purpose

Reference implementation for photonic quantum computing workflows.

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

# Strawberry Fields

Reference implementation for the General Factory.

## Reference ID

REF-QUANTUM-STRAWBERRYFIELDS-001

## Purpose

Reference implementation for photonic quantum computing workflows.

This reference implementation provides a concrete technology integration for photonic and continuous-variable quantum computing workflows within the General Factory.

Strawberry Fields may be used to demonstrate:

- Photonic quantum circuit construction.
- Continuous-variable quantum workflows.
- Optical-mode representations.
- Photonic quantum operations.
- Parameterized photonic circuits.
- Measurement workflows.
- Photonic quantum simulation.
- Quantum machine learning experiments where supported.
- Hybrid quantum-classical workflows.
- Quantum experiments.
- Notebook-based photonic quantum development.
- Results and evidence generation.

Strawberry Fields is treated as a technology-specific implementation rather than the definition of the General Framework or the logical quantum capability.

## Architectural Role

This reference implementation demonstrates how a technology, sample, external system, development environment, resource, workflow or execution capability can participate in the General Factory.

The reference implementation does not redefine the General Framework. It provides an implementation reference that can be resolved through Factory capabilities, registries, connectors, adapters and runtime services.

A representative relationship is:

    General Framework
            ↓
    Photonic Quantum Capability
            ↓
    Factory Registry
            ↓
    Strawberry Fields Reference Implementation
            ↓
    Connector / Adapter
            ↓
    Photonic Quantum Runtime
            ↓
    Execution
            ↓
    Results
            ↓
    Evidence

Strawberry Fields therefore represents one possible implementation of a logical photonic quantum capability.

## Logical Photonic Quantum Capability

The logical photonic quantum capability should remain independent of Strawberry Fields.

For example:

    Logical Photonic Quantum Capability
            ↓
    Factory Resolution
            ↓
    Strawberry Fields Binding
            ↓
    Photonic Circuit
            ↓
    Simulation / Backend Execution
            ↓
    Results

Another compatible implementation may be resolved for the same logical capability.

This separation supports implementation portability and comparative experimentation.

## Photonic Quantum Computing

Photonic quantum computing uses optical or photonic degrees of freedom to represent and process quantum information.

Within this reference implementation, Strawberry Fields may provide concrete implementation support for photonic quantum workflows.

A conceptual flow is:

    Photonic Quantum Capability
            ↓
    Optical Modes
            ↓
    Photonic Operations
            ↓
    Measurement
            ↓
    Results

The specific implementation representation remains Strawberry Fields-specific.

## Continuous-Variable Quantum Computing

Strawberry Fields may be used for continuous-variable quantum computing workflows.

A conceptual workflow is:

    Quantum State
          ↓
    Optical / Photonic Operations
          ↓
    Continuous-Variable Evolution
          ↓
    Measurement
          ↓
    Classical Results

The logical capability remains independent of the Strawberry Fields implementation.

## Photonic Modes

Photonic quantum workflows may represent quantum information through optical modes.

A conceptual representation is:

    Mode 0 ── Operation ───── Operation ── Measurement
    Mode 1 ─────── Operation ── Operation ── Measurement
    Mode 2 ── Operation ───── Operation ── Measurement

The actual circuit and program representation should remain associated with the Strawberry Fields implementation.

## Photonic Operations

A Strawberry Fields workflow may contain photonic operations such as:

- State preparation.
- Interferometric operations.
- Phase-related operations.
- Displacement operations.
- Squeezing operations.
- Measurement operations.
- Other supported photonic operations.

The precise operations available depend on the selected Strawberry Fields implementation and execution backend.

## Photonic Circuit Construction

A representative flow is:

    Photonic Quantum Capability
            ↓
    Photonic Circuit Definition
            ↓
    Strawberry Fields Program
            ↓
    Backend
            ↓
    Execution
            ↓
    Results
            ↓
    Evidence

The program definition should retain its implementation identity and provenance.

## Parameterized Photonic Circuits

Parameterized photonic circuits may be used for experimentation and optimization.

A representative flow is:

    Photonic Circuit Template
            ↓
    Parameter Values
            ↓
    Parameter Binding
            ↓
    Strawberry Fields
            ↓
    Backend Execution
            ↓
    Results
            ↓
    Comparison

Parameter identity and values should be retained where they materially affect reproducibility.

## Photonic Simulation

Strawberry Fields may be used for photonic quantum simulation through supported simulation backends.

A representative flow is:

    Photonic Circuit
          ↓
    Strawberry Fields
          ↓
    Simulation Backend
          ↓
    Execution
          ↓
    Measurement / State
          ↓
    Results
          ↓
    Evidence

Simulation results should be explicitly identified as simulation results.

They should not be represented as physical photonic-device measurements.

## Physical Photonic Execution

Where a supported physical photonic backend is available and authorized, the Strawberry Fields implementation may participate in physical execution.

A representative path is:

    Logical Photonic Capability
            ↓
    General Factory
            ↓
    Strawberry Fields
            ↓
    Backend Adapter
            ↓
    Physical Photonic System
            ↓
    Execution
            ↓
    Results
            ↓
    Evidence

The actual physical backend and execution environment must be recorded.

The presence of Strawberry Fields alone does not establish physical execution.

## Simulation and Physical Execution

The implementation should preserve the distinction between:

- Photonic circuit simulation.
- Photonic emulation where applicable.
- Physical photonic execution.

A simplified model is:

    Photonic Workload
        ├── Simulation
        │      ↓
        │  Strawberry Fields
        │
        ├── Emulation
        │      ↓
        │  Photonic Emulator
        │
        └── Physical Execution
               ↓
          Photonic Backend

The actual execution target should be captured in evidence.

## Simulation Versus Emulation

Simulation and emulation should remain distinct within the General Factory.

Simulation generally represents a mathematical or computational model of the intended quantum behaviour.

Emulation may provide a more device-oriented execution model.

The reference implementation should not imply equivalence between these execution modes.

## Quantum Backend Relationship

Strawberry Fields may support different execution backends.

A representative architecture is:

    Logical Photonic Capability
            ↓
       Factory Registry
            ↓
    Strawberry Fields Binding
            ↓
       Backend Selection
        ┌────┼──────────┐
        ↓    ↓          ↓
    Simulator Emulator  Physical
        ↓    ↓          ↓
     Results Results   Results

The actual backend used should remain explicit in configuration and evidence.

## Workflow Integration

Strawberry Fields may be invoked as part of a General Factory workflow.

A representative path is:

    Workflow
        ↓
    Photonic Quantum Capability
        ↓
    Factory Registry
        ↓
    Strawberry Fields Binding
        ↓
    Photonic Circuit
        ↓
    Simulation / Backend Execution
        ↓
    Results
        ↓
    Evidence

The workflow layer should use logical capability contracts rather than hard-code Strawberry Fields-specific assumptions where practical.

## Notebook Integration

Strawberry Fields may be used from Jupyter and other notebook environments.

A representative relationship is:

    Jupyter Notebook
          ↓
    Photonic Quantum Experiment
          ↓
    Strawberry Fields
          ↓
    Simulator / Backend
          ↓
    Results
          ↓
    Analysis
          ↓
    Evidence

The notebook remains the experiment-development environment while Strawberry Fields provides the photonic implementation.

## QAI Lab Integration

Strawberry Fields may participate in QAI Lab experiments.

For example:

    QAI Lab Experiment
          ↓
    Photonic Quantum Workflow
          ↓
    Strawberry Fields
          ↓
    Simulator / Backend
          ↓
    Results
          ↓
    Evidence

This provides one possible photonic quantum implementation for QAI experimentation and validation.

## Hybrid Quantum-Classical Workflows

Strawberry Fields may participate in hybrid workflows.

For example:

    Classical Input
          ↓
    Classical Pre-processing
          ↓
    Photonic Quantum Circuit
          ↓
    Strawberry Fields
          ↓
    Quantum Execution
          ↓
    Measurement
          ↓
    Classical Post-processing
          ↓
    Evaluation
          ↓
    Results

The classical and photonic quantum components should remain separately identifiable.

## AI / Quantum Relationship

Strawberry Fields may participate in AI/quantum workflows where a photonic quantum circuit is used as part of an optimization or learning workflow.

A representative flow is:

    Data
      ↓
    Classical / AI Processing
      ↓
    Parameter Preparation
      ↓
    Photonic Quantum Circuit
      ↓
    Strawberry Fields
      ↓
    Measurement
      ↓
    Classical Analysis
      ↓
    Results
      ↓
    Evidence

The AI/ML and photonic quantum implementations should remain separately identifiable.

## Quantum Machine Learning

Where supported by the selected implementation, Strawberry Fields may participate in quantum machine learning experiments.

A conceptual flow is:

    Training Data
          ↓
    Classical Pre-processing
          ↓
    Parameterized Photonic Circuit
          ↓
    Strawberry Fields
          ↓
    Simulation / Backend
          ↓
    Measurement
          ↓
    Loss / Metric
          ↓
    Parameter Update
          ↓
    Experiment Results

The actual learning algorithm and optimization method should remain explicit in the experiment definition.

## Parameter Optimization

Photonic quantum workflows may involve iterative parameter optimization.

A representative pattern is:

    Initial Parameters
          ↓
    Photonic Circuit
          ↓
    Strawberry Fields
          ↓
    Execution
          ↓
    Measurement
          ↓
    Objective / Loss
          ↓
    Classical Optimizer
          ↓
    Updated Parameters
          ↓
    Repeat

This can form part of a larger hybrid quantum-classical workflow.

## Resource Fabric Integration

Strawberry Fields workloads may require computational or quantum resources.

Potential resources include:

- CPU.
- GPU where supported.
- HPC.
- Virtual compute.
- Cloud compute.
- Photonic quantum resources.
- Other compatible execution resources.

A representative relationship is:

    Strawberry Fields Workload
          ↓
    Resource Requirement
          ↓
    Resource Fabric
          ↓
    Resource Resolution
          ↓
    Runtime / Backend
          ↓
    Execution

The Resource Fabric remains responsible for resource resolution.

## Configuration

Potential configuration includes:

- Strawberry Fields version.
- Python environment.
- Program identity.
- Circuit identity.
- Workflow identity.
- Experiment identity.
- Backend identity.
- Simulation configuration.
- Photonic mode configuration.
- Parameters.
- Resource requirements.
- Execution profile.

Configuration should remain separate from reusable logical capability definitions where practical.

Secrets and credentials should not be embedded in source-controlled implementation assets.

## Execution Profiles

Potential execution profiles include:

- Local development.
- Jupyter environment.
- VS Code environment.
- Eclipse Theia environment.
- GitLab Runner.
- Cloud runtime.
- VPS runtime.
- PaaS workspace.
- Authorized physical photonic backend.

The execution profile should identify where and how the Strawberry Fields workload was executed.

## Deployment

Strawberry Fields may be deployed as part of a Python-based photonic quantum execution environment.

Potential deployment models include:

    Developer Environment
          ↓
    Python / Strawberry Fields
          ↓
    Photonic Experiment

or:

    QAI Platform
          ↓
    Execution Environment
          ↓
    Python / Strawberry Fields
          ↓
    Backend
          ↓
    Results

Strawberry Fields itself does not define the deployment architecture.

## Experiment Management

Strawberry Fields experiments may be managed through the broader General Factory experiment-management architecture.

Potential information includes:

- Experiment identity.
- Run identity.
- Program identity.
- Program version.
- Parameters.
- Backend.
- Metrics.
- Results.
- Artifacts.

Supporting experiment-tracking systems may be integrated where appropriate.

## Results

Potential Strawberry Fields results include:

- Measurement results.
- Samples.
- State-related outputs where supported.
- Photonic mode information.
- Circuit metadata.
- Program metadata.
- Backend metadata.
- Execution metadata.
- Derived metrics.
- Experiment outputs.

Results should retain their relationship to the photonic program, experiment and execution that produced them.

## Evidence

Evidence may include:

- Photonic capability identity.
- Strawberry Fields implementation identity.
- Strawberry Fields version.
- Program definition.
- Program revision.
- Parameters.
- Backend identity.
- Simulation configuration.
- Resource identity.
- Execution identity.
- Measurement results.
- Validation results.

A representative chain is:

    Capability
        ↓
    Strawberry Fields
        ↓
    Photonic Program
        ↓
    Backend
        ↓
    Execution
        ↓
    Results
        ↓
    Evidence

## Provenance

Provenance should be maintained across the photonic quantum execution lifecycle.

A representative chain is:

    Requirement
        ↓
    Photonic Quantum Capability
        ↓
    Workflow
        ↓
    Photonic Program
        ↓
    Strawberry Fields
        ↓
    Backend
        ↓
    Execution
        ↓
    Results
        ↓
    Evidence

This supports reproducibility, validation and comparison between implementations.

## Reproducibility

Strawberry Fields experiments should preserve sufficient information to reproduce the intended computation where practical.

Potential information includes:

- Source revision.
- Strawberry Fields version.
- Python version.
- Environment.
- Photonic program definition.
- Parameters.
- Backend.
- Simulation configuration.
- Random seeds where applicable.
- Execution configuration.
- Results.

Exact reproducibility may depend on the selected backend and execution environment.

## Experimental Comparison

The implementation may support controlled comparisons between photonic quantum experiments.

Potential comparisons include:

- Different photonic circuits.
- Different parameter values.
- Different simulation configurations.
- Different backend configurations.
- Different photonic quantum algorithms.
- Different optimization strategies.
- Simulation versus physical execution where comparable data is available.
- Strawberry Fields versus other quantum implementations.

A representative structure is:

    Experiment Definition
          ↓
    Configuration Matrix
          ↓
    Execution Runs
          ↓
    Results
          ↓
    Comparison
          ↓
    Metrics
          ↓
    Evidence

## Factory Registry Integration

A logical photonic quantum capability may be resolved to Strawberry Fields through the Factory Registry.

For example:

    Capability ID
        ↓
    Factory Registry
        ↓
    Strawberry Fields Binding
        ↓
    Configuration
        ↓
    Resource Resolution
        ↓
    Execution

The registry should preserve implementation identity and version information where applicable.

## Connector and Adapter Integration

Connectors may provide access to execution environments or repositories.

Adapters may translate between:

- General Factory contracts.
- Photonic quantum contracts.
- Logical photonic circuit representations.
- Strawberry Fields program representations.
- Resource Fabric contracts.
- Results and evidence contracts.

The implementation-specific interface should remain behind the appropriate integration boundary.

## Validation

The reference implementation should be validated at multiple levels.

### Environment Validation

Confirm that the required Python and Strawberry Fields environment is available.

### Program Validation

Confirm that the intended photonic program can be constructed and represented correctly.

### Backend Validation

Confirm that the selected simulator, emulator or physical backend is available and correctly identified.

### Execution Validation

Confirm that the intended Strawberry Fields execution path operates correctly.

### Result Validation

Confirm that expected measurements or outputs are produced.

### Hybrid Validation

Where hybrid workflows are used, confirm that classical and photonic quantum stages interact through the intended contracts.

### Factory Validation

Confirm that the Strawberry Fields implementation can be resolved through the applicable Factory Registry.

### Resource Validation

Confirm that required execution resources can be resolved.

### Reproducibility Validation

Repeat the experiment where practical and compare outputs within appropriate tolerances.

### Evidence Validation

Confirm that the implementation, program, backend, execution and results remain traceable.

## Initial Demonstration

The first demonstration should establish a small photonic quantum workflow:

    Photonic Quantum Capability
            ↓
    Factory Registry
            ↓
    Strawberry Fields
            ↓
    Simple Photonic Program
            ↓
    Simulator / Backend
            ↓
    Measurement
            ↓
    Result
            ↓
    Evidence

A small program should be preferred for initial integration before introducing larger photonic workflows.

## Common Structure

- `configuration/` — Strawberry Fields and environment configuration.
- `samples/` — sample photonic programs and implementation assets.
- `workflows/` — photonic quantum workflow examples and execution definitions.
- `deployment/` — deployment examples and profiles.
- `execution/` — Strawberry Fields execution configuration and runtime examples.
- `results/` — sample simulation and execution results.
- `evidence/` — validation, provenance and evidence artifacts.

Actual Strawberry Fields assets should be added only when available and validated.

## Relationship to Other Quantum Implementations

Strawberry Fields is one member of the General Factory quantum reference-implementation family.

Potential related implementations include:

- Qiskit.
- Qiskit Aer.
- Cirq.
- PennyLane.
- Quantum emulation implementations.
- Other validated photonic or quantum simulation implementations.

The common logical capability should remain separate from the implementation-specific technology.

For example:

    Logical Quantum Capability
            ↓
       Factory Registry
            ↓
      ┌─────┼─────────────┐
      ↓     ↓             ↓
    Qiskit Cirq     Strawberry Fields
      ↓     ↓             ↓
    Results Results      Results

The actual logical capability should determine whether the implementation is compatible rather than assuming that all quantum frameworks provide identical execution semantics.

## Relationship to Photonic Simulation

Strawberry Fields may provide concrete implementations for photonic quantum simulation.

A representative flow is:

    Logical Photonic Capability
            ↓
    Strawberry Fields
            ↓
    Photonic Simulator
            ↓
    Simulation
            ↓
    Results

Simulation results should remain explicitly identified as simulated results.

## Relationship to Quantum Emulation

Photonic quantum emulation provides a different execution concept from ordinary simulation.

A simplified distinction is:

    Photonic Workload
        ├── Simulation
        │      ↓
        │  Strawberry Fields
        │
        ├── Device-like Emulation
        │      ↓
        │  Photonic Emulator
        │
        └── Physical Execution
               ↓
          Photonic Backend

The selected execution semantics should be captured in evidence.

## Relationship to Virtual-First Architecture

Strawberry Fields may support virtual-first photonic quantum development.

For example:

    Logical Photonic Capability
            ↓
    Virtual Quantum Asset
            ↓
    Photonic Program
            ↓
    Strawberry Fields
            ↓
    Simulation
            ↓
    Results
            ↓
    Validation
            ↓
    Promotion

This enables photonic quantum experimentation before physical resources are introduced.

## Relationship to QAI Platform

Strawberry Fields may be integrated into the QAI Platform.

For example:

    QAI Platform
          ↓
    Notebook / IDE
          ↓
    Photonic Quantum Workflow
          ↓
    Strawberry Fields
          ↓
    Simulator / Backend
          ↓
    Results / Evidence

The platform provides the engineering environment while Strawberry Fields provides the photonic quantum implementation.

## Relationship to PaaS

Strawberry Fields may be exposed through the General Factory PaaS.

For example:

    PaaS Workspace
        ↓
    Notebook / IDE
        ↓
    Photonic Quantum Workflow
        ↓
    Strawberry Fields
        ↓
    Resource Fabric
        ↓
    Execution
        ↓
    Results / Evidence

The PaaS provides the workspace and service environment while Strawberry Fields provides the implementation.

## Relationship to SaaS

A future SaaS capability may consume a validated photonic quantum service without exposing Strawberry Fields directly.

For example:

    SaaS Client
        ↓
    Photonic Quantum Service
        ↓
    General Factory
        ↓
    Strawberry Fields
        ↓
    Execution
        ↓
    Results

The implementation technology may remain behind the logical capability boundary.

## Relationship to Micro-Frontends

Strawberry Fields-related execution may be presented through:

- Workflow Views.
- Resource Views.
- Results Views.
- Evidence Views.
- Client Views.

The UI remains separate from the photonic execution authority.

## Relationship to Workflow Views

Workflow Views may represent a Strawberry Fields workflow visually.

For example:

    Input
      ↓
    Photonic Program
      ↓
    Strawberry Fields
      ↓
    Backend
      ↓
    Measurement
      ↓
    Results

The visual representation remains a presentation and interaction layer.

The logical workflow model remains the semantic authority.

## Relationship to Resource Views

Resource Views may present:

- Simulation resources.
- CPU resources.
- GPU resources where applicable.
- HPC resources.
- Cloud environments.
- Photonic backend information.
- Execution state.
- Resource utilization.

Resource Views remain presentation components. Resource resolution remains the responsibility of the Resource Fabric.

## Security Considerations

Relevant considerations include:

- Source access control.
- Repository access control.
- Notebook access control.
- Experiment access control.
- Execution authorization.
- Resource authorization.
- Backend authorization.
- Secret management.
- Dependency management.
- Runtime isolation.
- Audit logging.
- Result access control.

The Strawberry Fields implementation should not bypass applicable platform and factory security controls.

## IP and Provenance Considerations

Strawberry Fields is an external technology implementation.

The General Factory reference implementation should preserve the identity and provenance of the underlying technology.

Original QAI-specific:

- Photonic workflow patterns.
- Factory mappings.
- Integration contracts.
- Adapters.
- Configuration profiles.
- Experiment designs.
- Validation assets.
- Evidence structures.

should remain distinguishable from the underlying third-party technology.

## Scope

### In Scope

- Strawberry Fields integration.
- Photonic quantum circuit/program construction.
- Continuous-variable quantum workflows.
- Photonic mode representation.
- Photonic quantum operations.
- Parameterized photonic programs.
- Photonic quantum simulation.
- Quantum experiments.
- Hybrid quantum-classical workflows.
- Quantum machine learning experiments where supported.
- Workflow integration.
- Notebook integration.
- QAI Lab integration.
- Resource Fabric integration.
- Backend integration.
- Results.
- Evidence.
- Provenance.
- Reproducibility.
- Factory Registry integration.
- PaaS integration.
- SaaS integration.
- QAI Platform integration.
- Virtual-first experimentation.

### Out of Scope

The initial reference implementation does not attempt to provide:

- A replacement for the General Framework.
- A replacement for the General Factory.
- A complete photonic quantum-computing platform.
- A universal photonic backend.
- A physical photonic quantum computer.
- A complete photonic emulator.
- Automatic physical photonic execution.
- Claims that simulation equals physical photonic execution.
- A complete quantum workflow engine.
- A complete quantum resource-management platform.
- A replacement for Strawberry Fields itself.
- Automatic equivalence between simulated and physical results.

These capabilities remain represented by the appropriate framework, factory and reference-implementation components.

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
11. Keep Strawberry Fields-specific semantics within the implementation boundary.
12. Keep logical photonic quantum capabilities independent of Strawberry Fields.
13. Preserve photonic program, implementation, backend and execution identity.
14. Record the actual execution technology and backend.
15. Preserve reproducibility information.
16. Do not represent simulation results as physical photonic execution results.
17. Preserve the distinction between photonic and other quantum implementation models.
18. Keep provider-specific backend details behind appropriate connectors or adapters.
19. Do not assume that photonic and gate-based quantum implementations have identical execution semantics.
20. Reuse common quantum capability contracts where applicable.
21. Promote validated Strawberry Fields patterns into reusable Factory capabilities only after sufficient validation.

## Promotion Path

The Strawberry Fields reference implementation may progress through:

    Strawberry Fields Environment
        ↓
    Simple Photonic Program
        ↓
    Validated Simulation
        ↓
    Photonic Quantum Experiment
        ↓
    Workflow Integration
        ↓
    Factory Registry Integration
        ↓
    Backend / Resource Integration
        ↓
    Results / Evidence Integration
        ↓
    Reusable Photonic Quantum Reference
        ↓
    General Factory Capability Binding

Promotion should be based on demonstrated execution, reproducibility, validation, provenance and architectural fit.

## Future Extensions

Potential extensions include:

- Photonic circuit templates.
- Continuous-variable workflow templates.
- Parameterized photonic programs.
- Photonic simulation profiles.
- Noise and device-effect modelling where supported.
- Quantum machine learning experiments.
- Hybrid AI/photonic workflows.
- Jupyter integration.
- Visual workflow integration.
- QAI Platform integration.
- GitHub integration.
- GitLab integration.
- GitLab Runner integration.
- Resource-aware photonic simulation.
- Experiment tracking.
- Automated evidence packaging.
- Program provenance.
- Experiment lineage.
- Comparative experiments with Qiskit.
- Comparative experiments with Cirq.
- Comparative experiments with PennyLane.
- Photonic quantum emulation.
- Physical photonic backend integration where available.
- PaaS photonic quantum workspace integration.

These capabilities should be introduced incrementally as validated reference implementations.

## Status

Reference structure established.

Strawberry Fields is positioned as a concrete photonic quantum computing implementation within the General Factory quantum reference-implementation family.

Actual Strawberry Fields programs, configurations, workflows, deployment assets, execution results and evidence should be added only when available and validated.

---

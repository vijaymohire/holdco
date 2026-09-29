# Qiskit

Reference implementation for the General Factory.

## Reference ID

REF-QUANTUM-QISKIT-001

## Purpose

Reference implementation for quantum circuit and quantum computing workflows.

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
# Qiskit

Reference implementation for the General Factory.

## Reference ID

REF-QUANTUM-QISKIT-001

## Purpose

Reference implementation for quantum circuit and quantum computing workflows.

This reference implementation provides a concrete technology integration for quantum circuit development, experimentation, simulation and quantum-computing workflows within the General Factory.

Qiskit may be used to demonstrate:

- Quantum circuit construction.
- Qubit and quantum-register representation.
- Quantum gate operations.
- Circuit composition.
- Parameterized circuits.
- Measurement.
- Quantum experiments.
- Circuit simulation.
- Backend-oriented execution.
- Hybrid quantum-classical workflows.
- Notebook-based quantum development.
- Workflow integration.
- QAI experimentation.

Qiskit is treated as a technology-specific implementation rather than the definition of the General Framework.

## Architectural Role

This reference implementation demonstrates how a technology, sample, external system, development environment, resource, workflow or execution capability can participate in the General Factory.

The reference implementation does not redefine the General Framework. It provides an implementation reference that can be resolved through Factory capabilities, registries, connectors, adapters and runtime services.

A representative relationship is:

    General Framework
            ↓
    Quantum Capability
            ↓
    Factory Registry
            ↓
    Qiskit Reference Implementation
            ↓
    Connector / Adapter
            ↓
    Qiskit Runtime / Execution Environment
            ↓
    Execution
            ↓
    Results
            ↓
    Evidence

Qiskit therefore represents one possible implementation of a logical quantum capability.

## Logical Quantum Capability

The logical quantum capability should remain independent of Qiskit.

For example:

    Logical Quantum Circuit Execution
            ↓
    Factory Resolution
            ↓
    Qiskit Implementation
            ↓
    Circuit Construction
            ↓
    Simulation / Backend Execution
            ↓
    Results

Another compatible quantum implementation may be resolved for the same logical capability.

This separation supports technology portability and comparative experimentation.

## Qiskit Implementation

The Qiskit reference implementation may provide:

- Quantum circuit construction.
- Quantum-register and qubit representation.
- Classical-register representation.
- Quantum gates and operations.
- Circuit composition.
- Circuit parameterization.
- Measurement.
- Circuit inspection.
- Circuit execution.
- Simulation through compatible backends.
- Integration with quantum-computing workflows.

The exact implementation should remain associated with the Qiskit technology identity and version used.

## Quantum Circuit Construction

A typical conceptual flow is:

    Qubits
      ↓
    Gates / Operations
      ↓
    Circuit
      ↓
    Measurement
      ↓
    Backend
      ↓
    Execution
      ↓
    Results

The circuit should remain identifiable as an implementation artifact.

## Quantum and Classical Registers

Quantum workflows may involve both quantum and classical information.

A simplified conceptual model is:

    Quantum Register
          ↓
    Quantum Operations
          ↓
    Measurement
          ↓
    Classical Register
          ↓
    Results

The implementation-specific register model should remain separate from the General Factory logical capability model.

## Circuit Representation

A circuit may be represented as an ordered sequence of quantum and classical operations.

Conceptually:

    Qubit 0 ── Gate ─────── Gate ── Measure
    Qubit 1 ─────── Gate ── Gate ── Measure
                                      ↓
                                  Classical Result

The visual or textual representation is an implementation representation of the logical quantum workflow.

## Parameterized Circuits

Qiskit may be used to construct parameterized circuits.

A representative flow is:

    Circuit Template
          ↓
    Parameter Values
          ↓
    Circuit Binding
          ↓
    Backend
          ↓
    Execution
          ↓
    Results

Parameter values should be captured where they materially affect experiment reproducibility.

## Quantum Simulation

Qiskit may participate in quantum circuit simulation through compatible simulation implementations.

A representative path is:

    Quantum Circuit
          ↓
    Qiskit
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

They should not be represented as physical QPU execution results.

## Qiskit Aer Relationship

Where Qiskit Aer is used as the simulation implementation, it should remain separately identifiable from the general Qiskit reference.

A representative relationship is:

    Logical Quantum Capability
            ↓
    Qiskit Implementation
            ↓
    Qiskit Aer
            ↓
    Simulation
            ↓
    Results
            ↓
    Evidence

The Qiskit and Qiskit Aer reference implementations therefore remain related but independently identifiable.

## Simulation and Physical Execution

The implementation should preserve the distinction between:

- Circuit simulation.
- Quantum emulation where applicable.
- Physical QPU execution.

A simplified model is:

    Logical Quantum Circuit
            ↓
       Factory Resolution
            ↓
      ┌─────┼──────────────┐
      ↓     ↓              ↓
    Qiskit Emulator       QPU
    Simulator Backend   Backend
      ↓     ↓              ↓
    Results Results       Results

The actual execution target should be recorded in evidence.

## Quantum Backend Relationship

Qiskit circuits may be executed against different compatible backend implementations.

A representative architecture is:

    Logical Quantum Capability
            ↓
       Factory Registry
            ↓
       Qiskit Binding
            ↓
       Backend Selection
        ┌────┼──────────┐
        ↓    ↓          ↓
    Simulator Emulator  QPU
        ↓    ↓          ↓
     Results Results   Results

The actual backend used must remain explicit in configuration and evidence.

## Physical Quantum Execution

Where a physical quantum backend is available and authorized, Qiskit may participate in physical quantum execution.

A representative path is:

    Logical Quantum Capability
            ↓
    General Factory
            ↓
    Qiskit Implementation
            ↓
    Backend Adapter
            ↓
    Physical QPU
            ↓
    Execution
            ↓
    Results
            ↓
    Evidence

The actual physical backend and execution environment must be recorded.

Qiskit itself should not be treated as evidence that physical QPU execution occurred.

## Hybrid Quantum-Classical Workflows

Qiskit may participate in hybrid workflows.

For example:

    Classical Input
          ↓
    Classical Pre-processing
          ↓
    Qiskit Circuit
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

The classical and quantum components should remain separately identifiable.

## AI / Quantum Relationship

Qiskit may participate in broader AI/quantum workflows.

For example:

    Data
      ↓
    AI / ML Processing
      ↓
    Feature / Parameter Preparation
      ↓
    Qiskit Quantum Circuit
      ↓
    Quantum Backend
      ↓
    Measurement
      ↓
    Classical Analysis
      ↓
    Results
      ↓
    Evidence

The AI/ML and quantum implementations should remain separately identifiable.

## Workflow Integration

Qiskit may be invoked as part of a General Factory workflow.

A representative path is:

    Workflow
        ↓
    Quantum Capability
        ↓
    Factory Registry
        ↓
    Qiskit Binding
        ↓
    Circuit Construction
        ↓
    Simulation / Backend Execution
        ↓
    Results
        ↓
    Evidence

The workflow layer should use logical capability contracts rather than hard-code Qiskit-specific assumptions where practical.

## Notebook Integration

Qiskit may be used from Jupyter and other notebook environments.

A representative relationship is:

    Jupyter Notebook
          ↓
    Quantum Experiment
          ↓
    Qiskit
          ↓
    Simulator / Backend
          ↓
    Results
          ↓
    Analysis
          ↓
    Evidence

The notebook remains the experiment-development environment while Qiskit provides the quantum implementation.

## QAI Lab Integration

Qiskit may participate in QAI Lab experiments.

For example:

    QAI Lab Experiment
          ↓
    Quantum Workflow
          ↓
    Qiskit
          ↓
    Simulator / Emulator / QPU
          ↓
    Results
          ↓
    Evidence

This provides one possible quantum implementation for QAI experimentation and validation.

## Resource Fabric Integration

Qiskit workloads may require computational or quantum resources.

Potential resources include:

- CPU.
- GPU where supported by the implementation.
- HPC.
- Virtual compute.
- Cloud compute.
- QPU resources.

A representative relationship is:

    Qiskit Workload
          ↓
    Resource Requirement
          ↓
    Resource Fabric
          ↓
    Resource Resolution
          ↓
    Qiskit Runtime / Backend
          ↓
    Execution

The Resource Fabric remains responsible for resource resolution.

## Backend Abstraction

Qiskit should remain behind a logical quantum capability boundary.

For example:

    Logical Quantum Capability
            ↓
       Factory Registry
            ↓
       Implementation Binding
            ↓
          Qiskit
            ↓
       Backend Adapter
            ↓
      Execution Backend
            ↓
         Results

This allows backend-specific differences to be isolated behind appropriate connectors or adapters.

## Configuration

Potential configuration includes:

- Qiskit version.
- Python environment.
- Circuit identity.
- Workflow identity.
- Experiment identity.
- Backend identity.
- Simulator configuration.
- Parameters.
- Resource requirements.
- Execution profile.
- Output handling.

Configuration should remain separate from reusable logical capability definitions where practical.

Secrets and credentials should not be embedded in source-controlled circuit or notebook assets.

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
- Authorized physical quantum backend.

The execution profile should identify where and how the Qiskit workload was executed.

## Deployment

Qiskit may be deployed as part of a Python-based quantum execution environment.

Potential deployment models include:

    Developer Environment
          ↓
    Python / Qiskit
          ↓
    Quantum Experiment

or:

    QAI Platform
          ↓
    Execution Environment
          ↓
    Python / Qiskit
          ↓
    Backend
          ↓
    Experiment

Qiskit itself does not define the deployment architecture.

## Experiment Management

Qiskit experiments may be managed through the broader General Factory experiment-management architecture.

Potential information includes:

- Experiment identity.
- Run identity.
- Circuit identity.
- Circuit version.
- Parameters.
- Backend.
- Metrics.
- Results.
- Artifacts.

Supporting experiment-tracking systems may be integrated where appropriate.

## Results

Potential Qiskit execution results include:

- Measurement results.
- Counts or samples.
- State-related outputs where supported by the selected backend.
- Circuit metadata.
- Backend metadata.
- Execution metadata.
- Derived metrics.
- Experiment outputs.

Results should retain their relationship to the circuit, experiment and execution that produced them.

## Evidence

Evidence may include:

- Quantum capability identity.
- Qiskit implementation identity.
- Qiskit version.
- Circuit definition.
- Circuit revision.
- Parameters.
- Backend identity.
- Simulator configuration.
- Resource identity.
- Execution identity.
- Measurement results.
- Validation results.

A representative chain is:

    Capability
        ↓
    Qiskit Implementation
        ↓
    Circuit
        ↓
    Backend
        ↓
    Execution
        ↓
    Results
        ↓
    Evidence

## Provenance

Provenance should be maintained across the quantum execution lifecycle.

A representative chain is:

    Requirement
        ↓
    Quantum Capability
        ↓
    Workflow
        ↓
    Circuit
        ↓
    Qiskit Implementation
        ↓
    Backend
        ↓
    Execution
        ↓
    Results
        ↓
    Evidence

This supports reproducibility, validation and comparison between quantum implementations.

## Reproducibility

Qiskit experiments should preserve sufficient information to reproduce the intended computation where practical.

Potential information includes:

- Source revision.
- Qiskit version.
- Python version.
- Environment.
- Circuit definition.
- Parameters.
- Backend.
- Simulator configuration.
- Random seeds where applicable.
- Execution configuration.
- Results.

Exact reproducibility may depend on the selected backend and execution environment.

## Validation

The reference implementation should be validated at multiple levels.

### Environment Validation

Confirm that the required Python and Qiskit environment is available.

### Circuit Validation

Confirm that the circuit can be constructed and represented correctly.

### Backend Validation

Confirm that the intended simulator, emulator or physical backend is available and correctly identified.

### Execution Validation

Confirm that the intended Qiskit execution path operates correctly.

### Result Validation

Confirm that expected measurements or outputs are produced.

### Factory Validation

Confirm that the Qiskit implementation can be resolved through the applicable Factory Registry.

### Resource Validation

Confirm that required execution resources can be resolved.

### Reproducibility Validation

Repeat the experiment where practical and compare outputs within appropriate tolerances.

### Evidence Validation

Confirm that the implementation, circuit, backend, execution and results remain traceable.

## Initial Demonstration

The first demonstration should establish a small quantum circuit:

    Quantum Capability
          ↓
    Factory Registry
          ↓
    Qiskit Implementation
          ↓
    Simple Circuit
          ↓
    Simulator / Backend
          ↓
    Measurement
          ↓
    Result
          ↓
    Evidence

A small circuit should be preferred for initial integration before introducing larger hybrid workflows.

## Common Structure

- `configuration/` — Qiskit and environment configuration.
- `samples/` — sample Qiskit circuits and implementation assets.
- `workflows/` — quantum workflow examples and execution definitions.
- `deployment/` — deployment examples and profiles.
- `execution/` — Qiskit execution configuration and runtime examples.
- `results/` — sample simulation and execution results.
- `evidence/` — validation, provenance and evidence artifacts.

Actual Qiskit assets should be added only when available and validated.

## Relationship to Qiskit Aer

Qiskit Aer is a related implementation for quantum-circuit simulation.

A representative relationship is:

    Logical Quantum Capability
            ↓
    Qiskit
            ↓
    Qiskit Aer
            ↓
    Simulation
            ↓
    Results

Qiskit provides the broader quantum development and circuit environment, while Qiskit Aer may provide a specific simulation implementation.

The two reference implementations should preserve their individual identities.

## Relationship to Other Quantum Implementations

Qiskit is one member of the General Factory quantum reference-implementation family.

Potential sibling implementations include:

- Cirq.
- PennyLane.
- Strawberry Fields.
- Qiskit Aer as a related simulation implementation.

The common logical capability should remain separate from the implementation-specific technology.

For example:

    Logical Quantum Capability
            ↓
       Factory Registry
            ↓
      ┌─────┼───────────┐
      ↓     ↓           ↓
    Qiskit Cirq      PennyLane
      ↓     ↓           ↓
    Runtime Runtime   Runtime
      ↓     ↓           ↓
    Results Results   Results

This supports comparative experimentation and implementation portability.

## Relationship to Quantum Emulation

The quantum emulation reference implementation provides a different execution concept from circuit simulation.

The distinction may be represented as:

    Quantum Workload
        ├── Circuit Simulation
        │       ↓
        │     Qiskit
        │
        ├── Device-like Emulation
        │       ↓
        │     Quantum Emulator
        │
        └── Physical Execution
                ↓
              QPU

The selected execution semantics should be captured in evidence.

## Relationship to Quantum Simulation

Qiskit may provide circuit implementations that are executed through compatible simulation technologies.

The General Factory should distinguish:

- Logical quantum capability.
- Circuit implementation.
- Qiskit implementation.
- Simulation backend.
- Execution backend.

Simulation results should remain explicitly identified.

## Relationship to Virtual-First Architecture

Qiskit-based simulation may participate in a virtual-first development process.

For example:

    Logical Quantum Capability
            ↓
    Virtual Quantum Asset
            ↓
    Qiskit Circuit
            ↓
    Simulation
            ↓
    Results
            ↓
    Validation
            ↓
    Promotion

This supports early quantum experimentation before physical quantum resources are introduced.

## Relationship to QAI Platform

Qiskit may be integrated into the QAI Platform.

For example:

    QAI Platform
          ↓
    Notebook / IDE
          ↓
    Quantum Workflow
          ↓
    Qiskit
          ↓
    Simulator / Backend
          ↓
    Results / Evidence

The platform provides the engineering environment while Qiskit provides the quantum implementation.

## Relationship to PaaS

Qiskit may be exposed through the General Factory PaaS.

For example:

    PaaS Workspace
        ↓
    Notebook / IDE
        ↓
    Quantum Workflow
        ↓
    Qiskit
        ↓
    Backend
        ↓
    Results / Evidence

The PaaS provides the development and service environment while Qiskit provides the quantum implementation.

## Relationship to SaaS

A future SaaS capability may consume a validated quantum workflow without exposing Qiskit directly.

For example:

    SaaS Client
        ↓
    Quantum Service
        ↓
    General Factory
        ↓
    Quantum Implementation
        ↓
    Qiskit
        ↓
    Results

The implementation technology may remain behind the logical capability boundary.

## Relationship to Micro-Frontends

Qiskit-related execution may be presented through:

- Workflow Views.
- Resource Views.
- Results Views.
- Evidence Views.
- Client Views.

The UI remains separate from the Qiskit implementation and execution authority.

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

The Qiskit implementation should not bypass applicable platform and factory security controls.

## IP and Provenance Considerations

Qiskit is an external technology implementation.

The General Factory reference implementation should preserve the identity and provenance of the underlying technology.

Original QAI-specific:

- Workflow patterns.
- Integration contracts.
- Factory mappings.
- Adapters.
- Configurations.
- Validation assets.
- Experiment designs.
- Evidence structures.

should remain distinguishable from the underlying third-party technology.

## Scope

### In Scope

- Qiskit integration.
- Quantum circuit construction.
- Quantum-register and qubit representation.
- Classical-register integration.
- Circuit parameterization.
- Quantum circuit execution.
- Quantum circuit simulation through compatible implementations.
- Quantum experiments.
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
- A complete quantum-computing platform.
- A universal quantum backend.
- A complete quantum emulator.
- A physical QPU.
- A replacement for Qiskit itself.
- Automatic physical quantum execution.
- Claims that circuit simulation equals physical QPU execution.
- A complete quantum workflow engine.
- A complete quantum resource-management platform.

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
11. Keep Qiskit-specific semantics within the implementation boundary.
12. Keep logical quantum capabilities independent from Qiskit.
13. Preserve circuit, implementation, backend and execution identity.
14. Record the actual execution technology and backend.
15. Preserve reproducibility information.
16. Do not represent simulation results as physical execution results.
17. Keep Qiskit and Qiskit Aer implementation identities distinguishable.
18. Reuse common quantum capability contracts where applicable.
19. Keep provider-specific backend details behind appropriate connectors or adapters.
20. Promote validated Qiskit patterns into reusable factory capabilities only after sufficient validation.

## Promotion Path

The Qiskit reference implementation may progress through:

    Qiskit Environment
        ↓
    Simple Circuit
        ↓
    Validated Simulation
        ↓
    Quantum Experiment
        ↓
    Workflow Integration
        ↓
    Factory Registry Integration
        ↓
    Backend / Resource Integration
        ↓
    Results / Evidence Integration
        ↓
    Reusable Quantum Reference Implementation
        ↓
    General Factory Capability Binding

Promotion should be based on demonstrated execution, reproducibility, validation, provenance and architectural fit.

## Future Extensions

Potential extensions include:

- Qiskit circuit templates.
- Parameterized circuit templates.
- Qiskit Aer integration.
- Jupyter integration.
- Workflow integration.
- Visual circuit integration.
- QAI Platform integration.
- GitHub integration.
- GitLab integration.
- GitLab Runner integration.
- Resource-aware simulation.
- Noise-aware experiments.
- Hybrid AI/quantum workflows.
- Quantum optimization experiments.
- Backend abstraction.
- Physical quantum backend integration where available.
- Comparative experiments with Cirq.
- Comparative experiments with PennyLane.
- Comparative experiments with Strawberry Fields.
- Quantum emulator integration.
- Automated evidence packaging.
- Experiment lineage.
- Circuit provenance.
- Resource utilization analysis.
- Performance comparison.
- PaaS quantum workspace integration.

These capabilities should be introduced incrementally as validated reference implementations.

## Status

Reference structure established.

Qiskit is positioned as a concrete quantum circuit and quantum-computing implementation within the General Factory quantum reference-implementation family.

Actual Qiskit circuits, configurations, workflows, deployment assets, execution results and evidence should be added only when available and validated.
---

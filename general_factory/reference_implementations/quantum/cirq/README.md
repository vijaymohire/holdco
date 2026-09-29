# Cirq

Reference implementation for the General Factory.

## Reference ID

REF-QUANTUM-CIRQ-001

## Purpose

Reference implementation for quantum circuit construction and simulation.

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
# Cirq

Reference implementation for the General Factory.

## Reference ID

REF-QUANTUM-CIRQ-001

## Purpose

Reference implementation for quantum circuit construction and simulation using Cirq.

This reference implementation provides a concrete technology integration for quantum circuit development within the General Factory.

Cirq may be used to demonstrate:

- Quantum circuit construction.
- Quantum gate operations.
- Qubit definitions.
- Circuit composition.
- Circuit inspection.
- Circuit simulation.
- Measurement.
- Parameterized circuits.
- Quantum experiment development.
- Hybrid quantum-classical experimentation.
- Integration with notebook-based workflows.
- Integration with QAI workflows.

Cirq is treated as a technology-specific implementation rather than the definition of the General Framework.

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
    Cirq Reference Implementation
            ↓
    Connector / Adapter
            ↓
    Cirq Runtime
            ↓
    Execution
            ↓
    Results
            ↓
    Evidence

Cirq therefore represents one possible implementation of a quantum capability.

## Quantum Capability

A logical quantum capability should remain independent of Cirq.

For example:

    Logical Quantum Circuit Execution
            ↓
    Factory Resolution
            ↓
    Cirq Implementation
            ↓
    Circuit Construction
            ↓
    Simulation
            ↓
    Results

Another implementation could be resolved for the same logical capability where its contract is compatible.

This separation supports technology portability.

## Cirq Implementation

The Cirq reference implementation may provide:

- Qubit representation.
- Quantum gates.
- Circuit construction.
- Circuit transformation.
- Measurement.
- Parameterization.
- Simulation.
- Result extraction.

The exact implementation should remain associated with the Cirq technology identity and version used.

## Circuit Construction

A typical conceptual flow is:

    Qubits
      ↓
    Gates
      ↓
    Operations
      ↓
    Circuit
      ↓
    Execution
      ↓
    Measurement
      ↓
    Results

The circuit should remain identifiable as an implementation artifact.

## Qubit Model

Cirq supports representations of quantum bits used by a circuit.

Within the General Factory, the logical quantum resource should remain separate from the Cirq-specific representation.

A representative relationship is:

    Logical Qubit Requirement
            ↓
    Factory Resolution
            ↓
    Cirq Qubit
            ↓
    Circuit
            ↓
    Execution

The implementation should preserve the distinction between logical quantum resources and technology-specific objects.

## Quantum Gates

Cirq circuits may contain quantum gate operations.

Examples may include:

- Single-qubit operations.
- Multi-qubit operations.
- Measurement operations.
- Parameterized operations.

The specific gate set should be captured as part of the circuit or experiment definition where relevant.

## Circuit Representation

A circuit may be represented as a sequence of operations over qubits.

Conceptually:

    Qubit 0 ── Gate ─────── Gate ── Measure
    Qubit 1 ─────── Gate ── Gate ── Measure

The visual or textual representation is an implementation representation of the logical quantum workflow.

## Circuit Simulation

Cirq may be used to simulate quantum circuits.

A representative flow is:

    Quantum Circuit
          ↓
    Cirq Simulator
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

## Simulation and Physical Execution

The implementation should preserve the distinction between:

- Circuit simulation.
- Quantum emulation where applicable.
- Physical quantum execution.

A simplified model is:

    Logical Quantum Circuit
            ↓
       Factory Resolution
            ↓
      ┌─────┼──────────────┐
      ↓     ↓              ↓
    Cirq   Emulator       QPU
    Sim.   Backend       Backend
      ↓     ↓              ↓
    Results Results       Results

The actual execution target should be recorded in evidence.

## Cirq Simulator

The Cirq implementation may use supported Cirq simulation facilities for local or controlled quantum circuit execution.

Potential outputs may include:

- Measurement results.
- State information where supported.
- Simulation metadata.
- Execution metadata.
- Derived metrics.

The exact result representation depends on the circuit and simulation method.

## Parameterized Circuits

Cirq may support circuits containing parameters.

A conceptual workflow is:

    Circuit Template
          ↓
    Parameter Values
          ↓
    Circuit Resolution
          ↓
    Simulation
          ↓
    Results

Parameter values should be recorded where they materially affect experiment reproducibility.

## Quantum Experiments

Cirq may be used as the implementation engine for quantum experiments.

A representative experiment is:

    Experiment Definition
          ↓
    Circuit Construction
          ↓
    Parameters
          ↓
    Cirq Execution
          ↓
    Measurements
          ↓
    Analysis
          ↓
    Evidence

The experiment definition should remain independently identifiable from the Cirq implementation.

## Hybrid Quantum-Classical Workflows

Cirq may participate in hybrid workflows.

For example:

    Classical Input
          ↓
    Classical Pre-processing
          ↓
    Cirq Circuit
          ↓
    Quantum Simulation
          ↓
    Measurement
          ↓
    Classical Post-processing
          ↓
    Result

This enables Cirq to participate in broader QAI workflows without making Cirq the workflow authority.

## AI / Quantum Relationship

Cirq may be used within hybrid AI/quantum experiments.

For example:

    Data
      ↓
    AI / ML Processing
      ↓
    Quantum Circuit
      ↓
    Cirq Simulation
      ↓
    Measurement
      ↓
    Classical Analysis
      ↓
    Results

The AI/ML and quantum implementations should remain separately identifiable.

## Workflow Integration

Cirq may be invoked as a workflow implementation.

A representative path is:

    Workflow
        ↓
    Quantum Capability
        ↓
    Factory Registry
        ↓
    Cirq Binding
        ↓
    Circuit Construction
        ↓
    Simulation / Execution
        ↓
    Results
        ↓
    Evidence

The workflow layer should not hard-code Cirq-specific assumptions where a logical capability can be used instead.

## Notebook Integration

Cirq may be used from Jupyter or other notebook environments.

A representative relationship is:

    Jupyter Notebook
          ↓
    Quantum Experiment
          ↓
    Cirq
          ↓
    Simulation
          ↓
    Results
          ↓
    Evidence

The notebook remains the experiment-development environment while Cirq provides the quantum implementation.

## QAI Lab Integration

Cirq may participate in the QAI Lab reference implementation.

For example:

    QAI Lab Experiment
          ↓
    Quantum Workflow
          ↓
    Cirq
          ↓
    Simulation
          ↓
    Results
          ↓
    Evidence

This provides one possible quantum implementation for experimentation and validation.

## Quantum Emulation Relationship

Where the General Factory requires device-like quantum behaviour rather than circuit simulation, a quantum emulation implementation may be used instead.

A representative distinction is:

    Quantum Circuit
        ├── Cirq Simulation
        ├── Quantum Emulator
        └── Physical QPU

Cirq simulation should not automatically be classified as device emulation.

The applicable execution semantics should remain explicit.

## Resource Fabric Integration

Cirq execution may require computational resources.

Potential resources include:

- CPU.
- GPU where supported by the implementation.
- HPC.
- Virtual compute.
- Cloud compute.

A representative relationship is:

    Cirq Workload
          ↓
    Resource Requirement
          ↓
    Resource Fabric
          ↓
    Resource Resolution
          ↓
    Cirq Runtime
          ↓
    Execution

The Resource Fabric remains responsible for resource resolution.

## Backend Abstraction

A logical quantum capability may be implemented through different backends.

For example:

    Quantum Capability
            ↓
    Factory Registry
            ↓
      Backend Binding
       ┌────┼─────┐
       ↓    ↓     ↓
     Cirq  Other  QPU
      ↓    Impl.   ↓
    Result Result Result

Cirq should therefore be treated as one implementation binding rather than the universal quantum backend.

## Configuration

Potential configuration includes:

- Cirq version.
- Python environment.
- Circuit identity.
- Experiment identity.
- Workflow identity.
- Simulator configuration.
- Parameters.
- Resource requirements.
- Execution profile.
- Output handling.

Configuration should be separated from reusable logical capability definitions where practical.

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

The execution profile should identify where and how the Cirq workload was executed.

## Deployment

Cirq may be deployed as part of a broader Python-based execution environment.

Potential deployment models include:

    Developer Environment
          ↓
    Python / Cirq
          ↓
    Experiment

or:

    QAI Platform
          ↓
    Execution Environment
          ↓
    Python / Cirq
          ↓
    Experiment

The Cirq implementation itself does not define the deployment architecture.

## Results

Potential Cirq execution results include:

- Measurement samples.
- State-related outputs where applicable.
- Circuit metadata.
- Parameter values.
- Execution metadata.
- Derived metrics.
- Experiment outputs.

Results should retain their relationship to the circuit, experiment and execution.

## Evidence

Evidence may include:

- Quantum capability identity.
- Cirq implementation identity.
- Cirq version.
- Circuit definition.
- Circuit revision.
- Parameters.
- Simulator configuration.
- Resource identity.
- Execution identity.
- Measurement results.
- Validation results.

A representative chain is:

    Capability
        ↓
    Cirq Implementation
        ↓
    Circuit
        ↓
    Runtime
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
    Cirq Implementation
        ↓
    Runtime
        ↓
    Execution
        ↓
    Results
        ↓
    Evidence

This supports reproducibility and comparison between different implementations.

## Reproducibility

Cirq experiments should preserve sufficient information to reproduce the intended computation where practical.

Potential information includes:

- Source revision.
- Cirq version.
- Python version.
- Environment.
- Circuit definition.
- Parameters.
- Simulator configuration.
- Random seeds where applicable.
- Execution configuration.
- Results.

Exact reproducibility may depend on the selected simulation method and runtime environment.

## Validation

The reference implementation should be validated at multiple levels.

### Environment Validation

Confirm that the required Python and Cirq environment is available.

### Circuit Validation

Confirm that the circuit can be constructed and represented correctly.

### Execution Validation

Confirm that the intended Cirq execution or simulation path operates correctly.

### Result Validation

Confirm that expected measurements or outputs are produced.

### Reproducibility Validation

Repeat the experiment where practical and compare outputs within appropriate tolerances.

### Factory Validation

Confirm that the Cirq implementation can be resolved through the applicable Factory Registry.

### Resource Validation

Confirm that required execution resources can be resolved.

### Evidence Validation

Confirm that the implementation, circuit, runtime and results remain traceable.

## Initial Demonstration

The first demonstration should establish a small quantum circuit:

    Quantum Capability
          ↓
    Factory Registry
          ↓
    Cirq Implementation
          ↓
    Simple Circuit
          ↓
    Cirq Simulator
          ↓
    Measurement
          ↓
    Result
          ↓
    Evidence

A simple circuit should be preferred for initial integration before introducing larger hybrid workloads.

## Common Structure

- `configuration/` — Cirq and environment configuration.
- `samples/` — sample Cirq circuits and implementation assets.
- `workflows/` — quantum workflow examples and execution definitions.
- `deployment/` — deployment examples and profiles.
- `execution/` — Cirq execution configuration and runtime examples.
- `results/` — sample simulation and execution results.
- `evidence/` — validation, provenance and evidence artifacts.

Actual Cirq assets should be added only when available and validated.

## Relationship to Other Quantum Implementations

Cirq is one member of the General Factory quantum reference-implementation family.

Potential sibling implementations include:

- Qiskit.
- Qiskit Aer.
- PennyLane.
- Strawberry Fields.

The common logical capability should remain separate from the implementation-specific technology.

For example:

    Logical Quantum Capability
            ↓
       Factory Registry
            ↓
      ┌─────┼───────────┐
      ↓     ↓           ↓
    Cirq  Qiskit     PennyLane
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
        │     Cirq
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

Cirq may provide a concrete implementation for quantum circuit simulation.

A broader simulation family may contain other simulation technologies.

The General Factory should therefore distinguish:

- Simulation capability.
- Simulation technology.
- Circuit implementation.
- Execution backend.

## Relationship to Virtual-First Architecture

Cirq simulation may participate in a virtual-first development process.

For example:

    Logical Quantum Capability
            ↓
    Virtual Quantum Asset
            ↓
    Circuit
            ↓
    Cirq Simulation
            ↓
    Results
            ↓
    Validation
            ↓
    Promotion

This supports early experimentation before physical quantum resources are introduced.

## Relationship to PaaS

Cirq may be exposed through the General Factory PaaS.

For example:

    PaaS Workspace
        ↓
    Notebook / IDE
        ↓
    Quantum Workflow
        ↓
    Cirq
        ↓
    Simulation
        ↓
    Results / Evidence

The PaaS provides the development environment while Cirq provides the quantum implementation.

## Relationship to SaaS

A future SaaS capability may consume a validated quantum workflow without exposing Cirq directly.

For example:

    SaaS Client
        ↓
    Quantum Service
        ↓
    General Factory
        ↓
    Quantum Implementation
        ↓
    Cirq
        ↓
    Results

The implementation technology may therefore remain hidden behind the logical capability boundary.

## Relationship to Micro-Frontends

Cirq-related execution may be presented through:

- Workflow Views.
- Resource Views.
- Results Views.
- Evidence Views.
- Client Views.

The UI should remain separate from the Cirq implementation and execution authority.

## Security Considerations

Relevant considerations include:

- Source access control.
- Notebook access control.
- Repository access control.
- Execution authorization.
- Resource authorization.
- Secret management.
- Dependency management.
- Runtime isolation.
- Audit logging.

The Cirq implementation should not bypass platform security controls.

## IP and Provenance Considerations

Cirq is an external technology implementation.

The General Factory reference implementation should preserve the identity and provenance of the underlying technology.

Original QAI-specific:

- Workflow patterns.
- Integration contracts.
- Factory mappings.
- Adapters.
- Configurations.
- Validation assets.
- Experiment designs.

should remain distinguishable from the underlying third-party technology.

## Scope

### In Scope

- Cirq integration.
- Quantum circuit construction.
- Quantum circuit representation.
- Circuit parameterization.
- Quantum circuit simulation.
- Measurement.
- Quantum experiment integration.
- Workflow integration.
- Notebook integration.
- QAI Lab integration.
- Resource Fabric integration.
- Results.
- Evidence.
- Provenance.
- Reproducibility.
- Factory Registry integration.
- PaaS integration.
- SaaS integration.
- Virtual-first experimentation.

### Out of Scope

The initial reference implementation does not attempt to provide:

- A replacement for the General Framework.
- A replacement for the General Factory.
- A complete quantum-computing platform.
- A universal quantum backend.
- A complete quantum emulator.
- A physical QPU.
- A replacement for Cirq itself.
- Automatic physical quantum execution.
- Claims that circuit simulation equals physical QPU execution.
- A complete quantum workflow engine.

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
11. Keep Cirq-specific semantics within the implementation boundary.
12. Keep logical quantum capabilities independent from Cirq.
13. Preserve circuit, implementation, backend and execution identity.
14. Record the actual execution technology and backend.
15. Preserve reproducibility information.
16. Do not represent simulation results as physical execution results.
17. Reuse common quantum capability contracts where applicable.
18. Promote validated Cirq patterns into reusable factory capabilities only after sufficient validation.

## Promotion Path

The Cirq reference implementation may progress through:

    Cirq Environment
        ↓
    Simple Circuit
        ↓
    Validated Simulation
        ↓
    Experiment Integration
        ↓
    Workflow Integration
        ↓
    Factory Registry Integration
        ↓
    Resource Fabric Integration
        ↓
    Results / Evidence Integration
        ↓
    Reusable Quantum Reference Implementation
        ↓
    General Factory Capability Binding

Promotion should be based on demonstrated execution, reproducibility, validation, provenance and architectural fit.

## Future Extensions

Potential extensions include:

- Cirq circuit templates.
- Parameterized experiment templates.
- Jupyter integration.
- Workflow integration.
- Visual circuit integration.
- QAI Platform integration.
- GitHub integration.
- GitLab integration.
- GitLab Runner integration.
- Resource-aware simulation.
- Larger circuit experiments.
- Noise-model experiments.
- Hybrid AI/quantum workflows.
- Quantum emulator integration.
- Backend abstraction.
- Comparative experiments with Qiskit.
- Comparative experiments with PennyLane.
- Comparative experiments with Strawberry Fields.
- Automated evidence packaging.
- Experiment lineage.
- Circuit provenance.
- Resource utilization analysis.
- Performance comparison.
- PaaS quantum workspace integration.

These capabilities should be introduced incrementally as validated reference implementations.

## Status

Reference structure established.

Cirq is positioned as a concrete quantum circuit construction and simulation implementation within the General Factory quantum reference-implementation family.

Actual Cirq circuits, configurations, workflows, deployment assets, execution results and evidence should be added only when available and validated.
---

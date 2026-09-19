# General Digital / QAI Factory

## Purpose

The General Factory is the **implementation and execution authority** for the
reusable General Digital / QAI Framework.

The Factory operationalizes Framework definitions without redefining the
logical architecture.

It provides the mechanisms required to:

- load Framework definitions
- resolve logical assets and capabilities
- resolve interfaces and workflows
- locate implementation bindings
- bind Framework contracts to implementations
- connect to existing repositories
- instantiate virtual assets
- instantiate simulation and emulation configurations
- invoke external implementations
- execute workflows
- execute experiments
- integrate Fabrics
- manage runtime resources
- capture results
- capture evidence
- maintain provenance
- maintain implementation bindings
- support progressive realization from virtual to physical execution

The Factory is therefore the **execution bridge between architectural
definitions and real implementations**.

~~~

## Architectural Authority

The General Framework and General Factory have deliberately separate
responsibilities.

```text
GENERAL FRAMEWORK
Architecture / Semantics / Contracts
              |
              v
GENERAL FACTORY
Binding / Instantiation / Execution
              |
              v
Existing Implementations / Technologies
```

The Framework defines **WHAT**.

The Factory implements **HOW**.

The Factory must therefore consume and respect Framework definitions rather
than redefining them.

~~~

# Architectural Boundary

The General Factory is responsible for implementation and execution.

It may provide:

- runtime services
- implementation resolution
- connectors
- adapters
- interface bindings
- asset instantiation
- workflow execution
- experiment execution
- simulation
- emulation
- Fabric runtime integration
- technology bindings
- evidence collection
- provenance
- resource coordination

It does not become the authoritative source for:

- logical architecture
- universal semantic definitions
- domain-independent conceptual models
- Framework contracts
- Framework governance definitions

Those remain within `general_framework`.

~~~

# Core Principle

> **The Factory implements the Framework; it does not redefine the Framework.**

Technology is selected and bound to Framework concepts through controlled
interfaces and implementation bindings.

This allows multiple technologies to implement the same logical capability.

For example:

```text
Logical Capability
        |
        +--> Classical Implementation
        |
        +--> AI Implementation
        |
        +--> QAI Implementation
        |
        +--> Quantum Implementation
        |
        +--> Hybrid Implementation
```

The Factory provides the mechanism to resolve and execute the selected
implementation.

~~~

# Existing Asset Reuse

Existing repositories remain independent.

Examples include:

- QAI Base
- QAI Governance
- QAI Lab
- QAI Foundry
- HoldCo Factory
- Digital Farm pilot
- other GitHub projects
- other GitLab projects
- local development projects
- cloud services
- external technology platforms
- vendor implementations

The Factory should access these through:

- registries
- interfaces
- connectors
- adapters
- APIs
- execution contracts
- implementation bindings
- artifact references

Duplication is not the default strategy.

An existing project should normally remain the system of record for its own
implementation artifacts.

The Factory provides the integration and execution mechanism around it.

~~~

# Integration Principle

The preferred integration model is:

```text
Framework Definition
        |
        v
Registry
        |
        v
Implementation Resolver
        |
        v
Binding
        |
        v
Connector
        |
        v
Adapter
        |
        v
Existing Implementation
        |
        v
Execution
        |
        v
Result
        |
        v
Evidence / Provenance
```

This creates a controlled boundary between architectural definition and
technology-specific execution.

~~~

# Implementation Binding

An implementation binding connects a Framework-defined capability or asset to
an executable implementation.

A binding may contain references to:

- implementation identity
- capability identity
- asset identity
- interface contract
- workflow
- repository
- provider
- technology
- version
- artifact
- executable entry point
- execution environment
- authentication method reference
- required resources
- input schema
- output schema
- evidence requirements
- provenance requirements
- lifecycle status

Secrets and credentials should never be stored directly in the binding.

The binding should reference the appropriate secure authentication mechanism.

~~~

# Registry-Driven Execution

The Factory uses registries to discover implementation candidates.

Conceptually:

```text
Capability Registry
        |
        v
Implementation Registry
        |
        v
Binding Resolver
        |
        v
Executable Implementation
```

The registry provides discovery and identity.

The implementation itself remains outside the registry.

This prevents registries from becoming duplicate source-code repositories.

~~~

# Resolver

The Resolver determines which implementation can satisfy a Framework
requirement.

A resolver may consider:

- capability
- interface compatibility
- implementation type
- realization type
- version
- maturity
- fidelity
- environment
- resource requirements
- execution constraints
- security constraints
- domain
- workflow requirements
- availability
- evidence requirements

The resolver should return one or more compatible implementation candidates.

The Factory should not assume that the first discovered technology is
automatically the appropriate implementation.

~~~

# Connector

A Connector provides access to an external system or repository.

Examples include:

- GitHub connector
- GitLab connector
- local filesystem connector
- cloud connector
- API connector
- technology-specific connector

A Connector handles the mechanism of reaching an external implementation.

~~~

# Adapter

An Adapter translates between the Factory's common execution contract and the
specific interface of an implementation.

For example:

```text
Factory Execution Contract
          |
          v
       Adapter
          |
          v
Vendor / Repository / Tool Interface
```

Adapters allow heterogeneous implementations to participate in a common
Factory execution model.

~~~

# Connector vs Adapter

The distinction is intentional.

## Connector

Answers:

> How do we reach the implementation?

## Adapter

Answers:

> How do we communicate with and invoke the implementation using the Factory
> contract?

This allows the same connector to potentially support multiple adapters and
multiple implementations.

~~~

# Interface Execution

The Factory must execute implementations through explicit interface
contracts.

An interface binding may define:

- inputs
- outputs
- state
- events
- commands
- timing
- protocol
- API
- units
- semantics
- errors
- resource requirements
- security
- authorization
- provenance
- version

The Factory should validate interface compatibility before execution.

~~~

# Dry-Run Principle

The preferred initial integration sequence is:

```text
Registry
   ->
Resolver
   ->
Binding
   ->
Dry-Run
   ->
Connector
   ->
Adapter
   ->
Execution
   ->
Evidence
```

A dry-run allows the Factory to validate:

- registry resolution
- implementation identity
- repository accessibility
- interface compatibility
- configuration
- authentication references
- input/output contracts
- execution parameters

before performing an actual execution.

~~~

# Virtual Asset Instantiation

The Factory can instantiate Framework-defined logical assets as executable
virtual assets.

Conceptually:

```text
Framework Asset Definition
          |
          v
Factory Asset Runtime
          |
          v
Virtual Asset Instance
```

The virtual asset may subsequently be connected to:

- simulation
- emulation
- HIL
- testbed
- physical hardware
- hybrid execution

The logical identity remains associated with the asset throughout the
realization lifecycle.

~~~

# Realization Model

The Factory supports multiple realization modes.

```text
Logical Asset
      |
      +--> Virtual
      |
      +--> Simulated
      |
      +--> Emulated
      |
      +--> HIL / Testbed
      |
      +--> Physical
      |
      +--> Hybrid
```

A Factory implementation should not assume that a physical asset must exist
before virtual or simulated development can begin.

~~~

# Progressive Fidelity

The Factory supports progressive fidelity.

A model may begin with an abstract representation and progressively move toward
greater realism.

Example:

```text
Abstract Model
      |
      v
Virtual Model
      |
      v
Behavioural Simulation
      |
      v
AI / ML Emulator
      |
      v
High-Fidelity Simulation
      |
      v
Device / CPS Emulation
      |
      v
HIL / Testbed
      |
      v
Physical Execution
```

Fidelity may be selected according to:

- accuracy
- validation requirements
- interface realism
- latency
- uncertainty
- computational resources
- cost
- experimental purpose

~~~

# Simulation and Emulation

The Factory provides the implementation layer for simulation and emulation.

## Simulation

Simulation executes a representation of system behaviour through a model.

## Emulation

Emulation reproduces relevant behaviour, state, timing, protocol or interface
characteristics of a target implementation.

Simulation and emulation may be composed.

Example:

```text
Simulated Environment
        |
        v
Emulated Device
        |
        v
Real / Emulated Interface
        |
        v
AI / QAI Controller
```

The Factory may therefore coordinate heterogeneous execution modes within the
same experiment.

~~~

# Simulation Broker

A future Factory capability is a Simulation Broker.

The Simulation Broker may select an appropriate simulation method based on:

- problem structure
- system size
- model type
- fidelity
- uncertainty
- noise
- available resources
- latency
- evidence requirements

Possible backends may include:

- classical numerical simulation
- discrete-event simulation
- agent-based simulation
- Monte Carlo
- AI surrogate models
- tensor-network methods
- stabilizer simulation
- state-vector simulation
- density-matrix simulation
- hybrid simulation
- domain-specific physics engines

The backend is an implementation choice.

The Framework defines the problem and model semantics.

~~~

# Design-Space Exploration

The Factory can provide a design-space exploration environment.

A design space may include:

- design variables
- parameter ranges
- constraints
- objectives
- uncertainty
- candidate configurations
- alternative models
- alternative representations
- alternative solvers
- alternative fidelities
- alternative execution environments

The Factory may then execute a cycle such as:

```text
Generate
   ->
Filter
   ->
Simulate
   ->
Evaluate
   ->
Learn
   ->
Select Next Candidate
   ->
Repeat
```

This allows experimentation to move beyond fixed parameter sweeps toward
controlled computational exploration.

~~~

# Candidate and Hypothesis Management

A generated candidate is a controlled experimental object.

A candidate may retain:

- candidate ID
- generation method
- parameters
- assumptions
- constraints
- random seed where applicable
- model version
- execution configuration
- evaluation metrics
- result
- provenance

This converts uncontrolled "guessing" into traceable candidate generation and
hypothesis evaluation.

~~~

# Mathematical Problem Execution

The Factory consumes mathematical and computational representations defined or
referenced by the Framework.

A general execution chain is:

```text
Real-World Problem
        |
        v
Framework Problem Definition
        |
        v
Mathematical Formulation
        |
        v
Representation
        |
        v
Factory Solver / Simulator
        |
        v
Execution
        |
        v
Result
```

The Factory may support multiple mathematical formulations of the same
underlying problem.

~~~

# Multiple Computational Paths

The Factory supports alternative computational paths.

```text
Problem
  |
  +--> Classical
  |
  +--> AI
  |
  +--> QAI / Quantum-Inspired
  |
  +--> Quantum
  |
  +--> Hybrid
```

The Factory should support evaluation and execution without assuming that one
computational paradigm is universally superior.

Selection should be driven by the problem, constraints, evidence and value
requirements.

~~~

# QAI Runtime Integration

Future QAI implementation bindings may include:

- QAI Runtime
- QAI Compiler
- QAI Language
- QAI Processor
- QAI Memory
- QAI Hub
- QAI Router
- QAI Switch
- QAI Cloud
- QAI Agent runtime
- hybrid execution runtime

These are implementation candidates.

Their logical meaning and architectural relationships should remain defined
by the General Framework.

~~~

# Hardware Abstraction

The Factory should bind QAI and computational assets through capability
profiles rather than unnecessary physical-device coupling.

For example:

```text
Logical Processor Capability
          |
          v
Capability Profile
          |
   +------+------+
   |             |
   v             v
Simulator       QPU
   |             |
   +------+------+
          |
          v
      Common Result
```

This allows software and model development to progress independently of the
maturity of a particular hardware platform.

~~~

# Hybrid Execution

The Factory supports systems containing multiple realization modes
simultaneously.

Example:

```text
Physical QAI Processor
        +
Virtual Memory
        +
Emulated Router
        +
Simulated Cloud
        +
AI Controller
```

The Factory coordinates these components through their interface contracts.

This supports hybrid virtual/physical systems and progressive transition
toward physical implementation.

~~~

# Experiment Execution

An experiment is an executable instance of:

```text
Model
+
Configuration
+
Parameters
+
Constraints
+
Execution Method
+
Environment
```

The Factory is responsible for creating and executing experiment instances.

Each execution should preserve:

- experiment identity
- configuration
- implementation identity
- version
- environment
- parameters
- timestamps
- outputs
- errors
- evidence
- provenance

~~~

# Experiment Lifecycle

A generalized Factory experiment lifecycle is:

```text
Define
   ->
Resolve
   ->
Configure
   ->
Validate
   ->
Dry-Run
   ->
Execute
   ->
Collect Results
   ->
Validate Results
   ->
Generate Evidence
   ->
Promote / Archive
```

Different experiments may have different lifecycle requirements.

~~~

# Evidence and Provenance

The Factory captures evidence produced by implementation execution.

Evidence may include:

- execution logs
- experiment results
- simulation outputs
- emulation outputs
- benchmark results
- validation results
- resource usage
- error conditions
- test results
- approval records
- generated artifacts

Provenance should preserve the relationship between:

```text
Framework Definition
       ->
Model
       ->
Configuration
       ->
Implementation Binding
       ->
Execution Environment
       ->
Execution
       ->
Result
       ->
Evidence
```

~~~

# Fabric Runtime

The Factory contains the implementation side of the Fabric architecture.

The Factory may provide runtime components for:

- data plane
- control plane
- viewpoints
- workflow coordination
- metadata
- policy invocation
- identity
- authorization
- evidence

The Framework defines the conceptual Fabric architecture.

The Factory implements the runtime mechanisms.

~~~

# Viewpoint Execution

A Factory viewpoint runtime may execute controls associated with a Framework
viewpoint.

A viewpoint may trigger:

```text
Metadata Resolution
        ->
Policy Check
        ->
Authentication
        ->
Authorization
        ->
Approval
        ->
Control Invocation
        ->
Evidence
```

This allows governance and control functions to participate directly in
runtime workflows.

~~~

# Resource Management

Factory execution may require coordination of:

- CPU
- GPU
- HPC
- QPU
- memory
- storage
- network
- edge compute
- execution time
- energy
- budget
- shots
- fidelity
- latency
- bandwidth

Resource requirements originate from Framework models and implementation
bindings.

The Factory resolves available resources and executes accordingly.

~~~

# Repository Integration

The Factory can integrate different repository and execution environments.

Initial connector categories include:

```text
connectors/
|
+-- github/
+-- gitlab/
+-- local/
+-- cloud/
```

These connectors provide access mechanisms.

Adapters then translate implementation-specific operations into common Factory
contracts.

~~~

# Reference Implementations

Reference implementations are deliberately separated from the Framework's
conceptual definitions.

Initial reference implementations include:

```text
reference_implementations/
|
+-- microsoft_fabric/
|     |
|     +-- dataflows_gen2/
|
+-- qai_lab/
      |
      +-- pipeline_notebook/
```

The purpose of these implementations is to validate the Framework/Factory
architecture using working examples.

They are not intended to become duplicate copies of the original systems.

~~~

# Microsoft Fabric Integration Candidate

The Microsoft Fabric Dataflows Gen2 working sample represents an initial
implementation reference for a data and control execution path.

Conceptually:

```text
External / Public Data
        |
        v
Dataflow
        |
        v
Transformation
        |
        v
Lakehouse
        |
        v
Pipeline
        |
        v
Verification
        |
        v
Evidence
```

The Factory integration should ultimately access the working implementation
through a controlled reference and binding rather than recreate the complete
Fabric solution.

~~~

# QAI Lab Integration Candidate

The QAI Lab / GitLab Runner / GitHub Notebook path represents an initial
computational experiment execution reference.

Conceptually:

```text
Framework Experiment
        |
        v
Factory Resolver
        |
        v
Implementation Binding
        |
        v
GitLab Runner
        |
        v
GitHub Notebook / QAI Pipeline
        |
        v
Execution
        |
        v
Experiment Result
        |
        v
Evidence
```

This provides an initial validation of the Factory's ability to invoke an
existing computational implementation.

~~~

# Initial Integration Slice

The first integration slice is intentionally small.

Its objective is to prove:

```text
Registry
   ->
Resolution
   ->
Binding
   ->
Connection
   ->
Adapter
   ->
Execution
   ->
Result
   ->
Evidence
```

Only after this path is stable should additional runtime integrations be
added.

~~~

# Factory Runtime

The Factory runtime provides the execution services required to translate
Framework definitions into active runtime objects.

Initial runtime areas include:

```text
factory_core/
framework_runtime/
asset_runtime/
```

## Factory Core

Coordinates Factory-level execution and lifecycle services.

## Framework Runtime

Loads and interprets Framework definitions and registries.

## Asset Runtime

Instantiates and manages executable asset instances.

~~~

# Experimentation Environment

The Factory experimentation area supports:

```text
experimentation/
|
+-- experiments/
+-- notebooks/
+-- scenarios/
+-- executions/
+-- results/
```

This provides separation between:

- experiment definitions
- computational notebooks
- scenarios
- execution records
- generated results

~~~

# Evidence Repository

Evidence should be retained independently from implementation source code.

The initial Factory structure includes:

```text
evidence/
|
+-- experiment_records/
+-- provenance/
```

Additional evidence types may be added as the lifecycle evolves.

~~~

# Runtime Registry

The Factory maintains implementation-side registry information such as:

```text
registry/
|
+-- runtime_bindings.json
```

This registry connects Framework concepts to executable runtime bindings.

The Framework remains authoritative for logical identity and architecture.

~~~

# Error and Recovery Principle

Factory execution should distinguish between:

- framework definition errors
- registry resolution errors
- binding errors
- authentication errors
- connector errors
- adapter errors
- configuration errors
- execution errors
- result validation errors
- evidence persistence errors

Failure should be observable and traceable.

A failed implementation should not silently redefine the Framework or alter
logical asset identity.

~~~

# Security Boundary

The Factory is responsible for secure implementation access.

It may interact with:

- authentication systems
- authorization systems
- secrets managers
- tokens
- certificates
- service identities
- access policies

Credentials and secrets should not be stored in source repositories,
registries or implementation manifests.

Bindings should reference secure credential mechanisms.

~~~

# Lifecycle and Promotion

A Factory implementation can progress through maturity stages.

Example:

```text
Reference
   ->
Registered
   ->
Bound
   ->
Validated
   ->
Executable
   ->
Qualified
   ->
Production Candidate
   ->
Production
```

Promotion should be evidence-driven.

The Framework defines lifecycle semantics while the Factory manages execution
and implementation state.

~~~

# Model and Hardware Maturity Separation

The Factory must not assume that software, models and hardware mature at the
same rate.

For example:

```text
Model Maturity
    Classical
       ->
    QAI / Quantum-Inspired
       ->
    Hybrid QAI
       ->
    Advanced QAI Research
```

can evolve independently from:

```text
Execution Maturity
    Software
       ->
    Classical Simulation
       ->
    Emulation
       ->
    NISQ QPU
       ->
    Advanced QPU
       ->
    FTQC
```

This allows the Factory to support virtual-first development.

~~~

# Virtual-First QAI Engineering

The Factory can create an executable virtual infrastructure before physical
hardware exists.

For example:

```text
Logical QAI Infrastructure
          |
          v
Virtual QAI Infrastructure
          |
          v
Simulation / Emulation
          |
          v
HIL / Testbed
          |
          v
Physical Infrastructure
```

The virtual infrastructure can remain useful after physical deployment for:

- testing
- validation
- optimization
- training
- forecasting
- what-if analysis
- maintenance
- Digital Twin operation

~~~

# Domain Implementation

The Factory is domain-neutral but can execute domain-specific implementations.

For example:

```text
General Framework
       |
       v
Agriculture Domain Profile
       |
       v
Digital Farm Model
       |
       v
Factory Runtime
       |
       v
Digital Farm Implementation
```

The same approach can later be applied to other domains.

~~~

# Technology Bindings

Technology-specific implementations may include:

- Microsoft Fabric
- GitHub
- GitLab
- cloud platforms
- HPC
- simulation engines
- Digital Twin platforms
- AI platforms
- quantum SDKs
- QPUs
- industrial control systems
- IoT platforms

These bindings are implementation concerns.

The Framework remains technology-neutral.

~~~

# Future Expansion

Additional Factory implementation bindings may later include:

- QAI Runtime
- QAI Compiler
- QAI Language
- QAI Processor
- QAI Memory
- QAI Hub
- QAI Router
- QAI Switch
- QAI Cloud
- QAI Agent runtime
- simulation engines
- emulators
- Digital Twin platforms
- HPC platforms
- GPU platforms
- QPU backends
- domain implementations
- industrial testbeds
- HIL platforms
- deployment environments

Each addition should be introduced through an explicit Framework capability
and implementation contract.

~~~

# Relationship to QAI Foundry

`qai_foundry` remains a distinct project.

It represents transition, maturity, IP development and productization
activities.

The General Factory may invoke or integrate Foundry capabilities through
controlled bindings where appropriate.

The Factory does not replace or absorb the Foundry repository.

~~~

# Relationship to Production Ecosystem

The downstream production ecosystem remains a separate concern.

The Factory supports:

```text
Design
Simulation
Experimentation
Validation
Implementation
Integration
```

while downstream production environments may support:

```text
Deployment
Operations
Monitoring
Scaling
Service Management
Production Governance
```

Integration between them should occur through defined interfaces and lifecycle
transitions.

~~~

# Separation of Concerns

The three principal areas remain distinct.

## General Framework

Responsible for:

- semantics
- architecture
- models
- definitions
- contracts
- registries
- lifecycle
- governance
- standards
- value

## General Factory

Responsible for:

- implementation bindings
- runtime
- connectors
- adapters
- asset instantiation
- experimentation
- simulation
- emulation
- execution
- Fabric runtime
- evidence
- provenance

## Existing Projects

Responsible for their own:

- implementation
- source code
- specialized functionality
- technology
- project lifecycle

This separation preserves existing investments while creating a common
integration architecture.

~~~

# Factory Design Principles

The Factory follows these primary principles:

### 1. Execute, do not redefine

The Factory executes Framework definitions rather than changing their meaning.

### 2. Bind before executing

An implementation should be explicitly resolved and bound before invocation.

### 3. Reuse before rebuild

Existing working implementations should be reused through connectors and
adapters whenever practical.

### 4. Interface before integration

Integration should occur through explicit interface contracts.

### 5. Dry-run before execution

Initial bindings should be validated before performing real execution.

### 6. Evidence with execution

Execution should produce traceable results and evidence.

### 7. Provenance throughout

Inputs, implementations, configurations and results should remain traceable.

### 8. Virtual-first

Virtual and simulated implementations should be usable before physical
hardware exists.

### 9. Technology-neutral architecture

The Factory may support many technologies without allowing any one technology
to define the Framework.

### 10. Progressive expansion

New connectors, adapters and runtimes should be added only after their
architectural role is clear.

~~~

# Initial Repository Structure

The initial Factory organization is:

```text
general_factory/
|
+-- factory_core/
+-- framework_runtime/
+-- asset_runtime/
+-- connectors/
|     |
|     +-- github/
|     +-- gitlab/
|     +-- local/
|     +-- cloud/
|
+-- adapters/
|     |
|     +-- github/
|     +-- gitlab/
|     +-- local/
|     +-- technology/
|
+-- interfaces/
|
+-- experimentation/
|     |
|     +-- experiments/
|     +-- notebooks/
|     +-- scenarios/
|     +-- executions/
|     +-- results/
|
+-- fabric_runtime/
|     |
|     +-- data_plane/
|     +-- control_plane/
|     +-- viewpoints/
|
+-- reference_implementations/
|     |
|     +-- microsoft_fabric/
|     |     |
|     |     +-- dataflows_gen2/
|     |
|     +-- qai_lab/
|           |
|           +-- pipeline_notebook/
|
+-- evidence/
|     |
|     +-- experiment_records/
|     +-- provenance/
|
+-- registry/
|     |
|     +-- runtime_bindings.json
|
+-- README.md
```

The structure is intentionally controlled.

Additional implementation areas should be introduced only as the runtime
architecture requires them.

~~~

# Current Status

The General Factory has been initialized as the implementation and execution
foundation for the General Digital / QAI ecosystem.

The first objective is not to build a complete Factory platform.

The first objective is to demonstrate a working architectural chain:

```text
Framework Definition
        ->
Registry
        ->
Factory Resolver
        ->
Implementation Binding
        ->
Connector
        ->
Adapter
        ->
Existing Implementation
        ->
Execution
        ->
Result
        ->
Evidence
```

The initial Microsoft Fabric and QAI Lab integration candidates provide two
different implementation patterns through which this boundary can be tested.

~~~

# Next Controlled Step

The next controlled Factory step is to implement the first registry-driven
execution path.

Initial target:

```text
General Framework
        |
        v
Implementation Registry
        |
        v
General Factory Resolver
        |
        v
QAI Lab Implementation Binding
        |
        v
Connector / Adapter
        |
        v
Existing QAI Lab Asset
        |
        v
Execution
        |
        v
Result / Evidence
```

After this path is validated, the Microsoft Fabric implementation can be
connected through the same architectural mechanism.

The objective is to demonstrate **reuse and orchestration**, not to duplicate
existing implementation repositories.

~~~

# Factory Evolution Principle

The General Factory should grow from validated integration slices toward a
broader execution platform.

The intended progression is:

```text
Integration
    ->
Execution
    ->
Experimentation
    ->
Simulation / Emulation
    ->
Design-Space Exploration
    ->
QAI / Quantum Execution
    ->
HIL / Testbed
    ->
Product Engineering
    ->
Deployment Integration
```

Each stage should preserve the core boundary:

```text
General Framework
       |
       v
General Factory
       |
       v
Existing / New Implementation
```

The Framework defines the reusable architecture.

The Factory turns that architecture into executable systems.
---

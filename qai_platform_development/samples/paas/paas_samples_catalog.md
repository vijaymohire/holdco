# PaaS Samples Catalog

## Purpose

This catalog records implementation studies and samples used to explore the capabilities of the QAI PaaS engineering workspace.

The samples help evaluate how developers can:

- create projects
- configure engineering environments
- develop software and workflows
- configure virtual assets
- connect computational resources
- use simulation and emulation
- integrate external SDKs and libraries
- execute and validate workloads
- prepare solutions for deployment

A PaaS sample demonstrates a possible engineering capability.

It does not automatically become a production PaaS feature or Factory implementation dependency.

~~~

# PaaS Engineering Principle

The PaaS provides a controlled engineering workspace rather than simply an online IDE.

The conceptual environment is:

    QAI PaaS
       |
       +-- PaaS Control Layer
       |      |
       |      +-- Authentication
       |      +-- Authorization
       |      +-- Project Management
       |      +-- Workspace Management
       |      +-- Resource Management
       |      +-- API / Service Management
       |
       +-- Project Workspace
              |
              +-- Online IDE
              +-- Code
              +-- Notebook
              +-- Libraries / SDKs
              +-- Virtual Assets
              +-- Interfaces
              +-- Workflows
              +-- Simulation / Emulation
              +-- Execution
              +-- Results

Samples are used to investigate individual capabilities within this environment.

~~~

# Sample Categories

The initial PaaS sample categories are:

- Browser / online IDE
- Remote project workspace
- Project environment composition
- Custom functions and ports
- Workflow development
- Simulation / emulation workspaces
- Quantum simulator / QPU connections
- GPU / HPC resource selection
- Partner SDK / client-library integration

These categories may be expanded as new engineering requirements emerge.

~~~

# Browser / Online IDE

## Purpose

Study how an engineering environment can be accessed through a browser.

Potential implementations may include:

- VS Code Web
- browser-based development environments
- Eclipse-based browser workspaces
- remote IDE environments
- notebook environments

## Capabilities to Study

- source editing
- terminal access
- project navigation
- debugging
- extensions
- notebooks
- Git integration
- runtime access
- controlled library access

The objective is to evaluate the **online engineering workspace capability**, not to select an IDE merely because it is available.

~~~

# Remote Project Workspace

## Purpose

Study how each PaaS project can receive an isolated and controlled engineering workspace.

A workspace may contain:

- project source
- configuration
- dependencies
- virtual assets
- workflows
- notebooks
- test assets
- execution configuration
- project data
- generated artifacts

Conceptually:

    Project
       |
       v
    Workspace
       |
       +-- Source
       +-- Environment
       +-- Tools
       +-- Libraries
       +-- Assets
       +-- Workflows
       +-- Runtime
       +-- Results

The workspace should remain associated with the project lifecycle.

~~~

# Project Environment Composition

## Purpose

Study how a project environment can be assembled from reusable components.

A project environment may combine:

- operating environment
- language runtime
- libraries
- SDKs
- tools
- services
- data
- compute resources
- network access
- security policies
- execution backends

The composition pattern is:

    Project Requirements
          |
          v
    Environment Definition
          |
          v
    Component Resolution
          |
          v
    Environment Generation
          |
          v
    Validation
          |
          v
    Ready Workspace

The Factory may eventually implement this composition through environment profiles, packages and resolvers.

~~~

# Custom Functions and Ports

## Purpose

Study how developers can extend a PaaS project without modifying the common platform runtime.

Custom project components may include:

- functions
- APIs
- services
- workflow nodes
- input ports
- output ports
- event handlers
- adapters
- project-specific logic

The conceptual model is:

    PaaS Project
         |
         +-- Common Capabilities
         |
         +-- Custom Functions
         |
         +-- Interfaces / Ports
         |
         +-- Project Workflow

Custom components should communicate through defined interfaces.

~~~

# Workflow Development

## Purpose

Study how developers can create and execute project workflows within the PaaS.

A workflow sample may include:

- inputs
- processing stages
- conditions
- resource requirements
- dependencies
- asynchronous tasks
- outputs
- validation
- evidence

The execution pattern is:

    Design
      |
      v
    Verify
      |
      v
    Validate
      |
      v
    Compile
      |
      v
    Resolve
      |
      v
    Schedule
      |
      v
    Execute
      |
      v
    Results
      |
      v
    Evidence

Workflow samples help validate the PaaS engineering experience and the underlying Factory execution model.

~~~

# Simulation / Emulation Workspaces

## Purpose

Study how simulation and emulation can be made available directly within a PaaS project workspace.

Potential capabilities include:

- virtual asset creation
- model configuration
- scenario creation
- parameter configuration
- simulation execution
- emulator execution
- result analysis
- experiment comparison
- design-space exploration

The workspace may expose:

    Virtual Asset
          |
          v
    Model
          |
          v
    Scenario
          |
          v
    Simulation / Emulation
          |
          v
    Result
          |
          v
    Analysis

The PaaS provides the engineering surface.

The Factory provides the underlying implementation mechanisms.

~~~

# Quantum Simulator / QPU Connections

## Purpose

Study how PaaS projects can access quantum computational backends through controlled interfaces.

Potential backend classes include:

- local quantum simulator
- remote quantum simulator
- quantum emulator
- external QPU
- hybrid quantum-classical backend

The conceptual path is:

    PaaS Project
         |
         v
    Quantum Workflow
         |
         v
    Backend Resolver
         |
         v
    Quantum Backend
         |
       +---+---+
       |       |
       v       v
    Simulator QPU
       |       |
       +---+---+
           |
           v
         Result

The project should interact with a logical backend capability rather than being permanently coupled to a single physical provider.

~~~

# GPU / HPC Resource Selection

## Purpose

Study how developers can select computational resources appropriate to their workload.

Potential resources include:

- CPU
- GPU
- TPU
- NPU
- FPGA
- HPC
- high-memory systems
- distributed compute

The selection model is:

    Workload Requirement
           |
           v
    Resource Capability
           |
           v
    Resource Registry
           |
           v
    Resource Resolver
           |
           v
    Available Resource
           |
           v
    Execution

The PaaS should expose resource selection according to the user's authorization and project requirements.

~~~

# Partner SDK / Client-Library Integration

## Purpose

Study how external libraries and SDKs can be used inside controlled PaaS projects.

Potential categories include:

- GPU SDKs
- HPC libraries
- AI/ML frameworks
- quantum SDKs
- cloud SDKs
- client-specific libraries
- partner libraries
- domain-specific libraries

Examples may include SDKs associated with:

- NVIDIA
- IBM
- Xanadu
- Azure Quantum
- HPC environments
- client systems

The catalog records these as integration studies.

They should not become implicit platform dependencies.

~~~

# Controlled Library Access

External libraries and SDKs should be accessed through controlled project environments.

The principle is:

    Developer
       |
       v
    PaaS Workspace
       |
       v
    Approved Library / SDK
       |
       v
    Project Runtime
       |
       v
    Factory Execution Boundary

Controls may include:

- project permissions
- package versions
- security policies
- network access
- credentials
- licensing
- resource permissions
- execution policies

~~~

# PaaS Sample and Factory Dependency

A PaaS sample may use a technology without making that technology a permanent Factory dependency.

For example:

    PaaS Sample
        |
        v
    VS Code Web
        |
        v
    Workspace Pattern
        |
        v
    Generic PaaS Capability

The reusable capability is the workspace abstraction.

The particular IDE is an implementation option.

The same principle applies to:

- SDKs
- quantum platforms
- GPU libraries
- HPC tools
- cloud services
- API frameworks

~~~

# Sample Evaluation

Each PaaS sample should be evaluated according to its intended purpose.

Possible evaluation areas include:

- functionality
- developer experience
- integration complexity
- security
- isolation
- scalability
- resource requirements
- interoperability
- portability
- performance
- maintainability
- licensing
- client applicability
- Factory compatibility

Evaluation results should be recorded rather than inferred from inclusion in this catalog.

~~~

# Sample Metadata

Where practical, each PaaS sample should record:

- Sample ID
- Capability
- Technology
- Purpose
- Source
- Version
- Project context
- Dependencies
- Required resources
- Interfaces
- Security requirements
- Execution method
- Evidence
- Status
- Related Factory capability
- Promotion decision

This maintains traceability between PaaS experimentation and platform engineering.

~~~

# Status Values

PaaS samples may use:

`STUDY`

Capability or technology is being investigated.

`REFERENCE`

Sample is retained as a useful implementation reference.

`PILOT`

Capability is being actively tested in a project or pilot.

`VALIDATED`

Capability has been validated for its intended scope.

`PROMOTED`

Capability has been deliberately promoted into a reusable PaaS or Factory asset.

`DEFERRED`

Further work has been postponed.

~~~

# Sample Promotion

A PaaS sample may eventually become a reusable platform capability.

The promotion path is:

    PaaS Sample
        |
        v
    Capability Evaluation
        |
        v
    Pattern Extraction
        |
        v
    Framework Definition
        |
        v
    Factory Implementation
        |
        v
    PaaS Integration
        |
        v
    Validation
        |
        v
    Reusable Capability

Promotion should be explicit.

~~~

# PaaS and SaaS Relationship

A PaaS sample may eventually contribute to a SaaS capability.

The progression may be:

    PaaS Engineering
          |
          v
    Custom Solution
          |
          v
    Validation
          |
          v
    Standardization
          |
          v
    SaaS Capability

PaaS remains the engineering environment.

SaaS provides controlled consumption of standardized capabilities.

~~~

# PaaS and IaaS Relationship

PaaS samples may require IaaS resources.

The relationship is:

    PaaS Project
         |
         v
    Resource Requirement
         |
         v
    IaaS / Resource Fabric
         |
         v
    Compute / Storage / Network
         |
         v
    Project Runtime

The PaaS should request logical resource capabilities.

The Factory resolves those requirements to available resources.

~~~

# PaaS and Resource Fabric

The Resource Fabric provides the backend resource abstraction for PaaS workloads.

The conceptual flow is:

    PaaS Workload
         |
         v
    Resource Requirement
         |
         v
    Resource Capability
         |
         v
    Resource Resolver
         |
         v
    Resource Allocation
         |
         v
    Execution

This allows PaaS projects to use different resource providers without embedding provider-specific assumptions into the project architecture.

~~~

# PaaS and Virtual-First Engineering

PaaS samples should support virtual-first development where practical.

The progression may be:

    Logical Asset
        |
        v
    Virtual Asset
        |
        v
    Simulation
        |
        v
    Emulation
        |
        v
    HIL / Testbed
        |
        v
    Physical Resource

This allows developers to develop and validate solutions before requiring physical hardware.

~~~

# PaaS and Hybrid Computing

A PaaS project may combine multiple computational paths.

For example:

    Project
       |
       +-- Classical CPU
       |
       +-- AI / GPU
       |
       +-- HPC
       |
       +-- Quantum Simulator
       |
       +-- External QPU
       |
       +-- Hybrid Workflow

The PaaS provides the engineering workspace.

The Factory provides the runtime, resolution and execution mechanisms.

~~~

# Security and Authorization

PaaS samples involving external resources must consider:

- authentication
- authorization
- project isolation
- resource permissions
- network access
- credentials
- secrets
- data access
- backend access
- execution policies

A sample should never establish an assumption that developers receive unrestricted access to Factory resources.

~~~

# PaaS Sample Boundary

PaaS samples are not automatically:

- Factory runtime components
- production services
- platform standards
- vendor commitments
- SaaS products
- infrastructure commitments

They are evidence used to determine whether a capability should be engineered and productized.

~~~

# Current Baseline

The initial PaaS sample catalog covers:

- Browser / online IDE
- Remote project workspace
- Project environment composition
- Custom functions and ports
- Workflow development
- Simulation / emulation workspaces
- Quantum simulator / QPU connections
- GPU / HPC resource selection
- Partner SDK / client-library integration

These samples provide the initial evidence base for the PaaS engineering model.

~~~

# Guiding Principle

> **Use PaaS samples to explore the developer experience and engineering capability; promote only validated and reusable patterns into the Factory and PaaS platform.**

The core principle remains:

    PaaS Sample
         |
         v
    Evaluate
         |
         v
    Extract Pattern
         |
         v
    Framework Definition
         |
         v
    Factory Implementation
         |
         v
    PaaS Capability

Samples should be evaluated before becoming Factory implementation dependencies.

---

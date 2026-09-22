# Technology Samples Catalog

## Purpose

This catalog records technologies, platforms, tools, frameworks and implementation approaches that are studied as part of QAI Platform Development.

Technology samples provide:

- learning material
- implementation evidence
- architecture references
- technology evaluation
- integration references
- reusable implementation patterns
- candidate backend integrations
- candidate development environments

A technology appearing in this catalog does not imply that it is selected as a platform standard.

~~~

# Technology Sample Principle

The governing principle is:

> **Study the technology, extract the reusable pattern, evaluate the implementation, and promote only when justified.**

The development path is:

    Technology
       |
       v
    Study
       |
       v
    Sample
       |
       v
    Pattern Extraction
       |
       v
    Evaluation
       |
       +----------------------+
       |                      |
       v                      v
    Retain                  Promote
       |                      |
       |             +--------+--------+
       |             |                 |
       |             v                 v
       |        Framework          Factory
       |        Definition        Implementation
       |             |                 |
       |             +--------+--------+
       |                      |
       |                      v
       |                  Validation
       |                      |
       |                      v
       |                   Product
       |
       v
    Reference / Future Study

~~~

# Catalog Scope

The catalog may contain samples covering:

- data platforms
- development environments
- IDEs
- browser workspaces
- API frameworks
- AI frameworks
- quantum frameworks
- quantum development environments
- GPU technologies
- HPC technologies
- QPU integrations
- storage
- resource management
- cloud technologies
- workflow technologies
- simulation and emulation technologies
- engineering tools
- infrastructure technologies

The catalog is intentionally broader than the current production platform.

~~~

# Current Technology Samples

Initial technology samples include:

- Microsoft Fabric / Dataflows Gen2
- VS Code Web / remote development
- Eclipse Che / browser workspaces
- FastAPI and other web/API framework studies
- Qiskit
- Qrisp
- XACC
- quantum IDE/development studies
- GPU/HPC/QPU backend integrations
- storage and resource-management technologies

These samples represent areas of study and implementation reference, not final technology selections.

~~~

# Microsoft Fabric / Dataflows Gen2

## Purpose

Microsoft Fabric / Dataflows Gen2 is retained as a reference implementation for studying:

- data ingestion
- data transformation
- data pipelines
- Lakehouse integration
- workflow orchestration
- execution
- verification
- evidence

The existing Factory reference implementation provides a practical example of integrating an external technology through the Factory architecture.

## Architectural Relevance

The sample helps evaluate patterns for:

- data-plane execution
- control-plane orchestration
- transformation workflows
- pipeline execution
- data resource integration
- execution evidence

## Status

`REFERENCE`

The technology remains a reference implementation rather than a definition of the General Factory architecture.

~~~

# VS Code Web / Remote Development

## Purpose

VS Code Web / remote development is retained as a study area for browser-based engineering environments.

It is relevant to:

- PaaS
- online development
- remote project workspaces
- browser-based engineering
- project isolation
- developer tooling
- remote execution

## Architectural Relevance

The study supports the broader concept:

    Web Access Layer
          |
          v
       PaaS
          |
          v
    Project Workspace
          |
          v
      Online IDE
          |
          v
    Controlled Runtime

VS Code is one possible implementation technology.

It does not define the PaaS architecture.

## Status

`STUDY`

~~~

# Eclipse Che / Browser Workspaces

## Purpose

Eclipse Che / browser workspaces is retained as a study and reference area for browser-based development environments.

It is relevant to:

- cloud development environments
- browser IDEs
- project workspaces
- development containers
- collaborative development
- remote engineering

## Architectural Relevance

The study contributes to the PaaS workspace model.

It helps evaluate how:

- projects
- development environments
- tools
- runtimes
- libraries
- execution resources

can be exposed through a controlled engineering workspace.

## Status

`STUDY`

~~~

# FastAPI and Web / API Framework Studies

## Purpose

FastAPI and related web/API frameworks are retained as implementation samples for studying:

- REST APIs
- service interfaces
- API-driven workflows
- lightweight services
- Python-based services
- backend integration
- service-to-service communication

## Architectural Relevance

These studies support:

- Factory APIs
- PaaS services
- SaaS services
- workflow interfaces
- resource APIs
- execution APIs

The specific framework remains an implementation choice.

## Status

`STUDY`

~~~

# Qiskit

## Purpose

Qiskit is retained as a quantum software development sample.

It may be studied for:

- quantum circuits
- quantum algorithms
- quantum execution
- simulator integration
- QPU integration
- quantum workflows
- quantum software development

## Architectural Relevance

The study contributes to the broader computational path:

    Problem
       |
       v
    Mathematical Model
       |
       v
    Quantum Representation
       |
       v
    Quantum Workflow
       |
       v
    Simulator / QPU
       |
       v
    Result

Qiskit represents one possible implementation technology within the quantum computational path.

## Status

`STUDY`

~~~

# Qrisp

## Purpose

Qrisp is retained as a quantum programming and development study.

It may be evaluated for:

- quantum programming
- circuit construction
- algorithm development
- hybrid workflows
- quantum software abstraction

## Architectural Relevance

The study contributes to evaluation of higher-level quantum programming approaches and their potential Factory bindings.

## Status

`STUDY`

~~~

# XACC

## Purpose

XACC is retained as a quantum accelerator programming and integration study.

It may be evaluated for:

- accelerator programming
- quantum backends
- compiler integration
- heterogeneous execution
- quantum/classical coordination

## Architectural Relevance

The study is relevant to the Factory concept of resolving logical computational requirements to different quantum and hybrid backends.

## Status

`STUDY`

~~~

# Quantum IDE / Development Studies

## Purpose

Quantum IDE and development-environment studies cover the broader question of how quantum and hybrid computational development can be exposed through engineering workspaces.

Areas of study may include:

- circuit development
- algorithm development
- notebook integration
- visual development
- workflow composition
- debugging
- simulation
- backend selection
- execution monitoring
- result analysis

## Architectural Relevance

The study supports the PaaS concept:

    Developer Workspace
          |
          v
    Quantum / Hybrid Development
          |
          v
    Factory Runtime
          |
          v
    Simulator / Emulator / QPU

The objective is to understand reusable engineering patterns rather than commit prematurely to a particular IDE.

## Status

`STUDY`

~~~

# GPU / HPC / QPU Backend Integrations

## Purpose

Backend integration samples evaluate how computational workloads can be mapped to different execution resources.

Potential backend classes include:

- CPU
- GPU
- TPU
- NPU
- FPGA
- HPC
- quantum simulator
- quantum emulator
- QPU
- external computational services

## Architectural Relevance

These studies support the Resource Fabric and backend-resolution architecture.

The conceptual pattern is:

    Logical Computational Requirement
                |
                v
         Capability Profile
                |
                v
          Resource Resolver
                |
        +-------+-------+
        |       |       |
        v       v       v
       CPU     GPU     HPC
                        |
                        +---- Quantum / QPU
                |
                v
             Execution

The Factory resolves implementation and resource bindings.

## Status

`REFERENCE`

~~~

# Storage Technologies

## Purpose

Storage technology samples are used to evaluate mechanisms for:

- project storage
- experiment data
- evidence
- model artifacts
- deployment artifacts
- client data
- persistent state
- backups
- archival

## Architectural Relevance

Storage samples support the distinction between:

- temporary runtime data
- project data
- experiment data
- evidence
- durable deployment artifacts

The final storage architecture remains technology-neutral at the Framework level.

## Status

`STUDY`

~~~

# Resource-Management Technologies

## Purpose

Resource-management samples are used to study:

- resource discovery
- resource allocation
- capacity
- scheduling
- quotas
- utilization
- availability
- cost
- access control
- lifecycle management

## Architectural Relevance

These samples support the Resource Fabric concept:

    Resource Registry
          |
          v
    Capability Discovery
          |
          v
    Resource Resolution
          |
          v
    Allocation
          |
          v
    Execution
          |
          v
    Telemetry / Evidence

## Status

`STUDY`

~~~

# Technology Sample Classification

Each catalog entry should ideally record:

- Sample ID
- Technology
- Category
- Purpose
- Source
- Repository / URL where applicable
- Version
- Implementation type
- Related capability
- Related Framework concept
- Related Factory capability
- Related PaaS / SaaS / IaaS capability
- Backend/resource class
- Country/sector relevance where applicable
- Evidence
- Current status
- Promotion decision
- Related implementation
- Notes

This creates traceability without turning the catalog into an implementation registry.

~~~

# Status Values

The catalog uses the following status values:

`STUDY`

Technology is being investigated or learned.

`REFERENCE`

Technology or implementation is retained as a useful reference.

`PILOT`

Technology is being used in an active pilot or experiment.

`VALIDATED`

The relevant capability or integration has been demonstrated with sufficient evidence for the intended scope.

`PROMOTED`

The relevant pattern or implementation has been deliberately promoted into an appropriate Framework, Factory, platform or product asset.

`DEFERRED`

The technology remains recorded but further work is intentionally postponed.

~~~

# Status Progression

Status does not have to follow a single mandatory linear path.

A typical progression is:

    STUDY
      |
      v
    REFERENCE
      |
      v
    PILOT
      |
      v
    VALIDATED
      |
      v
    PROMOTED

A technology may instead remain:

    STUDY → DEFERRED

or:

    REFERENCE → DEFERRED

Promotion should be based on evidence and relevance rather than technology popularity.

~~~

# Technology vs Architecture

A technology sample should not be confused with an architectural requirement.

For example:

    VS Code
       |
       v
    Browser / Remote IDE Pattern
       |
       v
    Online Engineering Workspace
       |
       v
    PaaS Capability

The architecture is the reusable capability.

VS Code is one possible realization.

The same principle applies to:

- Qiskit
- Qrisp
- XACC
- FastAPI
- Microsoft Fabric
- GPU platforms
- HPC platforms
- QPU providers

~~~

# Technology vs Factory Binding

A technology can be studied at the platform-development level without immediately becoming a Factory binding.

The progression may be:

    Technology Study
          |
          v
    Integration Pattern
          |
          v
    Factory Capability
          |
          v
    Connector / Adapter
          |
          v
    Implementation Binding
          |
          v
    Executable Integration

This keeps experimental technology choices separate from stable Factory contracts.

~~~

# Technology Evaluation

Evaluation may consider:

- technical capability
- interface compatibility
- performance
- scalability
- interoperability
- portability
- resource requirements
- security
- licensing
- operational complexity
- developer experience
- evidence quality
- client relevance
- product relevance
- alignment with Framework abstractions

The evaluation result should be recorded rather than inferred from the technology's inclusion in the catalog.

~~~

# Country and Sector Relevance

A technology sample may support one or more country or sector opportunities.

For example, a sample may contribute to:

    Country Priority
          |
          v
       Sector
          |
          v
       Problem
          |
          v
    Technology Study
          |
          v
    Product Capability

Country relevance should therefore be recorded where it materially affects development decisions.

However, the technology catalog remains a technology reference catalog rather than a country-priority registry.

~~~

# Sample Promotion

A technology sample may contribute to a reusable platform capability only after deliberate evaluation.

The promotion chain is:

    Technology Sample
          |
          v
    Pattern Extraction
          |
          v
    Generic Capability
          |
          v
    Framework Definition
          |
          v
    Factory Implementation
          |
          v
    Validation
          |
          v
    Product / Service

The original technology sample should remain available as reference evidence.

~~~

# Current Catalog Principle

The initial catalog is intentionally broad.

It covers technologies across:

- Web
- Data
- AI
- Quantum
- GPU
- HPC
- Storage
- Resource Management
- Development Environments
- Backend Integration

This breadth supports technology-neutral platform development.

It does not represent a final vendor or technology stack.

~~~

# Relationship to General Framework

The General Framework defines reusable concepts such as:

- capabilities
- interfaces
- workflows
- resources
- virtual assets
- computational paths
- deployment profiles
- lifecycle
- evidence

Technology samples provide implementation evidence from which such concepts may be derived.

~~~

# Relationship to General Factory

The General Factory provides the mechanisms for implementing and integrating selected technologies.

These mechanisms may include:

- registries
- resolvers
- connectors
- adapters
- implementation bindings
- runtimes
- resource bindings
- deployment mechanisms
- validation
- evidence

A technology sample becomes a Factory asset only through controlled promotion.

~~~

# Relationship to QAI Platform Development

This catalog supports the broader development chain:

    Strategic Priority
          |
          v
    Product Opportunity
          |
          v
    Technology Study
          |
          v
    Pattern Extraction
          |
          v
    Framework
          |
          v
    Factory
          |
          v
    Pilot
          |
          v
    Evidence
          |
          v
    Productization

Technology exploration therefore remains connected to business and product development without allowing technology selection to dictate architecture prematurely.

~~~

# Current Status

The initial technology sample catalog has been established with the following study areas:

- Microsoft Fabric / Dataflows Gen2
- VS Code Web / remote development
- Eclipse Che / browser workspaces
- FastAPI and web/API frameworks
- Qiskit
- Qrisp
- XACC
- quantum IDE/development approaches
- GPU/HPC/QPU backend integrations
- storage
- resource management

The catalog is expected to evolve as new technologies are studied and as existing samples progress through evaluation and promotion.

~~~

# Guiding Principle

> **Technology samples provide evidence and implementation knowledge; they do not define the architecture.**

The architecture remains technology-neutral where practical.

Technology is selected, integrated and promoted when evidence, capability, interoperability, product requirements and deployment needs justify doing so.

Current status values remain:

**STUDY / REFERENCE / PILOT / VALIDATED / PROMOTED / DEFERRED**
---

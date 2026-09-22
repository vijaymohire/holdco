# Pilot Implementation Samples

## Purpose

This catalog records executable implementation samples that have been used to explore, demonstrate or validate QAI platform capabilities.

Pilot implementation samples provide practical evidence of:

- workflows
- execution patterns
- integration patterns
- data flows
- computational paths
- resource usage
- experiment orchestration
- validation
- client delivery patterns

A pilot implementation is evidence of an implementation approach.

It is not automatically a production architecture or a General Framework definition.

~~~

# Initial Baseline

The initial pilot implementation baseline includes:

- QAI Agriculture Phase 3–12 client-delivery notebook
- Digital Farm pilot artifacts
- Microsoft Fabric / Dataflows Gen2 reference implementation

These samples represent executable or operationally demonstrated patterns retained for further study, validation and reuse.

~~~

# Pilot Implementation Principle

The governing principle is:

> **Pilot implementations demonstrate executable patterns; they do not automatically define the platform architecture.**

The relationship is:

    Pilot Implementation
            |
            v
        Execution
            |
            v
        Validation
            |
            v
         Evidence
            |
            v
    Promotion Assessment
            |
       +----+----+
       |         |
       v         v
    Retain    Promote
                 |
          +------+------+
          |             |
          v             v
      Framework      Factory
      Definition   Implementation
                 |
                 v
            Post-Pilot Asset

~~~

# Pilot vs Framework

A pilot implementation demonstrates **how something was implemented for a particular experiment or demonstration**.

The General Framework defines **what the reusable capability means**.

Therefore:

    Pilot
      |
      | implementation evidence
      v
    Pattern
      |
      | generalized architectural meaning
      v
    Framework Definition

The pilot should not be copied directly into the Framework merely because it worked.

~~~

# Pilot vs Factory

The General Factory provides the implementation and execution mechanisms.

A pilot may use:

- existing repositories
- notebooks
- scripts
- APIs
- cloud services
- local resources
- external platforms
- reference implementations

The Factory may later standardize the implementation pattern into reusable:

- packages
- bindings
- connectors
- adapters
- runtimes
- deployment mechanisms
- validation mechanisms

The pilot therefore provides implementation evidence for Factory engineering.

~~~

# QAI Agriculture Phase 3–12 Client-Delivery Notebook

The QAI Agriculture Phase 3–12 client-delivery notebook is a major pilot implementation reference.

It demonstrates an end-to-end experiment and client-delivery pattern across the later phases of the Digital Farm pilot.

The notebook is retained as a working implementation reference rather than being treated as the definition of the General Framework.

~~~

# Notebook Role

The notebook provides an executable surface for:

- experiment configuration
- workflow orchestration
- asset selection
- computational execution
- result generation
- validation
- client-oriented delivery

It demonstrates how a QAI experiment can be organized into a repeatable delivery workflow.

~~~

# Notebook Relationship to the Factory

The notebook is an implementation reference.

The broader relationship is:

    General Framework
           |
           v
    General Factory
           |
           v
    QAI Lab / Experiment Binding
           |
           v
    QAI Agriculture Notebook
           |
           v
       Experiment
           |
           v
         Result
           |
           v
        Evidence

The notebook itself does not become the Factory runtime.

It demonstrates an experiment-orchestration surface that the Factory can invoke or integrate.

~~~

# Digital Farm Pilot Artifacts

The Digital Farm pilot generated a set of implementation artifacts supporting the client-delivery workflow.

These include:

- pilot use-case definitions
- asset inventory
- function inventory
- interface inventory
- workflow catalogue
- scenario catalogue
- classical baseline
- QAI evaluation
- KPI definition
- value criteria
- acceptance criteria
- implementation scope

The pilot also produced the corresponding experiment and workflow structures.

~~~

# Digital Farm Experiment

The Digital Farm pilot includes the experiment:

    FAEP-AGRI-OPT-001

The experiment is associated with the Digital Farm optimization workflow and provides a concrete implementation reference for controlled experiment execution.

~~~

# Digital Farm Workflow

The pilot includes the workflow:

    FAEP-AGRI-WF-001

The workflow provides an implementation reference for connecting:

- problem definition
- inputs
- computational processing
- evaluation
- results
- evidence

The workflow remains a pilot implementation artifact.

~~~

# Experiment Package

The Digital Farm pilot includes an experiment package:

    FAEP-AGRI-PACKAGE-001

The package provides a structured representation of the experiment implementation.

It demonstrates how experiment-related definitions and implementation information can be assembled into a reusable package structure.

~~~

# Pilot Client-Delivery Stages

The Digital Farm pilot demonstrated a five-stage client-oriented progression:

    See It
       |
       v
    Run It
       |
       v
    Validate It
       |
       v
    Deploy It
       |
       v
    Scale It

These stages provide a practical pilot delivery pattern.

They should be treated as a validated client-delivery pattern rather than as a mandatory lifecycle for every future product.

~~~

# Pilot Computational Boundary

The Digital Farm pilot intentionally demonstrated the workflow without requiring physical QAI hardware.

The implementation therefore supports the virtual-first principle:

    Problem
       |
       v
    Virtual Assets
       |
       v
    Computational Workflow
       |
       v
    Simulation / Execution
       |
       v
    Results
       |
       v
    Validation

Physical actuation and quantum hardware remain separate future realization options where justified.

~~~

# Microsoft Fabric / Dataflows Gen2

Microsoft Fabric / Dataflows Gen2 is retained as a reference implementation within the pilot/reference sample baseline.

It demonstrates a data and workflow execution pattern:

    Source
       |
       v
    Dataflow Gen2
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
    Execution
       |
       v
    Verification
       |
       v
    Evidence

This implementation is useful for studying Factory integration, data-plane execution and control-plane orchestration.

~~~

# Reference Implementation Boundary

Microsoft Fabric is a technology-specific reference implementation.

It does not define:

- the General Framework
- the General Factory
- the QAI Fabric architecture
- the universal data architecture

It demonstrates one possible implementation of a data-processing and orchestration capability.

~~~

# Pilot Evidence

Pilot implementations should retain evidence where available.

Evidence may include:

- execution results
- screenshots
- logs
- experiment records
- validation results
- benchmark results
- generated artifacts
- workflow outputs
- configuration
- provenance
- deployment records

Evidence allows later decisions about whether an implementation pattern should be retained, generalized or promoted.

~~~

# Pilot Provenance

Pilot records should maintain traceability to:

- pilot identity
- experiment identity
- workflow identity
- implementation
- repository
- version
- execution
- result
- evidence
- Framework relationship
- Factory relationship

The purpose is to preserve the history of how a capability was demonstrated.

~~~

# Pilot Reuse

A pilot implementation may be reused for:

- demonstrations
- training
- experimentation
- client workshops
- architecture validation
- Factory integration testing
- product development
- PaaS capability development
- future pilots

Reuse does not change the pilot's original status.

If the implementation is promoted into a production-oriented asset, the promoted asset should receive its own identity and lifecycle.

~~~

# Pilot to Post-Pilot Promotion

A pilot may contribute to a post-pilot capability through a controlled process:

    Pilot
      |
      v
    Evidence
      |
      v
    Pattern Extraction
      |
      v
    Engineering Assessment
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
    Post-Pilot Asset

The original pilot remains available as historical and implementation evidence.

~~~

# Promotion Assessment

Promotion may consider:

- repeatability
- demonstrated value
- technical feasibility
- architectural relevance
- interface stability
- resource requirements
- security
- operational requirements
- scalability
- client applicability
- industry applicability
- product relevance
- evidence quality

A successful pilot does not automatically require promotion.

~~~

# Pilot Maturity

Pilot maturity and product maturity are separate.

A pilot may be:

- exploratory
- demonstrative
- executable
- validated for a specific scope
- client-tested

without being:

- production-ready
- generalized
- scalable
- productized

The distinction prevents pilot success from being interpreted as universal production readiness.

~~~

# Pilot and Technology Samples

Technology samples and pilot implementations can be related but serve different purposes.

    Technology Sample
          |
          v
       Study
          |
          v
    Implementation Pattern
          |
          v
        Pilot
          |
          v
       Evidence

Alternatively:

    Pilot Requirement
          |
          v
    Technology Study
          |
          v
    Candidate Implementation
          |
          v
        Pilot

The relationship can operate in either direction.

~~~

# Pilot and Country / Sector Priorities

Pilot implementations may be linked to:

- national priorities
- common priorities
- sector priorities
- industry needs
- product opportunities
- client problems

For example:

    Priority
       |
       v
    Agriculture
       |
       v
    Digital Farm Problem
       |
       v
    Pilot
       |
       v
    Evidence
       |
       v
    Product Opportunity

This allows pilot evidence to contribute to strategic product development.

~~~

# Pilot and Product Development

The pilot layer provides an important bridge between strategic opportunity and productization.

The broader chain is:

    Country / Sector Need
            |
            v
       Problem
            |
            v
    Product Opportunity
            |
            v
          Pilot
            |
            v
        Evidence
            |
            v
    Engineering
            |
            v
    Post-Pilot Asset
            |
            v
        Product
            |
            v
     Client Deployment

~~~

# Pilot Implementation Identity

Where practical, each pilot implementation should have a distinct identity.

Useful metadata may include:

- Pilot ID
- Experiment ID
- Workflow ID
- Package ID
- implementation ID
- repository
- version
- owner
- purpose
- scope
- status
- evidence location
- related Framework capability
- related Factory implementation

This supports traceability and reuse.

~~~

# Pilot Status

Pilot samples may use status values such as:

`PILOT`

Currently used as an active pilot implementation.

`VALIDATED`

Validated for its defined scope.

`REFERENCE`

Retained primarily as a reference implementation.

`PROMOTED`

A corresponding reusable capability has been deliberately promoted.

`DEFERRED`

Further development has been postponed.

These statuses describe the implementation sample and do not represent a general product maturity rating.

~~~

# Current Baseline

The current baseline consists of:

1. QAI Agriculture Phase 3–12 client-delivery notebook
2. Digital Farm pilot artifacts
3. Microsoft Fabric / Dataflows Gen2 reference implementation

These samples provide the initial executable evidence base for the post-pilot QAI Platform Development process.

~~~

# Relationship to General Factory Reference Implementations

The pilot sample catalog and the General Factory reference implementation area serve related but different purposes.

The QAI Platform Development catalog answers:

> What pilot implementations and examples are available as development evidence?

The General Factory reference implementation area answers:

> How can the Factory integrate and execute an existing implementation?

This distinction allows the same implementation to be referenced from both locations without duplicating its source.

~~~

# Guiding Principle

> **Pilot implementations demonstrate what can be executed and validated; the General Framework defines what is reusable, and the General Factory defines how it is implemented and executed.**

The current development chain remains:

    Pilot
      ↓
    Execute
      ↓
    Validate
      ↓
    Evidence
      ↓
    Pattern Extraction
      ↓
    Framework / Factory Engineering
      ↓
    Promotion when justified
---

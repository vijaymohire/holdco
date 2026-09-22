# Implementation Samples

Technology and implementation samples are retained as evidence, reference material, learning material and reusable implementation patterns.

A sample does not automatically become architecture, a platform capability, a product feature or a production implementation.

~~~

# Purpose

The Samples area provides a controlled place to retain examples that help the QAI Platform Development process understand, evaluate and validate technologies and implementation approaches.

Samples may originate from:

- technology studies
- external tutorials
- research and reference implementations
- internal experiments
- pilot implementations
- PaaS development
- backend integration
- simulation and emulation
- QAI experiments
- industry pilots
- client demonstrations

The purpose is to preserve useful evidence without prematurely converting every experiment into a platform commitment.

~~~

# Sample Governance Principle

The fundamental principle is:

> **A sample is evidence and reference material first; it becomes an architectural or implementation asset only through controlled promotion.**

Therefore:

    Sample
       |
       v
    Study / Experiment
       |
       v
    Pattern Extraction
       |
       v
    Evaluation
       |
       +-------------------+
       |                   |
       v                   v
    No Promotion       Candidate Pattern
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
                       Promotion

A sample may remain a sample indefinitely if there is no justified reason to promote it.

~~~

# Sample Categories

The current sample structure distinguishes several categories:

    samples/
    |
    +-- technology/
    |       Technology and study samples
    |
    +-- pilot/
    |       Pilot implementation samples
    |
    +-- paas/
    |       PaaS capability and engineering samples
    |
    +-- backend/
            Backend and computational integration samples

These categories describe the purpose of the sample rather than implying production maturity.

~~~

# Technology Samples

Technology samples are used to study external technologies, architectures, tools, methods and implementation patterns.

Examples may include:

- AI infrastructure
- GPU computing
- HPC
- quantum computing
- quantum simulation
- Digital Twins
- cloud platforms
- data platforms
- workflow platforms
- AI engineering
- Systems Engineering
- Software Engineering
- emerging computational technologies

Their primary purpose is:

    Study
      |
      v
    Understand
      |
      v
    Extract Pattern
      |
      v
    Evaluate Relevance

A technology sample does not establish that the corresponding technology will become part of the QAI Platform.

~~~

# Pilot Implementation Samples

Pilot samples are working implementations used to explore and validate a capability.

Examples may include:

- Digital Farm pilot
- QAI Lab experiments
- experiment notebooks
- workflow experiments
- simulation experiments
- emulation experiments
- client demonstrations

Their purpose is:

    Experiment
       |
       v
    Validate
       |
       v
    Generate Evidence
       |
       v
    Assess Promotion

Pilot implementation may therefore provide a bridge between study samples and post-pilot engineering assets.

~~~

# PaaS Samples

PaaS samples demonstrate capabilities that may eventually be provided through the QAI engineering workspace.

Examples may include:

- notebook development
- online IDE
- virtual asset development
- workflow development
- interface development
- simulation
- emulation
- testing
- backend configuration
- resource configuration
- execution
- deployment preparation

A PaaS sample demonstrates a possible capability.

It does not automatically define the final PaaS architecture or product behaviour.

~~~

# Backend Samples

Backend samples demonstrate integration with computational and infrastructure resources.

Examples may include:

- CPU
- GPU
- TPU
- NPU
- FPGA
- HPC
- AI inference
- quantum simulators
- quantum emulators
- external QPU
- cloud resources
- partner services
- storage
- networking

Their purpose is to establish and evaluate possible Factory bindings and resource integration patterns.

~~~

# Reference Implementations

Some samples may become reference implementations for validating Factory integration patterns.

Examples include:

    General Factory
        |
        +-- reference_implementations/
            |
            +-- microsoft_fabric/
            |
            +-- qai_lab/

A reference implementation demonstrates how an existing implementation can participate in the Factory through:

- registry
- resolver
- implementation binding
- connector
- adapter
- execution
- result
- evidence

A reference implementation does not redefine the General Framework.

~~~

# Study Samples vs Implementation Samples

The distinction between study and implementation samples is intentional.

## Study Sample

Used primarily to understand:

- technology
- architecture
- method
- algorithm
- tool
- platform
- implementation pattern

## Implementation Sample

Used primarily to demonstrate:

- executable capability
- integration
- workflow
- resource binding
- runtime behaviour
- deployment behaviour

Both may provide evidence for future development.

Neither automatically becomes a production asset.

~~~

# Sample to Architecture Promotion

A useful sample may reveal a generic architectural pattern.

The promotion path is:

    Sample
       |
       v
    Pattern Identification
       |
       v
    Generic Concept
       |
       v
    Framework Definition
       |
       v
    Factory Implementation

The Framework captures the reusable architectural meaning.

The Factory captures the executable implementation.

The original sample remains available as evidence or reference where useful.

~~~

# Sample to Product Promotion

A validated sample may eventually contribute to a product.

The progression is:

    Sample
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
    Standardization
       |
       v
    Post-Pilot Asset
       |
       v
    Platform Capability
       |
       v
    Product / Service
       |
       v
    Client Deployment

Promotion is controlled rather than automatic.

~~~

# Promotion Criteria

Promotion of a sample should consider:

- architectural relevance
- demonstrated capability
- validation evidence
- reproducibility
- interface clarity
- resource requirements
- security requirements
- lifecycle requirements
- operational requirements
- client or industry relevance
- product relevance
- reuse potential
- implementation maturity

Not every sample needs to satisfy all criteria.

The criteria should be applied according to the intended promotion level.

~~~

# Evidence and Provenance

Samples should retain sufficient information to establish where they came from and how they were used.

Where applicable, sample records should capture:

- sample identity
- source
- repository
- technology
- purpose
- version
- dependencies
- implementation status
- experiment
- execution
- results
- evidence
- provenance
- related Framework definition
- related Factory implementation
- promotion status

This allows future engineering decisions to be based on traceable evidence.

~~~

# Technology Neutrality

Samples may be technology-specific even when the resulting architecture is technology-neutral.

For example:

    Technology Sample
          |
          v
    Technology Pattern
          |
          v
    Generic Capability
          |
          v
    Framework Definition
          |
          v
    Multiple Implementations

This prevents a particular vendor, tool or technology from becoming an architectural requirement merely because it was used in an experiment.

~~~

# Existing Implementations

Existing implementations should be reused where practical.

A sample may point to:

- an existing repository
- an existing project
- an existing notebook
- an existing service
- an existing platform
- an existing backend
- an existing client implementation

The Factory should integrate existing implementations through controlled mechanisms rather than unnecessarily duplicating their source.

~~~

# Relationship to General Framework

The General Framework defines the architectural meaning derived from validated patterns.

The relationship is:

    Sample
       |
       v
    Pattern
       |
       v
    General Framework
       |
       v
    Capability / Model / Interface / Workflow

The Framework should contain the generalized architectural concept rather than simply copying a sample.

~~~

# Relationship to General Factory

The General Factory implements validated Framework definitions.

The relationship is:

    Framework Definition
          |
          v
    Factory Implementation
          |
          v
    Runtime / Deployment
          |
          v
    Evidence

A sample may be used as the starting implementation reference, but the resulting Factory asset should have its own identity, lifecycle and implementation contract.

~~~

# Relationship to QAI Platform Development

Samples provide evidence for the broader QAI Platform Development process.

The strategic relationship is:

    Country / Sector Priority
            |
            v
        Problem
            |
            v
    Product Opportunity
            |
            v
        Sample / Study
            |
            v
        Evaluation
            |
            v
    Framework Definition
            |
            v
    Factory Implementation
            |
            v
        Pilot
            |
            v
        Evidence
            |
            v
      Productization

Samples therefore provide one of the mechanisms through which strategic product opportunities can be investigated and validated.

~~~

# Country and Sector Alignment

A sample may be associated with:

- a country priority
- a common priority
- a sector
- an industry
- a problem domain
- a product opportunity
- a client requirement

This association should be recorded where relevant.

However, country alignment does not automatically make a sample country-specific.

A reusable platform capability may support multiple countries and sectors.

~~~

# Sample Reuse

Samples may be reused for:

- education
- technology evaluation
- architecture validation
- engineering training
- demonstrations
- pilot preparation
- product development
- client workshops
- integration testing
- Factory validation

Reuse should preserve the original sample identity and provenance.

~~~

# Sample Lifecycle

A sample may progress through:

    Discovered
       |
       v
    Registered
       |
       v
    Studied
       |
       v
    Executed
       |
       v
    Evaluated
       |
       +------------------+
       |                  |
       v                  v
    Retained          Promoted
       |                  |
       |                  v
       |             Framework / Factory
       |                  |
       |                  v
       |             Pilot / Validation
       |                  |
       |                  v
       |             Post-Pilot Asset
       |
       v
    Archived / Reference

Retention remains valid even when promotion does not occur.

~~~

# Sample Maturity

Sample maturity should not be confused with product maturity.

A sample may be:

- conceptual
- educational
- experimental
- working
- validated
- reference-quality

without becoming a production asset.

Production readiness requires a separate engineering and validation process.

~~~

# Sample Independence

Samples should remain independently understandable where practical.

A sample should identify:

- what it demonstrates
- why it exists
- what technology it uses
- what assumptions it makes
- what it does not demonstrate
- what evidence it produced
- whether it has been promoted

This prevents samples from being interpreted as broader platform commitments.

~~~

# Controlled Promotion Principle

Promotion should be explicit.

A sample should not silently become:

- a Framework capability
- a Factory runtime component
- a platform requirement
- a product feature
- a client deployment dependency

Instead, promotion should create a traceable relationship:

    Sample
       |
       +--> Framework Definition
       |
       +--> Factory Implementation
       |
       +--> Pilot
       |
       +--> Evidence
       |
       +--> Product / Service

~~~

# Current Sample Structure

The current strategic sample structure is:

    qai_platform_development/
    |
    +-- samples/
        |
        +-- README.md
        |
        +-- technology/
        |   |
        |   +-- technology_samples_catalog.md
        |
        +-- pilot/
        |   |
        |   +-- pilot_implementation_samples.md
        |
        +-- paas/
        |   |
        |   +-- paas_samples_catalog.md
        |
        +-- backend/
            |
            +-- backend_samples_catalog.md

This structure can expand as additional sample classes emerge.

New categories should be added only when they represent a meaningful distinction in sample purpose or governance.

~~~

# Guiding Principle

The overall sample-development principle is:

> **Study broadly, retain evidence, extract reusable patterns, define architecture deliberately, implement through the Factory, validate through pilots, and promote only when justified.**

The central development chain remains:

    Study
      ↓
    Pattern Extraction
      ↓
    Framework Definition
      ↓
    Factory Implementation
      ↓
    Validation
      ↓
    Evidence
      ↓
    Promotion when justified

A sample is therefore an input to controlled platform development—not an automatic architectural commitment.
---

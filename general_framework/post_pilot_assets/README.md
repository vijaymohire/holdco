# General Framework - Post-Pilot Assets

## Purpose

This area contains the architectural and logical definitions required to engineer, productize, operationalize and deploy validated pilot capabilities.

It is the post-pilot architectural workspace of the General Framework.

The area provides the logical definitions that allow validated pilot capabilities to progress toward:

- reusable engineering assets
- standardized capabilities
- product definitions
- service definitions
- deployment definitions
- industry solutions
- client solutions
- repeatable deployment
- lifecycle evolution

The General Framework remains the architectural and semantic authority.

Implementation remains in the General Factory.

~~~

# Role

The General Framework defines **WHAT** the post-pilot system, capability, asset or deployment is.

This area may define:

- architecture
- models
- capabilities
- interfaces
- workflows
- deployment definitions
- deployment profiles
- industry structures
- client structures
- problem-domain structures
- package definitions
- registries
- configuration models
- bootstrapper contracts
- engineering contracts
- governance requirements
- lifecycle requirements
- resource requirements
- security requirements
- value and acceptance criteria

The Framework does not contain vendor-specific implementation logic.

Implementation belongs in the General Factory.

~~~

# Post-Pilot Architectural Position

The post-pilot area sits between validated pilot capabilities and reusable deployment architecture.

The progression is:

    Pilot Capability
          |
          v
    Evidence / Validation
          |
          v
    Post-Pilot Framework Definition
          |
          v
    General Factory Implementation
          |
          v
    Product / Service
          |
          v
    Industry / Client Deployment

The post-pilot Framework therefore provides the architectural bridge between experimentation and repeatable engineering.

~~~

# Pilot vs Post-Pilot

Pilot assets primarily support:

- discovery
- experimentation
- proof of concept
- feasibility
- validation
- evidence generation

Post-pilot assets support:

- engineering
- standardization
- productization
- operationalization
- client deployment
- reuse
- scaling
- lifecycle evolution

Conceptually:

    PILOT
      |
      +-- Discover
      +-- Experiment
      +-- Validate
      +-- Capture Evidence
      |
      v
    POST-PILOT
      |
      +-- Engineer
      +-- Standardize
      +-- Productize
      +-- Operationalize
      +-- Deploy
      +-- Reuse
      +-- Evolve

A post-pilot asset does not automatically imply production maturity.

Maturity remains an explicit architectural and lifecycle property.

~~~

# Post-Pilot Asset Principle

A post-pilot asset should represent a reusable architectural capability rather than merely a copy of a pilot implementation.

The preferred progression is:

    Pilot / Reference
          |
          v
    Pattern
          |
          v
    Generic Architectural Concept
          |
          v
    Framework Definition
          |
          v
    Factory Implementation
          |
          v
    Post-Pilot Capability

This allows successful pilot patterns to become reusable platform capabilities without moving implementation details into the Framework.

~~~

# Architectural Boundary

The Post-Pilot Framework area may define:

- what an asset is
- what a capability is
- what an interface means
- what a workflow represents
- what a deployment contains
- what a deployment profile means
- what a package represents
- what a client deployment requires
- what an industry deployment requires
- what a problem-domain structure represents
- what governance and lifecycle controls apply

It should not define:

- vendor-specific source code
- runtime implementation logic
- connector implementation
- adapter implementation
- executable Factory services
- technology-specific deployment scripts

Those implementation responsibilities belong in the General Factory.

~~~

# Relationship to General Factory

The architectural relationship is:

    General Framework
    Post-Pilot Assets
          |
          | WHAT
          v
    General Factory
    Post-Pilot Assets
          |
          | HOW
          v
    Implementation
          |
          v
    Deployment

The Framework defines the logical structure.

The Factory implements that structure.

~~~

# Engineering Modules

Post-pilot Framework assets may reference reusable engineering modules.

Current add-on module areas include:

- QAI Engineering
- Software Engineering
- Systems Engineering
- Resource Fabric
- Simulation
- Web Access
- Industry Solution Modules

These are optional engineering capabilities.

They are selected according to deployment requirements.

Conceptually:

    Post-Pilot Framework
            |
            +-- Core Architectural Definition
            |
            +-- Add-On Engineering Modules
                  |
                  +-- QAI Engineering
                  +-- Software Engineering
                  +-- Systems Engineering
                  +-- Resource Fabric
                  +-- Simulation
                  +-- Web Access
                  +-- Industry Solution Modules

The Framework defines their logical contracts.

The General Factory provides their implementation.

~~~

# Bootstrapper Boundary

The Framework defines the logical structure, contracts, configuration models, profiles, package structures and deployment definitions required by the General Factory Bootstrapper.

The executable Bootstrapper implementation belongs in the General Factory.

The boundary is:

    Enterprise / Ecosystem Bootstrapper
                    |
                    v
          General Factory Bootstrapper
                    |
                    v
              General Factory
                    |
                    v
           Industry / Client Package
                    |
                    v
               Deployment

The Framework therefore describes what the Bootstrapper must understand.

The Factory implements how the Bootstrapper performs the required resolution and generation.

~~~

# Bootstrapper Framework Definitions

The Framework may define:

- bootstrap architecture
- bootstrap configuration model
- deployment configuration
- deployment profiles
- package definitions
- module selection
- implementation references
- deployment contracts
- validation requirements
- deployment metadata
- registries
- generation requirements

The Framework does not execute the Bootstrapper.

Execution belongs to the General Factory.

~~~

# Deployment Architecture

Post-pilot deployment definitions may distinguish:

- industry
- client
- problem domain
- greenfield
- brownfield
- deployment profile
- selected modules
- required resources
- governance
- security
- realization

A generalized deployment structure is:

    Deployment Definition
           |
           +-- Industry
           |
           +-- Client
           |
           +-- Problem Domain
           |
           +-- Greenfield / Brownfield
           |
           +-- Deployment Profile
           |
           +-- Modules
           |
           +-- Resources
           |
           +-- Governance
           |
           +-- Security
           |
           v
    Factory Deployment

~~~

# Industry Structures

The `industry/` area provides architectural structures for industry-specific specialization.

An industry structure may define:

- industry terminology
- industry assets
- industry capabilities
- industry workflows
- industry interfaces
- industry constraints
- industry models
- industry value criteria
- industry deployment requirements

The industry structure should specialize the General Framework rather than recreate it.

~~~

# Client Structures

The `client/` area provides logical structures for client-specific specialization.

A client definition may include:

- client identity
- client context
- client requirements
- client capabilities
- client systems
- client interfaces
- client workflows
- client constraints
- client deployment requirements
- client governance
- client security requirements

Client-specific implementation remains in the General Factory or appropriate client repositories.

~~~

# Problem-Domain Structures

The `problem_domains/` area provides logical structures for defining reusable problem classes.

A problem-domain definition may include:

- problem statement
- actors
- assets
- environment
- constraints
- objectives
- workflows
- data requirements
- computational requirements
- interfaces
- value criteria
- acceptance criteria

A problem-domain definition may subsequently be instantiated for specific industries and clients.

~~~

# Deployment Profiles

The `deployment_profiles/` area defines reusable deployment patterns.

A deployment profile may specify:

- execution environment
- realization level
- selected engineering modules
- resource requirements
- security requirements
- governance requirements
- storage requirements
- networking requirements
- supported runtimes
- backend requirements
- operational constraints

Examples may include:

- virtual development
- local development
- cloud
- hybrid
- simulation
- emulation
- HIL
- testbed
- production candidate

The profile is a Framework definition.

The Factory resolves and implements the profile.

~~~

# Package Definitions

The `packages/` area defines logical deployment or solution packages.

A package may reference:

- Framework capabilities
- assets
- interfaces
- workflows
- modules
- deployment profiles
- resource requirements
- configuration
- validation requirements
- evidence requirements
- implementation references

The package defines WHAT should be included.

The Factory determines HOW those package elements are instantiated.

~~~

# Registries

The post-pilot Framework may maintain registries for reusable definitions.

Examples include:

- asset registry
- capability registry
- interface registry
- workflow registry
- implementation reference registry
- package registry
- deployment profile registry

Registries provide identity and discovery.

They should not become repositories for implementation source code.

~~~

# Configuration Model

Configuration is treated as an architectural concern separate from implementation code.

Framework configuration may describe:

- selected modules
- deployment profile
- capabilities
- assets
- interfaces
- workflows
- resources
- policies
- governance
- security
- deployment parameters

The Factory consumes these definitions and resolves them into executable configurations.

~~~

# Resource Requirements

The Framework may define logical resource requirements such as:

- compute
- GPU
- HPC
- QPU
- memory
- storage
- network
- latency
- throughput
- energy
- budget
- availability
- security classification

The Framework does not bind those requirements permanently to a physical resource.

The General Factory resolves the requirements against available resources.

~~~

# Virtual-First Engineering

Post-pilot Framework definitions support virtual-first engineering.

A logical asset may progress through:

    Logical Definition
          |
          v
        Virtual
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
        Physical
          |
          v
      Operational

Not every asset must traverse every stage.

Different components of the same system may have different realization levels.

~~~

# Software and Systems Engineering

Post-pilot Framework definitions may use Software Engineering and Systems Engineering as complementary add-on modules.

## Software Engineering

May cover:

- software architecture
- applications
- services
- APIs
- runtimes
- modular software
- testing
- verification
- validation
- deployment
- configuration
- observability
- modernization
- AI / QAI / quantum software

## Systems Engineering

May cover:

- system architecture
- subsystem architecture
- hardware
- virtual assets
- networks
- communications
- interfaces
- interoperability
- integration
- system verification
- system validation
- lifecycle
- human context
- operational environment

The Framework defines the logical engineering structure.

The Factory implements it.

~~~

# Web Access Architecture

Post-pilot Framework definitions support the common Web Access Layer.

The conceptual architecture is:

    HoldCo
      |
      v
    Common Web Access Layer
      |
      +-- SaaS
      +-- PaaS
      +-- IaaS
      |
      v
    General Framework
      |
      v
    General Factory

The Framework defines logical concepts such as:

- tenant
- user
- role
- workspace
- service
- application
- API
- micro-frontend
- security boundary
- SaaS
- PaaS
- IaaS

Implementation belongs in the General Factory.

~~~

# SaaS, PaaS and IaaS

The post-pilot Framework recognizes three complementary service models.

## SaaS

Controlled consumption of standardized solutions.

## PaaS

Controlled engineering and project workspace.

## IaaS

Underlying computational and infrastructure resources.

Conceptually:

    SaaS
      |
      v
    PaaS
      |
      v
    IaaS
      |
      v
    Computational / Infrastructure Resources

The exact implementation remains a Factory concern.

~~~

# Resource Abstraction

The Framework describes resource capabilities rather than permanently binding to hardware.

For example:

    Logical Requirement
          |
          v
    Compute Capability
          |
          v
    Resource Profile
          |
          v
    Factory Resolution
          |
          +--> CPU
          +--> GPU
          +--> HPC
          +--> QPU
          +--> Cloud
          +--> Edge
          +--> Simulation
          +--> Emulation

This supports technology and provider portability.

~~~

# Simulation and Design-Space Exploration

Post-pilot Framework definitions may describe:

- simulation models
- simulation scenarios
- design variables
- parameters
- constraints
- objectives
- candidate configurations
- alternative representations
- solver requirements
- fidelity
- evidence requirements

The Framework defines the semantic structure.

The Factory provides the simulation and design-space execution mechanisms.

~~~

# Computational Path

A problem may support multiple computational paths:

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

The Framework defines the logical computational requirements.

The Factory determines which implementation and execution backend can satisfy them.

Quantum is therefore an available computational path rather than a mandatory assumption.

~~~

# QAI Assets

Post-pilot Framework definitions may include logical QAI assets such as:

- QAI Processor
- QAI Runtime
- QAI Compiler
- QAI Memory
- QAI Router
- QAI Switch
- QAI Hub
- QAI Cloud
- QAI Agent Runtime

These are logical architectural concepts.

Their implementation may be:

- virtual
- simulated
- emulated
- hybrid
- physical

The Framework defines their logical identity and relationships.

The Factory provides executable implementations.

~~~

# Evidence and Provenance

Post-pilot definitions should preserve the requirement for evidence and provenance.

A post-pilot asset should be traceable through:

    Requirement
        |
        v
    Framework Definition
        |
        v
    Capability / Asset
        |
        v
    Interface / Workflow
        |
        v
    Factory Binding
        |
        v
    Implementation
        |
        v
    Execution
        |
        v
    Result
        |
        v
    Evidence

This supports controlled promotion from pilot to post-pilot and eventually to product or deployment.

~~~

# Lifecycle and Promotion

Post-pilot assets may progress through lifecycle states such as:

    Candidate
       |
       v
    Defined
       |
       v
    Implemented
       |
       v
    Validated
       |
       v
    Standardized
       |
       v
    Product Candidate
       |
       v
    Deployable
       |
       v
    Operational

The exact lifecycle may differ by asset type.

Promotion should be supported by evidence.

~~~

# Governance and Engineering Contracts

Post-pilot Framework definitions may include contracts for:

- ownership
- approval
- security
- compliance
- lifecycle
- testing
- verification
- validation
- evidence
- provenance
- configuration
- change management
- deployment
- operational acceptance

These contracts define the expectations that Factory implementations must satisfy.

~~~

# Reuse and Scaling

Post-pilot assets should be designed for reuse where practical.

A reusable capability may support:

    Common Capability
          |
          +--> Industry A
          |
          +--> Industry B
          |
          +--> Country A
          |
          +--> Country B
          |
          +--> Client A
          |
          +--> Client B

Specialization should occur through configuration, profiles, modules and controlled extensions rather than unnecessary duplication of the core architecture.

~~~

# Greenfield and Brownfield

Post-pilot Framework definitions support both:

## Greenfield

Creation of a new solution architecture.

## Brownfield

Integration with existing systems, applications, infrastructure, repositories and processes.

The Framework defines the logical integration requirements.

The Factory implements the actual integration.

~~~

# Relationship to QAI Platform Development

The post-pilot Framework is connected to the strategic QAI Platform Development layer.

The relationship is:

    Strategic Need
          |
          v
    QAI Platform Development
          |
          v
    Product Opportunity
          |
          v
    General Framework
          |
          v
    Post-Pilot Framework Asset
          |
          v
    General Factory
          |
          v
    Product / Service / Deployment

QAI Platform Development determines what should be developed and why.

The General Framework defines what the resulting capability means.

The General Factory determines how it is implemented.

~~~

# Relationship to Pilot Assets

Pilot assets remain an important source of validated knowledge.

The relationship is:

    Pilot Asset
       |
       v
    Evidence
       |
       v
    Pattern Extraction
       |
       v
    Post-Pilot Framework Definition
       |
       v
    Factory Implementation
       |
       v
    Reusable Capability

The pilot source does not need to be moved or duplicated merely because its pattern has been promoted.

~~~

# Controlled Promotion

Not every pilot or research artifact should become a post-pilot Framework asset.

Promotion should consider whether the artifact provides:

- reusable architecture
- reusable capability
- reusable interface
- reusable workflow
- reusable model
- reusable lifecycle concept
- reusable governance pattern
- validated domain abstraction

Technology-specific implementation should remain outside the Framework.

~~~

# Architectural Traceability

A post-pilot asset should maintain traceability to its origin and downstream realization.

The traceability chain is:

    Source Requirement
          |
          v
    Pilot / Study
          |
          v
    Evidence
          |
          v
    Framework Definition
          |
          v
    Factory Implementation
          |
          v
    Product / Service
          |
          v
    Deployment

This supports controlled evolution and future auditing.

~~~

# Repository Structure

The current post-pilot Framework structure is:

    general_framework/
    |
    +-- post_pilot_assets/
        |
        +-- bootstrapper/
        |   |
        |   +-- architecture/
        |   +-- models/
        |   +-- interfaces/
        |   +-- workflows/
        |   +-- configuration/
        |   +-- deployment_profiles/
        |   +-- package_structure/
        |   +-- registries/
        |   +-- README.md
        |
        +-- deployment/
        |   |
        |   +-- industry/
        |   +-- client/
        |   +-- problem/
        |   +-- greenfield/
        |   +-- brownfield/
        |
        +-- industry/
        |
        +-- client/
        |
        +-- problem_domains/
        |
        +-- deployment_profiles/
        |
        +-- packages/
        |
        +-- modules/
        |
        +-- README.md

The structure is intended to provide stable navigation while allowing detailed definitions to evolve.

~~~

# Boundary with General Factory Post-Pilot Assets

The corresponding Factory structure contains the implementation side.

Conceptually:

    general_framework/
    post_pilot_assets/
          |
          | WHAT
          v
    general_factory/
    post_pilot_assets/
          |
          | HOW
          v
    Implementation / Deployment

The two structures should remain synchronized at the level of logical identities, contracts and lifecycle without duplicating implementation source.

~~~

# Architectural Principle

The fundamental relationship remains:

> **Framework = WHAT**

> **Factory = HOW**

> **Bootstrapper = transforms deployment definitions into deployable structures using Framework definitions and Factory implementations.**

The post-pilot Framework therefore provides the architectural foundation for moving validated capabilities toward reusable products, services and deployments while preserving the separation between architecture and implementation.

~~~

# Current Status

The Post-Pilot Assets area has been established as the architectural foundation for the next stage of General Framework evolution.

It now provides structured areas for:

- Bootstrapper architecture
- deployment definitions
- industry structures
- client structures
- problem domains
- deployment profiles
- package definitions
- engineering modules

The next stage is to progressively populate these areas with validated architectural definitions and contracts.

Implementation will continue in the corresponding General Factory post-pilot areas.

~~~

# Guiding Statement

The General Framework Post-Pilot Assets area provides the reusable architectural definitions required to transform validated ideas and pilot capabilities into engineered, productizable and deployable solutions.

Its guiding principle is:

> **Promote validated capability into reusable architecture first; implement and operationalize it through the General Factory second.**

The Framework defines the architecture.

The Factory implements the architecture.

The Bootstrapper assembles the required implementation into deployable structures.
---

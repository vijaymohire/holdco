# Consolidated QAI Product / Capability Gap Analysis

Purpose: provide one cross-country view of:

- What we have
- What is reusable
- What is missing
- What must be developed
- What can be delivered through SaaS/PaaS
- What future IaaS/resource capabilities are required
- Which gaps are common versus country-specific

~~~

## 1. Purpose

This document consolidates product and capability gaps identified across the current QAI Platform Development work.

It provides a cross-country view across:

- Canada
- India
- Australia

The analysis connects:

```text
Country Priority
      ↓
Sector
      ↓
Problem / Opportunity
      ↓
Product
      ↓
Required Capability
      ↓
Existing Capability
      ↓
Gap
      ↓
Development Requirement
      ↓
PaaS / IaaS / SaaS
```

The objective is to identify reusable platform capabilities while preserving country-specific requirements.

~~~

## 2. Cross-Country Questions

The consolidated analysis answers seven primary questions.

### 2.1 What do we have?

Existing capabilities include, where applicable:

- General Framework
- General Factory
- QAI Platform Development Method
- QAI Lab
- Pilot implementations
- Post-pilot assets
- Software Engineering capabilities
- Systems Engineering capabilities
- Resource Fabric concepts
- Simulation and emulation capabilities
- QAI virtual assets
- Workflow execution
- Problem-to-execution mapping
- PaaS architecture
- IaaS architecture
- SaaS architecture
- Reference implementations
- Shared Services
- Industry solution patterns
- Existing technology samples
- Existing data and backend integrations

The actual maturity of each capability should be recorded separately rather than assuming that an architectural definition represents a production implementation.

~~~

## 3. What Is Reusable?

The following types of capabilities are candidates for cross-country reuse.

### Platform Capabilities

- General Framework abstractions
- General Factory execution mechanisms
- Asset models
- Capability models
- Interface contracts
- Workflow models
- Resource abstraction
- Simulation / emulation
- Evidence and provenance
- Deployment mechanisms
- Bootstrapper
- PaaS engineering environment
- SaaS consumption mechanisms

### Engineering Capabilities

- Software Engineering
- Systems Engineering
- Virtual-first engineering
- Experimentation
- Verification and validation
- Design-space exploration
- Computational-path selection
- Hybrid computational execution

### Shared Services

- Governance
- Identity
- Knowledge
- Security

### Product Development Capabilities

- Product catalogue structures
- Problem-to-product mapping
- Product templates
- Workflow templates
- Client solution structures
- Deployment profiles

These reusable capabilities form the common platform foundation.

~~~

## 4. What Is Missing?

A missing capability should be assessed against the existing Framework, Factory and platform assets before being classified as a new development requirement.

Potential missing areas include:

- Domain models
- Industry-specific assets
- Data integrations
- Connectors
- Adapters
- Workflow implementations
- Resource bindings
- Backend integrations
- Security controls
- Governance controls
- Validation methods
- Deployment packages
- Client integration
- Product packaging
- SaaS workflows
- PaaS engineering features
- IaaS resource services

A missing capability may therefore represent a:

```text
Framework Gap
Factory Gap
Integration Gap
Data Gap
Resource Gap
Security Gap
Governance Gap
Validation Gap
Deployment Gap
Commercialization Gap
```

~~~

## 5. What Must Be Developed?

Development requirements should be determined only after existing capabilities and reusable components have been assessed.

Possible development actions include:

- Reuse
- Configure
- Integrate
- Extend
- Adapt
- Develop
- Research
- Partner
- Defer

The general decision path is:

```text
Gap Identified
      ↓
Existing Capability?
      │
      ├── Yes → Reuse / Configure
      │
      └── No
           ↓
     External Capability?
           │
           ├── Yes → Integrate / Partner
           │
           └── No
                ↓
          Reusable Platform Need?
                │
                ├── Yes → Extend / Develop
                │
                └── No → Research / Defer
```

~~~

## 6. SaaS Delivery Gaps

Some capabilities do not require a new platform architecture.

They may instead require productization through SaaS.

Potential SaaS gaps include:

- Client-facing workflow
- Guided input interface
- Product-specific parameters
- Result presentation
- Client onboarding
- Product catalogue entry
- Industry solution packaging
- Workflow templates
- Role-specific user experience
- Evidence presentation

The intended pattern is:

```text
Validated Platform Capability
          ↓
Approved Workflow
          ↓
Product / Use Case
          ↓
SaaS Experience
          ↓
Client
```

SaaS should remain a thin consumption layer where possible.

It should reuse existing Factory capabilities rather than duplicate backend execution logic.

~~~

## 7. PaaS Development Gaps

PaaS represents the engineering layer where capabilities are developed and validated.

Potential PaaS gaps include:

- Project workspace
- Workflow designer
- Visual workflow composition
- Code-based workflow development
- Common logical workflow representation
- Virtual asset configuration
- Simulation configuration
- Emulation configuration
- Resource configuration
- Backend selection
- Experiment management
- Validation tooling
- Project evidence
- Deployment preparation

Visual and code-based workflows should converge on a common logical workflow model.

```text
Visual Workflow
       │
       ├──────────────┐
       │              ↓
Code Workflow → Common Logical Workflow
                      ↓
                General Factory
                      ↓
                  Execution
```

~~~

## 8. Future IaaS / Resource Gaps

IaaS represents the future resource and backend service layer.

Potential resource requirements include:

- CPU
- GPU
- TPU / NPU
- FPGA
- HPC
- Virtual QPU
- Quantum simulators
- Quantum emulators
- External QPU
- RAM
- Storage
- Networks
- High-speed interconnects
- External partner resources
- Specialized compute services

The platform should first define resource requirements logically.

```text
PaaS Requirement
      ↓
Resource Requirement
      ↓
Resource Fabric
      ↓
Available Resource
      ↓
Binding
      ↓
Execution
```

This avoids making the platform dependent on one infrastructure provider.

~~~

## 9. Common Versus Country-Specific Gaps

A major purpose of the consolidated analysis is to distinguish common platform gaps from country-specific requirements.

### Common Gap

A capability required across multiple countries.

Example structure:

```text
Canada
   ┐
India
   ├── Common Capability Gap
Australia
   ┘
```

The resulting capability may be developed once in the common platform and reused.

### Country-Specific Gap

A capability driven by a particular country's:

- Policy environment
- Industry structure
- Data environment
- Infrastructure
- Market
- Regulatory requirements
- Public-sector requirements
- Local operating conditions

These gaps may require country-specific extensions without changing the common platform architecture.

~~~

## 10. Cross-Country Consolidation Model

The working comparison model is:

| Dimension | Canada | India | Australia | Common Capability |
|---|---|---|---|---|
| Priority | Country-specific input | Country-specific input | Country-specific input | Shared themes identified separately |
| Sector | Country/industry dependent | Country/industry dependent | Country/industry dependent | Reusable sector patterns where applicable |
| Problem | Local requirement | Local requirement | Local requirement | Common problem classes |
| Product | Candidate product | Candidate product | Candidate product | Reusable product family |
| Domain Model | Required where applicable | Required where applicable | Required where applicable | Shared model where possible |
| Data Integration | Country/client dependent | Country/client dependent | Country/client dependent | Common integration patterns |
| Framework | Common platform | Common platform | Common platform | General Framework |
| Factory | Common platform | Common platform | Common platform | General Factory |
| Resource | Local/partner/cloud dependent | Local/partner/cloud dependent | Local/partner/cloud dependent | Resource abstraction |
| Security | Local requirements | Local requirements | Local requirements | Common security architecture |
| Governance | Local requirements | Local requirements | Local requirements | Common governance architecture |
| Validation | Product/problem dependent | Product/problem dependent | Product/problem dependent | Common V&V mechanisms |
| PaaS | Common platform | Common platform | Common platform | Shared engineering layer |
| IaaS | Resource dependent | Resource dependent | Resource dependent | Shared resource abstraction |
| SaaS | Country/client product | Country/client product | Country/client product | Reusable SaaS patterns |

This table is a working analytical model rather than a ranking of countries or markets.

~~~

## 11. Common Platform Gaps

Potential common gaps should be considered at the platform level.

Examples include:

- More complete Registry implementation
- Registry-driven Bootstrapper
- Resolver mechanisms
- Implementation binding
- Connector / adapter expansion
- PaaS workspace
- Visual workflow designer
- Common logical workflow model
- Resource Fabric implementation
- Backend integration
- Shared evidence mechanisms
- Shared Services integration
- Deployment automation
- Product catalogue mechanisms
- SaaS workflow templates

These should be confirmed against actual implementation status before being treated as development backlog items.

~~~

## 12. Country-Specific Capability Gaps

Country-specific gaps may include:

- Local data sources
- Local APIs
- Local regulatory requirements
- Local procurement requirements
- Local industry workflows
- Local infrastructure
- Local partner integrations
- Local client requirements
- Local deployment environments

The preferred architecture is:

```text
Common Platform
      +
Country Extension
      +
Industry Extension
      +
Client Configuration
```

rather than creating separate platforms for each country.

~~~

## 13. Product Gap Model

The consolidated analysis can be organized around product families.

Potential product families include:

```text
QAI Agriculture / Digital Farm
QAI Data Centre / Compute Intelligence
QAI Hybrid Quantum Engineering
QAI AI Engineering
QAI Energy Optimization
QAI Industrial Engineering
QAI Infrastructure Resilience
QAI Public-Service Intelligence
QAI Workforce / Migration Intelligence
Defence / Engineering Decision Support
```

These are product-development candidates derived from the broader platform and priority analysis.

They should not automatically be treated as committed products.

~~~

## 14. Product → Capability → Gap

Each candidate product should be assessed through the same structure.

```text
Product
   ↓
Use Case
   ↓
Required Capabilities
   ↓
Existing Capabilities
   ↓
Reusable Capabilities
   ↓
Missing Capabilities
   ↓
Development / Integration
   ↓
Validation
   ↓
PaaS
   ↓
SaaS
   ↓
Future IaaS Requirements
```

This provides a consistent path from product concept to implementation.

~~~

## 15. Example Capability Decomposition

A product may require:

```text
Product
│
├── Domain Model
├── Data
├── Workflow
├── Simulation
├── AI / QAI Model
├── Computational Path
├── Resource
├── Security
├── Governance
├── Validation
├── Deployment
└── User Experience
```

Each component can independently be:

```text
Existing
Reusable
Partially Available
Missing
External
Research Required
```

This prevents an entire product from being classified simply as "available" or "missing."

~~~

## 16. Platform Reuse Model

The desired development pattern is:

```text
Country Requirement
       ↓
Industry Problem
       ↓
Product
       ↓
Reusable Platform Capability
       ↓
General Framework
       ↓
General Factory
       ↓
PaaS
       ↓
Validated Capability
       ↓
SaaS Product
```

Country-specific configuration should be added only where required.

~~~

## 17. Gap Resolution Through Partners

Not every infrastructure or technology gap needs to be developed internally.

Possible external capabilities include:

- Cloud infrastructure
- GPU services
- HPC
- Quantum computing
- AI models
- Data services
- Industry APIs
- Specialized software
- Specialized hardware

The platform can use:

```text
Factory
   ↓
Resource / Backend Abstraction
   ↓
Partner / External Capability
```

This supports the vendor-neutral architecture.

~~~

## 18. Validation of Gaps

Gap status should change as evidence is generated.

Example:

```text
Assumed Gap
     ↓
Investigation
     ↓
Existing Capability Found
     ↓
Gap Closed
```

Or:

```text
Suspected Gap
     ↓
Experiment
     ↓
Capability Insufficient
     ↓
Confirmed Gap
     ↓
Development
```

Therefore gap analysis should remain a living engineering artefact.

~~~

## 19. Gap Lifecycle

A consolidated gap may follow:

```text
Identified
    ↓
Analyzed
    ↓
Classified
    ↓
Resolution Selected
    ↓
Development / Integration
    ↓
Experiment
    ↓
Validation
    ↓
Closed
    ↓
Reused
```

Some gaps may instead become:

```text
Deferred
Research Candidate
Partner Requirement
Client-Specific
No Longer Required
```

~~~

## 20. Relationship to the Product Roadmap

The consolidated gap analysis feeds the product roadmap.

```text
Country Priorities
        ↓
Priority / Sector Map
        ↓
Product Opportunity
        ↓
Consolidated Gap Analysis
        ↓
Development Requirement
        ↓
Product Roadmap
        ↓
PaaS / IaaS / SaaS Development
        ↓
Pilot
        ↓
Validation
        ↓
Productization
```

The roadmap should therefore reference gaps rather than independently recreating the same analysis.

~~~

## 21. Relationship to General Framework

The Framework receives reusable architectural gaps.

Examples:

```text
Missing Common Asset Concept
        ↓
Framework Gap
        ↓
Framework Definition
```

```text
Missing Common Interface Contract
        ↓
Framework Gap
        ↓
Interface Definition
```

Country-specific implementation details should not automatically become Framework concepts.

~~~

## 22. Relationship to General Factory

The Factory receives implementation gaps.

Examples:

```text
Framework Capability Exists
        ↓
Factory Implementation Missing
        ↓
Factory Gap
        ↓
Implementation
```

Possible Factory responses include:

- Resolver
- Connector
- Adapter
- Runtime
- Workflow
- Simulation component
- Resource binding
- Deployment component
- Evidence component

~~~

## 23. Relationship to Shared Services

Some gaps should be resolved through Shared Services.

Examples:

```text
Identity Gap
     ↓
Shared Identity Service
```

```text
Governance Gap
     ↓
Shared Governance Service
```

```text
Knowledge Gap
     ↓
Shared Knowledge Service
```

```text
Security Gap
     ↓
Shared Security Service
```

This prevents every product from independently implementing the same cross-platform service.

~~~

## 24. Relationship to Asset Synchronization

Consolidated gap analysis should preserve synchronization between:

```text
Framework
   ↕
Factory
   ↕
PaaS
   ↕
IaaS
   ↕
SaaS
   ↕
Deployment
```

Relevant synchronization dimensions include:

- Identity
- Capability
- Interface
- Configuration
- Resource requirements
- Execution contracts
- Security
- Governance
- Provenance
- Lifecycle
- Maturity

~~~

## 25. Current Working Model

The consolidated analysis can therefore be summarized as:

```text
                  COUNTRY / MARKET
                         ↓
                      PRIORITY
                         ↓
                       SECTOR
                         ↓
                      PROBLEM
                         ↓
                     PRODUCT
                         ↓
              REQUIRED CAPABILITIES
                         ↓
              ┌──────────┴──────────┐
              ↓                     ↓
        EXISTING CAPABILITY       MISSING
              ↓                     ↓
            REUSE             GAP ANALYSIS
              │                     ↓
              │              RESOLVE / DEVELOP
              │                     ↓
              └──────────────┬──────┘
                             ↓
                         FRAMEWORK
                             ↓
                          FACTORY
                             ↓
                           PaaS
                             ↓
                           IaaS
                             ↓
                           SaaS
                             ↓
                         DEPLOYMENT
                             ↓
                           EVIDENCE
```

~~~

## 26. Initial Cross-Country Development Principle

The preferred development pattern is:

```text
Common Architecture
       +
Reusable Capability
       +
Country-Specific Extension
       +
Industry-Specific Extension
       +
Client Configuration
```

This allows one General Framework and General Factory to support multiple markets without requiring independent platform architectures.

~~~

## 27. What This Analysis Does Not Mean

The consolidated analysis does not imply that:

- every identified gap must be developed;
- every country requires the same product;
- every priority should become a product;
- every technology should be developed internally;
- every capability must become SaaS;
- every resource must become IaaS;
- every gap represents a technology deficiency;
- every research opportunity is automatically novel or patentable.

The purpose is to make the development requirements visible and traceable.

~~~

## 28. Next-Level Consolidation

As the country, product and gap analysis matures, this document can evolve into structured records such as:

```text
Country
  ↓
Priority
  ↓
Sector
  ↓
Problem
  ↓
Product
  ↓
Use Case
  ↓
Capability
  ↓
Gap
  ↓
Resolution
  ↓
Framework Asset
  ↓
Factory Asset
  ↓
PaaS Capability
  ↓
IaaS Requirement
  ↓
SaaS Product
  ↓
Evidence
  ↓
Deployment
```

The Markdown document should remain the human-readable consolidated view, while structured registries can later support machine-readable analysis.

~~~

## 29. Guiding Principles

1. Start with the problem and required capability.
2. Identify what already exists before defining a new development.
3. Reuse common capabilities wherever practical.
4. Distinguish common platform gaps from country-specific gaps.
5. Distinguish Framework gaps from Factory gaps.
6. Distinguish technical gaps from commercial packaging gaps.
7. Use PaaS for engineering and validation.
8. Use IaaS for resource and backend capabilities as they mature.
9. Use SaaS for validated, consumable products and solutions.
10. Use partners where external capabilities are more appropriate than internal development.
11. Preserve country-specific requirements without fragmenting the common platform.
12. Maintain traceability from priority → product → capability → gap → development → evidence.
13. Reassess gaps as new experiments and evidence become available.
14. Do not automatically convert every gap into a development project.

~~~

## 30. Guiding Statement

**The Consolidated QAI Product / Capability Gap Analysis provides the cross-country bridge between what the platform already has, what can be reused, what is missing, and what should be developed, integrated, researched, partnered or deferred.**

**The objective is one reusable platform architecture with controlled country, industry and client extensions — not separate platforms for every market.**

---

# QAI Product and Capability Gap Analysis

A gap may be a missing product layer, domain model, data integration, Framework contract, Factory implementation, resource/backend binding, security/governance control, validation method, deployment model or commercial packaging.

~~~

## 1. Purpose

The QAI Product and Capability Gap Analysis identifies what is required to move from:

```text
Priority / Problem
      ↓
Product Opportunity
      ↓
Existing Capability
      ↓
Gap
      ↓
Required Development
      ↓
Pilot
      ↓
Evidence
      ↓
Productization
```

The analysis provides a structured way to determine what is already available, what is partially available, and what must be developed.

It supports:

- QAI product development
- Platform development
- Country priority mapping
- Industry solution development
- Client solution development
- PaaS development
- IaaS/resource development
- SaaS productization
- Pilot planning
- Technology integration
- Commercialization
- Research and IP development

~~~

## 2. Gap Does Not Automatically Mean New Technology

A gap should not automatically be interpreted as requiring a new technology or new product.

A gap may instead be resolved by:

- Reusing an existing capability
- Connecting an existing implementation
- Creating a Framework contract
- Creating a Factory adapter
- Adding a data integration
- Adding a resource binding
- Adding a workflow
- Improving validation
- Adding governance
- Adding security controls
- Packaging an existing capability as SaaS
- Adding a missing domain model
- Integrating an external partner capability

Therefore:

```text
Gap
 ↓
Understand Cause
 ↓
Determine Required Capability
 ↓
Reuse / Integrate / Extend / Develop
```

~~~

## 3. Gap Categories

Initial gap categories are:

### 3.1 Product Layer Gap

A required product or service layer does not yet exist.

Examples:

- Missing SaaS product
- Missing PaaS capability
- Missing IaaS/resource service
- Missing industry solution
- Missing client-facing workflow

~~~

### 3.2 Domain Model Gap

The platform does not yet have an adequate model of the target domain.

Examples:

- Agriculture asset model
- Energy system model
- Manufacturing process model
- Infrastructure model
- Workforce model

A domain-model gap may affect:

- Assets
- Processes
- Actors
- Data
- Constraints
- Objectives
- Interfaces
- Workflows

~~~

### 3.3 Data Integration Gap

Required data is unavailable or cannot yet be integrated.

Examples:

- Missing data source
- Missing API
- Missing connector
- Missing data transformation
- Missing data model
- Missing data provenance
- Missing real-time data path

~~~

### 3.4 Framework Contract Gap

The General Framework does not yet define a required reusable abstraction or contract.

Examples:

- Missing asset definition
- Missing capability definition
- Missing interface contract
- Missing workflow contract
- Missing resource requirement
- Missing lifecycle model
- Missing evidence model

The appropriate response is to determine whether the concept is sufficiently reusable to belong in the Framework.

~~~

### 3.5 Factory Implementation Gap

The Framework concept exists, but the General Factory does not yet implement it.

Examples:

- Missing resolver
- Missing connector
- Missing adapter
- Missing execution service
- Missing simulation capability
- Missing deployment generator
- Missing evidence collection

This represents an implementation gap rather than necessarily an architectural gap.

~~~

### 3.6 Resource / Backend Gap

The required computational or infrastructure capability is not currently available.

Examples:

- CPU
- GPU
- HPC
- TPU/NPU
- FPGA
- Virtual QPU
- Quantum simulator
- Quantum emulator
- External QPU
- Storage
- Network
- Partner service

The first response should be resource abstraction and binding analysis rather than assuming that the resource must be developed internally.

~~~

### 3.7 Integration Gap

Required components exist independently but are not yet connected.

Examples:

```text
Existing Model
     +
Existing Dataset
     +
Existing Factory Capability
     ↓
Missing Integration
```

Integration may require:

- Connector
- Adapter
- API
- Interface
- Workflow
- Data mapping
- Authentication
- Authorization
- Resource binding

~~~

### 3.8 Security / Governance Gap

The technical capability exists but the required controls are incomplete.

Examples:

- Identity
- Authentication
- Authorization
- Policy
- Approval
- Audit
- Security classification
- Data protection
- Evidence
- Compliance mapping

Shared Services may provide common solutions for these gaps.

~~~

### 3.9 Validation Gap

A capability exists but there is insufficient evidence to establish its behavior or suitability.

Examples:

- Missing benchmark
- Missing baseline
- Missing test
- Missing simulation
- Missing emulation
- Missing V&V method
- Missing acceptance criteria
- Missing operational evidence
- Missing value evidence

A validation gap does not necessarily mean the underlying technology is missing.

~~~

### 3.10 Deployment Gap

A capability has been developed but cannot yet be deployed in the intended environment.

Examples:

- Missing deployment profile
- Missing package
- Missing configuration
- Missing infrastructure binding
- Missing client integration
- Missing brownfield integration
- Missing greenfield deployment model

~~~

### 3.11 Commercial Packaging Gap

A technically valid capability exists but is not yet packaged for practical consumption.

Examples:

- Missing SaaS workflow
- Missing pricing model
- Missing service definition
- Missing client onboarding
- Missing documentation
- Missing support model
- Missing marketplace/catalogue entry

~~~

## 4. Existing Capability Before Gap

Gap analysis should begin by identifying what already exists.

The initial assessment should consider:

```text
Existing Framework
Existing Factory
Existing Pilot
Existing Post-Pilot Asset
Existing Reference Implementation
Existing QAI Lab Capability
Existing PaaS Capability
Existing IaaS Capability
Existing SaaS Capability
Existing Resource
Existing Partner Capability
```

This prevents development of duplicate capabilities.

~~~

## 5. Gap Analysis Record

A gap can be represented using a common record such as:

```text
Gap ID
Country
Priority Area
Industry
Problem Domain
Product Opportunity
Use Case
Existing Capability
Gap Category
Gap Description
Required Capability
Framework Requirement
Factory Requirement
Data Requirement
Resource Requirement
Security / Governance Requirement
Validation Requirement
Deployment Requirement
Commercial Requirement
Proposed Resolution
Dependencies
Evidence
Status
Owner
Target Milestone
```

The exact registry structure can evolve as implementation requirements become clearer.

~~~

## 6. Gap Identification Flow

The recommended analysis flow is:

```text
Country / Industry Priority
          ↓
Problem
          ↓
Use Case
          ↓
Required Capability
          ↓
Existing Capability Assessment
          ↓
Gap Identification
          ↓
Gap Classification
          ↓
Resolution Analysis
          ↓
Development Requirement
          ↓
Pilot / Validation
          ↓
Evidence
          ↓
Productization
```

~~~

## 7. Resolution Types

Each identified gap should be assigned a proposed resolution type.

Initial resolution types:

- Reuse
- Configure
- Integrate
- Extend
- Adapt
- Develop
- Research
- Partner
- Defer
- Retire / Not required

For example:

```text
Gap
 ↓
Existing capability available?
 ├── Yes → Reuse / Configure
 └── No
       ↓
Existing external capability?
 ├── Yes → Integrate / Partner
 └── No
       ↓
Reusable platform capability?
 ├── Yes → Extend / Develop
 └── No → Research / Defer
```

This keeps gap analysis connected to practical development decisions.

~~~

## 8. Framework vs Factory Gap

An important distinction is:

```text
Is the abstraction missing?
        ↓
Framework Gap

Is the implementation missing?
        ↓
Factory Gap
```

Both may occur together.

Example:

```text
New Resource Type
      ↓
Framework does not define it
      ↓
Framework Gap
      ↓
Define Resource Capability
      ↓
Factory does not implement binding
      ↓
Factory Gap
```

~~~

## 9. PaaS / IaaS / SaaS Gap Mapping

Gap analysis should identify which service layer is affected.

### PaaS

Typical gaps:

- Engineering workspace
- Workflow designer
- Code integration
- Project configuration
- Simulation
- Experimentation
- Developer resource access

### IaaS

Typical gaps:

- Resource inventory
- Resource profiles
- Resource provisioning
- Backend connectivity
- GPU/HPC/QPU access
- Storage
- Network
- Resource monitoring

### SaaS

Typical gaps:

- Product workflow
- Guided inputs
- Client UX
- Product catalogue
- Result presentation
- Client onboarding
- Commercial packaging

```text
PaaS Gap
   ↓
Engineering Capability

IaaS Gap
   ↓
Resource Capability

SaaS Gap
   ↓
Consumption Capability
```

~~~

## 10. Country Priority to Gap Analysis

Country priorities provide one source of potential product requirements.

The relationship is:

```text
Country
  ↓
Priority Area
  ↓
Sector
  ↓
Problem
  ↓
Product Opportunity
  ↓
Required Capability
  ↓
Existing Capability
  ↓
Gap
```

The country-priority files should therefore remain linked to gap analysis rather than directly determining a product.

Policy priority and product opportunity should remain distinguishable.

~~~

## 11. Industry and Client Gap Analysis

The same method applies to industry and client requirements.

### Industry

```text
Industry
 ↓
Industry Problem
 ↓
Common Capability
 ↓
Gap
 ↓
Industry Solution
```

### Client

```text
Client
 ↓
Client Problem
 ↓
Client Requirements
 ↓
Existing Platform Capability
 ↓
Client-Specific Gap
 ↓
Client Solution
```

This allows common platform gaps to be distinguished from one-off client customization.

~~~

## 12. Greenfield and Brownfield

Gap analysis should distinguish deployment context.

### Greenfield

A new environment may require:

- Architecture
- Assets
- Interfaces
- Workflows
- Resources
- Security
- Deployment configuration

### Brownfield

An existing environment may already contain:

- Applications
- Data
- Hardware
- Networks
- Processes
- APIs
- Legacy systems

Therefore brownfield gaps may primarily be:

- Integration
- Modernization
- Migration
- Interoperability
- Data transformation
- Security modernization

~~~

## 13. Pilot and Post-Pilot Gaps

Pilot gaps should remain distinguishable from post-pilot gaps.

### Pilot

Focus:

```text
Can the concept work?
```

### Post-Pilot

Focus:

```text
Can the capability become reusable,
deployable and productizable?
```

A capability that works in a notebook may still have post-pilot gaps in:

- Factory integration
- Security
- Resource management
- Deployment
- Validation
- UX
- Packaging
- Scalability

~~~

## 14. Gap Analysis and Reference Implementations

Reference implementations can reveal gaps.

```text
Technology Sample
       ↓
Study
       ↓
Capability Observation
       ↓
Pattern Extraction
       ↓
Existing Framework Assessment
       ↓
Gap
       ↓
Potential Framework / Factory Development
```

A reference implementation itself is not automatically a platform gap.

The reusable capability or missing contract must first be identified.

~~~

## 15. Gap Analysis and Asset Synchronization

Gap analysis should use the common asset model.

Relevant dimensions include:

- Identity
- Capability
- Interface
- Configuration
- Resource model
- Execution contract
- Security
- Policy
- Provenance
- Lifecycle
- Maturity

This helps determine whether a gap exists in one layer or across several synchronized layers.

~~~

## 16. Gap Status

An initial status vocabulary may be:

- Identified
- Under Analysis
- Existing Capability Found
- Reuse Candidate
- Integration Required
- Framework Required
- Factory Required
- Research Required
- Pilot Required
- Validation Required
- Productization Required
- Deferred
- Closed

Status should describe the state of the gap, not its business value.

~~~

## 17. Evidence and Traceability

Each significant gap should be traceable to its source.

Potential evidence includes:

- Country priority source
- Industry requirement
- Client requirement
- Technology study
- Pilot result
- Benchmark
- Existing implementation
- Architecture review
- Regulatory requirement
- Security requirement
- Commercial requirement

The traceability chain can be:

```text
Source
 ↓
Priority / Requirement
 ↓
Problem
 ↓
Capability
 ↓
Gap
 ↓
Resolution
 ↓
Development
 ↓
Evidence
 ↓
Product
```

~~~

## 18. Gap Analysis and Product Roadmap

Gap analysis feeds the product roadmap.

```text
Gap Analysis
      ↓
Required Development
      ↓
Candidate Product Capability
      ↓
Development Milestone
      ↓
Pilot
      ↓
Validation
      ↓
Productization
```

Not every identified gap needs to become a roadmap item.

Some gaps may be:

- Resolved through reuse
- Resolved through integration
- Client-specific
- Deferred
- Research candidates
- No longer required

~~~

## 19. Gap Analysis and IP / Research

Some gaps may reveal opportunities for research or new intellectual property.

A potential research candidate may arise when:

```text
Required Capability
      ↓
No suitable existing implementation
      ↓
Existing approaches insufficient
      ↓
Technical research required
      ↓
Novel architecture / method candidate
```

Gap analysis therefore provides an input to research planning, but a gap alone does not establish novelty or patentability.

~~~

## 20. Gap Analysis and Commercial Development

Commercial gaps may exist even when technical capability is mature.

For example:

```text
Technical Capability
      ↓
Validated
      ↓
Missing Product Packaging
      ↓
SaaS / Service Gap
      ↓
Productization
```

This distinction helps prevent treating every commercial requirement as a technology-development problem.

~~~

## 21. Gap Prioritization

The gap-analysis repository should record evidence and dependencies rather than prematurely assigning universal rankings.

Where prioritization is required for a particular roadmap, the criteria should be explicitly documented.

Possible criteria include:

- Customer requirement
- Strategic relevance
- Technical dependency
- Reuse potential
- Validation effort
- Resource availability
- Commercial readiness
- Regulatory requirement
- Research uncertainty
- Time dependency

Prioritization remains a separate planning activity from identifying the gap itself.

~~~

## 22. Gap Analysis Registry

A future registry may maintain structured records such as:

```text
gap_registry
│
├── gap_id
├── source
├── country
├── industry
├── problem_domain
├── product
├── use_case
├── category
├── existing_capability
├── required_capability
├── resolution_type
├── framework_requirement
├── factory_requirement
├── resource_requirement
├── validation_requirement
├── deployment_requirement
├── commercial_requirement
├── dependencies
├── evidence
├── status
└── lifecycle
```

The registry can later be implemented as JSON, YAML, database records or another suitable representation.

~~~

## 23. Relationship to Product Roadmap

The relationship between the major QAI Platform Development artefacts is:

```text
Country Priorities
        ↓
Priority → Sector Mapping
        ↓
Product Roadmap
        ↓
Gap Analysis
        ↓
Required Development
        ↓
General Framework
        ↓
General Factory
        ↓
PaaS / IaaS / SaaS
        ↓
Pilot / Product
```

The actual development sequence may move in both directions as new evidence is discovered.

~~~

## 24. Relationship to QAI Platform Development Method

Gap analysis is primarily used between **problem discovery and development planning**, but it can be revisited throughout the lifecycle.

```text
Discover
   ↓
Study
   ↓
Assess Existing Capability
   ↓
Identify Gap
   ↓
Define / Implement
   ↓
Experiment
   ↓
Pilot
   ↓
Validate
   ↓
Reassess Gaps
   ↓
Generalize
   ↓
Productize
```

Validation may reveal new gaps or close existing ones.

~~~

## 25. Current Gap-Analysis Model

The current model is therefore:

```text
                PRIORITY / REQUIREMENT
                         ↓
                       PROBLEM
                         ↓
                      USE CASE
                         ↓
                 REQUIRED CAPABILITY
                         ↓
              EXISTING CAPABILITY
                         ↓
                    GAP ANALYSIS
                         ↓
        ┌────────────────┼────────────────┐
        ↓                ↓                ↓
     Framework         Factory         Resource
        Gap              Gap             Gap
        ↓                ↓                ↓
     Integration / Research / Validation
                         ↓
                    Development
                         ↓
                     Evidence
                         ↓
                    Productization
```

The model is intended to remain reusable across countries, industries, products and clients.

~~~

## 26. Guiding Principles

1. Identify existing capabilities before creating new ones.
2. Distinguish Framework gaps from Factory gaps.
3. Distinguish technical gaps from commercial packaging gaps.
4. Treat data, resources, security, governance and validation as first-class gap categories.
5. Use country and industry priorities as sources of requirements, not automatic product decisions.
6. Reuse existing capabilities wherever practical.
7. Prefer integration before unnecessary duplication.
8. Distinguish pilot gaps from post-pilot gaps.
9. Preserve traceability from source to gap to development.
10. Use evidence to close or refine gaps.
11. Allow gaps to be resolved through reuse, integration, extension, development, research or partnership.
12. Keep PaaS, IaaS and SaaS gaps connected to the common platform architecture.
13. Feed validated gaps into the product roadmap.
14. Keep research and IP candidates traceable to the technical gap that motivated them.
15. Keep gap identification separate from prioritization and business judgment.

~~~

## 27. Guiding Statement

**Gap analysis identifies what is missing between a required capability and the capabilities already available, then provides a traceable path from gap → resolution → development → evidence → productization.**

**The objective is not to build everything that is missing, but to determine what should be reused, integrated, extended, developed, researched, partnered or deferred.**
~~~
---

# Post-Pilot Reference Baseline v1.0

## Milestone purpose

Establish the first post-pilot strategic reference baseline for QAI platform and product development.

This milestone marks the transition from a primarily pilot-oriented development model toward a structured post-pilot platform and product-development model.

The baseline establishes the common reference structure used to organize:

- Platform architecture
- Engineering capabilities
- Service models
- Country priorities
- Product opportunities
- Gap analysis
- Product catalogues
- Registries
- Future product-development work

~~~

## Baseline includes

The baseline includes the following major areas.

### QAI Platform Development Framework

Establishes the repeatable method for developing QAI platform capabilities and products.

Core progression:

```text
Discover
   ↓
Study
   ↓
Define
   ↓
Implement
   ↓
Experiment
   ↓
Pilot
   ↓
Validate
   ↓
Generalize
   ↓
Productize
   ↓
Scale
```

~~~

### General Framework / General Factory Post-Pilot Module Structure

Establishes the post-pilot separation between:

```text
General Framework
       ↓
Defines reusable architecture and contracts

General Factory
       ↓
Implements reusable execution and engineering capabilities
```

The baseline includes post-pilot structures for:

- Bootstrapper
- Deployment
- Industry
- Client
- Problem domains
- Deployment profiles
- Packages
- Engineering modules
- Generated deployments
- Supporting platform capabilities

~~~

### Core / Add-On Module Synchronization

The baseline preserves the distinction between:

- Core platform capabilities
- Add-on engineering capabilities
- Pilot assets
- Post-pilot assets

The engineering add-ons include, where applicable:

- Software Engineering
- Systems Engineering
- Resource Fabric
- Simulation
- Other engineering capabilities introduced as the platform develops

The objective is controlled reuse rather than independent platform branches.

~~~

### SaaS / PaaS / IaaS Synchronized Service Model

The baseline establishes the service-model relationship:

```text
PaaS
BUILD / ENGINEER
      ↓
IaaS
RESOURCE / BACKEND
      ↓
SaaS
CONSUME / DELIVER
```

PaaS provides the engineering environment.

IaaS provides resource and backend capabilities.

SaaS provides the controlled product-consumption layer.

The three service models may mature at different rates while remaining synchronized through the common platform architecture.

~~~

### PaaS / Technology Implementation Sample Catalogue

The baseline establishes a structured place for technology and implementation samples.

Samples may include:

- PaaS implementation samples
- Technology samples
- Pilot implementation samples
- Backend samples
- Reference implementations
- Workflow samples

The purpose is to preserve useful implementation evidence without allowing technology-specific samples to define the General Framework architecture.

~~~

### Common National Priority Taxonomy

The baseline establishes a common analytical vocabulary for country-priority analysis.

Initial common areas include:

- AI and Digital Transformation
- Defence, Security and Resilience
- Quantum and Emerging Technologies
- Compute, Data Centres and Digital Infrastructure
- Energy and Resource Efficiency
- Agriculture and Food Systems
- Workforce, Skills and Productivity
- Public-Service Modernization
- Industrial Modernization

These categories provide a shared analytical taxonomy.

They are not a ranking of national priorities.

~~~

### Canada, India and Australia Country Profiles

The baseline establishes country-specific priority structures for:

```text
Canada
India
Australia
```

Each country profile provides a country-specific context that can be mapped to the common priority taxonomy.

The country profiles should preserve source traceability and distinguish documented priorities from analytical opportunity mapping.

~~~

### Priority-to-Product Mapping Structure

The baseline establishes the traceability layer:

```text
Country
   ↓
National Priority
   ↓
Sector
   ↓
Problem
   ↓
Required Capability
   ↓
QAI Product
   ↓
Existing Asset
   ↓
Gap
   ↓
Pilot
   ↓
Evidence
   ↓
Productization
```

This provides the connection between country-level requirements and platform/product development.

~~~

### Common Product Opportunity Families

The baseline establishes a place for reusable product families.

Examples identified during the platform-development work include:

- QAI Agriculture / Digital Farm
- QAI Data Centre / Compute Intelligence
- QAI Hybrid Quantum Engineering
- QAI AI Engineering
- QAI Energy Optimization
- QAI Industrial Engineering
- QAI Infrastructure Resilience
- QAI Public-Service Intelligence
- QAI Workforce / Migration Intelligence
- Defence / Engineering Decision Support

These are product opportunity families rather than a commitment that every listed product will be developed.

~~~

### Country-Specific Product Opportunity Structure

The baseline establishes a separate structure for products or product variants driven by country-specific requirements.

The intended model is:

```text
Common Platform
      +
Country Requirements
      +
Industry Requirements
      +
Client Requirements
```

Country-specific products should reuse common platform capabilities wherever practical.

~~~

### Product / Capability Gap-Analysis Structure

The baseline establishes gap analysis as a separate development layer.

Potential gaps include:

- Product-layer gaps
- Domain-model gaps
- Data gaps
- Framework gaps
- Factory gaps
- Integration gaps
- Resource/backend gaps
- Security/governance gaps
- Validation gaps
- Deployment gaps
- Commercial packaging gaps

The gap-analysis process should first identify what already exists before treating something as a new development requirement.

~~~

### Strategic Product Catalogue and Registries

The baseline establishes the initial strategic product catalogue and machine-readable registry direction.

The product catalogue captures fields such as:

```text
Product ID
Product Family
Country / Sector
Problem
Priority Source
Target Client / User
Existing Assets
Required New Capabilities
PaaS / SaaS / IaaS Relationship
Pilot Candidate
Evidence Status
Product Maturity
IP Opportunity
Dependencies
```

Associated registries provide machine-readable structures for:

- Country priorities
- Product opportunities
- Future milestone information where justified

~~~

## Baseline principle

National priority → sector → problem → product → existing asset → gap → development → pilot → evidence → productization.

This principle provides the primary traceability chain for the post-pilot product-development model.

The sequence is not necessarily a strictly linear execution process.

New evidence may cause the analysis to move backward:

```text
Evidence
   ↓
New Gap
   ↓
Capability Revision
   ↓
Product Revision
```

The baseline therefore supports iterative development.

~~~

## Architectural principle

The post-pilot baseline maintains the separation between strategic product requirements and engineering implementation.

```text
Priority / Problem
       ↓
Product Opportunity
       ↓
Required Capability
       ↓
General Framework
       ↓
General Factory
       ↓
PaaS / IaaS / SaaS
       ↓
Deployment
```

This prevents the product roadmap from becoming an implementation architecture and prevents implementation technologies from independently defining product strategy.

~~~

## Common versus country-specific development

The baseline supports:

```text
Common Capability
      ↓
Common Product
      ↓
Country Configuration
      ↓
Industry Configuration
      ↓
Client Configuration
```

Where a requirement is genuinely country-specific:

```text
Country Requirement
      ↓
Country Product
      ↓
Common Platform
      +
Country Extension
```

The objective is controlled specialization rather than separate platform architectures.

~~~

## Pilot relationship

The baseline builds on the completed pilot work.

The pilot provides:

- Working implementation evidence
- Experiment structures
- Workflow patterns
- Domain knowledge
- Validation observations
- Reference implementations

The post-pilot baseline generalizes these where appropriate.

```text
Pilot
  ↓
Evidence
  ↓
Pattern Extraction
  ↓
Post-Pilot Asset
  ↓
Reusable Platform Capability
  ↓
Product
```

Pilot implementation should remain available as a historical/reference baseline rather than being silently replaced by post-pilot structures.

~~~

## Product development relationship

The baseline establishes the development path:

```text
Priority
   ↓
Problem
   ↓
Capability
   ↓
Product
   ↓
PaaS Engineering
   ↓
IaaS / Resource Integration
   ↓
Pilot
   ↓
Evidence
   ↓
SaaS / Productization
```

Not every product must follow exactly the same path.

The appropriate path depends on the problem, capability, evidence requirements and available resources.

~~~

## Evidence and provenance

The baseline should preserve traceability between:

- Priority source
- Problem definition
- Product opportunity
- Existing assets
- Gap analysis
- Development
- Pilot
- Evidence
- Product maturity

This allows later review of why a product opportunity was created and how its development state was established.

~~~

## Repository baseline

The milestone should represent the reviewed repository state containing the post-pilot reference structures.

The baseline should be established only after:

1. Generated structure is reviewed.
2. Expected folders are present.
3. Expected files are present.
4. No unintended generated or temporary files are included.
5. Existing pilot/reference assets remain intact.
6. README and registry structures are consistent.
7. Git status is reviewed.
8. The final commit is created.
9. The repository tree is verified.
10. The milestone tag is created.

~~~

## Suggested Git milestone

Commit message:

`feat: establish post-pilot QAI platform reference baseline`

Suggested tag:

`v0.1.0-post-pilot-reference-baseline`

The tag should be created only after the generated structure is reviewed and the repository tree is verified.

~~~

## Milestone significance

This baseline represents the transition from:

```text
Pilot-Centric Development
        ↓
Post-Pilot Platform Development
```

It establishes the foundation for subsequent work on:

- General Framework
- General Factory
- General Factory Bootstrapper
- PaaS
- IaaS
- SaaS
- Resource Fabric
- Shared Services
- Country products
- Common products
- Product catalogue
- Gap analysis
- Product validation
- Client deployment

~~~

## What this baseline does not establish

This milestone does not imply that all referenced capabilities are fully implemented.

It establishes the **strategic and repository structure** for their progressive development.

In particular, the baseline should not be interpreted as establishing:

- Production-ready PaaS
- Production-ready IaaS
- Production-ready SaaS
- Complete Resource Fabric
- Complete country product portfolio
- Validated market demand for every product opportunity
- Production-grade implementation of every Framework concept
- Patentability of identified IP opportunities

Those capabilities require subsequent implementation and evidence.

~~~

## Relationship to future milestones

Future milestones can build on this baseline:

```text
v0.1.0
Post-Pilot Reference Baseline
        ↓
PaaS Engineering Baseline
        ↓
IaaS / Resource Integration Baseline
        ↓
SaaS Product Baseline
        ↓
Product Validation Baseline
        ↓
Client Deployment Baseline
```

Each subsequent milestone should preserve a traceable relationship to this initial post-pilot baseline.

~~~

## Guiding statement

**The Post-Pilot Reference Baseline establishes the common strategic structure through which QAI priorities, products, capabilities, engineering assets, gaps, pilots, evidence and productization can evolve as one coordinated platform-development system.**

**Start from validated needs, preserve the pilot evidence, generalize what is reusable, and develop outward from the common platform.**

---

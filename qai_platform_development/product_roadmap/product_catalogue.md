# QAI Product Catalogue — Strategic Baseline

Required fields:

- Product ID
- Product family
- Country/sector
- Problem
- Priority source
- Target client/user
- Existing assets
- Required new capabilities
- PaaS/SaaS/IaaS relationship
- Pilot candidate
- Evidence status
- Product maturity
- IP opportunity
- Dependencies

~~~

## 1. Purpose

The QAI Product Catalogue provides the structured product-level view of the QAI Platform Development portfolio.

It records candidate, developing, validated and productized offerings using a common information model.

The catalogue connects:

```text
Priority
   ↓
Problem
   ↓
Product
   ↓
Capability
   ↓
Existing Assets
   ↓
Gaps
   ↓
Development
   ↓
Pilot
   ↓
Evidence
   ↓
Productization
```

The catalogue is a strategic and traceability artefact.

It is not itself the implementation repository.

~~~

## 2. Relationship to the Product Roadmap

The Product Roadmap defines the product opportunity and development approach.

The Product Catalogue provides the structured representation of individual products.

```text
Product Roadmap
      ↓
Product Opportunity
      ↓
Product Catalogue Record
      ↓
Development / Pilot
      ↓
Evidence
      ↓
Product Maturity
```

The roadmap may contain opportunities that have not yet reached catalogue maturity.

~~~

## 3. Product Record

Each product should have a unique Product ID.

Example:

```text
Product ID:
QAI-PROD-AGRI-001
```

The identifier should remain stable while product names, versions and implementation details evolve.

Product IDs should not encode excessive implementation information.

~~~

## 4. Product Family

The product family groups related products or capabilities.

Potential families include:

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

The catalogue should allow additional families to be introduced as validated opportunities emerge.

~~~

## 5. Country / Sector

Each product should identify its geographic and sector context.

Example:

```text
Country:
Canada

Sector:
Agriculture
```

A product may be:

- Common / cross-country
- Country-specific
- Multi-country
- Industry-specific
- Client-specific

Country and sector should therefore be represented independently where possible.

~~~

## 6. Problem

Every product should identify the problem it is intended to address.

The problem should describe the operational, business, engineering or societal need rather than simply naming a technology.

Example:

```text
Problem:
Agricultural resource optimization under
variable environmental and operational conditions.
```

The product should be traceable back to its problem definition.

~~~

## 7. Priority Source

The priority source records why the problem has entered the product-development analysis.

Potential sources include:

- National strategy
- Government priority
- Industry requirement
- Client requirement
- Research finding
- Pilot observation
- Market evidence
- Technology study
- Internal platform requirement

Where a national priority is involved, the source should identify the relevant document or authoritative reference.

The catalogue should distinguish:

```text
Source-backed priority
        from
Analytical opportunity
        from
Product proposal
```

~~~

## 8. Target Client / User

Each product should identify its intended user or customer group.

Potential categories include:

- Enterprise
- SME
- Startup
- Government
- Research organization
- Industrial operator
- Agriculture operator
- Engineering organization
- Data centre operator
- Developer
- Data scientist
- Systems engineer
- Business analyst
- Domain expert
- End user

A product may have multiple user roles.

~~~

## 9. Existing Assets

The catalogue should identify what already exists.

Potential assets include:

- General Framework
- General Factory
- QAI Lab
- Pilot assets
- Post-pilot assets
- Reference implementations
- Engineering modules
- Domain models
- Workflows
- Simulation
- Emulation
- Resource Fabric
- Shared Services
- PaaS capabilities
- IaaS capabilities
- SaaS components
- Existing data integrations
- External partner capabilities

This field is important for avoiding duplicate development.

~~~

## 10. Required New Capabilities

The catalogue should identify what is not yet available.

Potential requirements include:

- Framework capability
- Factory implementation
- Domain model
- Data integration
- Workflow
- Simulation
- Emulation
- Resource binding
- Backend integration
- Security
- Governance
- Validation
- Deployment
- User experience
- Commercial packaging

Each requirement should be linked to the appropriate gap-analysis record where practical.

~~~

## 11. PaaS / SaaS / IaaS Relationship

Each product should describe how it relates to the three service models.

### PaaS

Defines what must be engineered, configured, tested and validated.

### IaaS

Defines the computational, storage, networking and backend resources required.

### SaaS

Defines how the validated capability can be consumed as a product or client solution.

The relationship can be represented as:

```text
PaaS
  ↓
Build / Engineer / Validate
  ↓
IaaS
  ↓
Resource / Backend
  ↓
SaaS
  ↓
Consume
```

Not every product will require the same level of PaaS, IaaS or SaaS development.

~~~

## 12. Pilot Candidate

The catalogue records whether a product has a suitable pilot candidate.

A pilot may be:

- Existing pilot
- New pilot required
- Pilot candidate identified
- Pilot active
- Pilot completed
- No pilot currently required

Example:

```text
Product
  ↓
Pilot Candidate
  ↓
Pilot Definition
  ↓
Execution
  ↓
Evidence
```

An existing pilot should be referenced rather than duplicated.

~~~

## 13. Evidence Status

Evidence status describes the current evidence supporting the product.

Potential states include:

- None
- Conceptual
- Study Evidence
- Prototype Evidence
- Simulation Evidence
- Emulation Evidence
- Pilot Evidence
- Technical Validation
- Operational Validation
- User Validation
- Value Evidence
- Product Validation

Multiple evidence types may coexist.

Evidence should be traceable to its source.

~~~

## 14. Product Maturity

Product maturity should be kept separate from technology maturity.

Suggested product lifecycle:

```text
Opportunity
   ↓
Concept
   ↓
Prototype
   ↓
Pilot
   ↓
Validated
   ↓
Post-Pilot
   ↓
Productized
   ↓
Deployable
   ↓
Operational
```

A product may remain at an early maturity while the underlying technology is mature.

Conversely, a product can use mature technology while its own productization remains immature.

~~~

## 15. IP Opportunity

The catalogue may identify potential IP opportunities associated with the product.

Possible values include:

- None identified
- Architecture candidate
- Algorithm candidate
- Method candidate
- Software candidate
- Workflow candidate
- Interface candidate
- Resource-management candidate
- Domain-specific implementation candidate
- Research candidate
- Patent review required

The field identifies an opportunity for further assessment.

It does not establish novelty, ownership or patentability.

Formal IP assessment should remain a separate activity.

~~~

## 16. Dependencies

Dependencies identify capabilities required for the product to progress.

Potential dependencies include:

- Framework assets
- Factory assets
- Shared Services
- Data
- Domain models
- AI/QAI models
- Simulation
- Resource Fabric
- GPU
- HPC
- Quantum simulator
- External QPU
- Cloud services
- APIs
- Partner systems
- Security services
- Governance services
- Client systems

Dependencies should be explicit where they affect development or deployment.

~~~

## 17. Additional Recommended Fields

The strategic baseline can be extended with the following fields where useful:

```text
Product ID
Product Name
Product Family
Country
Sector
Priority
Priority Source
Problem
Use Case
Target Client / User
Required Capability
Existing Assets
Required New Capabilities
Gap IDs
PaaS Relationship
IaaS Relationship
SaaS Relationship
Pilot Candidate
Evidence Status
Product Maturity
IP Opportunity
Dependencies
External Partners
Common / Country-Specific
Owner
Version
Lifecycle Status
Notes
```

These additions preserve the original required fields while making the catalogue more useful for implementation tracking.

~~~

## 18. Common Product Records

Common products should be stored or referenced under:

```text
product_roadmap/common_products/
```

A common product should normally represent a reusable product family or capability that can support multiple countries, industries or clients.

Example structure:

```text
Common Product
      ↓
Country Configuration
      ↓
Industry Configuration
      ↓
Client Configuration
```

~~~

## 19. Country Product Records

Country-specific products should be stored or referenced under:

```text
product_roadmap/country_products/
```

A country product may be required because of:

- Country-specific priority
- Local problem
- Local data
- Local regulation
- Local infrastructure
- Local procurement
- Local industry structure
- Local client requirements

It should still reuse common platform capabilities where practical.

~~~

## 20. Product Catalogue and Priority Mapping

Priority Mapping establishes the origin of the product opportunity.

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
```

The Product Catalogue records the resulting product in a structured form.

Priority Mapping therefore provides the traceability context, while the catalogue provides the product record.

~~~

## 21. Product Catalogue and Gap Analysis

The catalogue should reference the gap analysis where a product has missing capabilities.

```text
Product
   ↓
Existing Assets
   ↓
Required Capabilities
   ↓
Gap IDs
   ↓
Development
```

The catalogue should not duplicate the detailed gap analysis.

It should reference the relevant gap or gaps.

~~~

## 22. Product Catalogue and General Framework

The catalogue identifies the Framework capabilities required by the product.

```text
Product Requirement
       ↓
Reusable Capability
       ↓
General Framework
```

Where a product reveals a reusable abstraction that is not yet defined, that requirement may become a Framework development candidate.

~~~

## 23. Product Catalogue and General Factory

The catalogue identifies the Factory capabilities required to implement the product.

```text
Framework Capability
       ↓
General Factory
       ↓
Implementation
       ↓
Product Workflow
```

Factory implementation may include:

- Resolver
- Connector
- Adapter
- Runtime
- Workflow
- Simulation
- Resource binding
- Evidence
- Deployment

~~~

## 24. Product Catalogue and PaaS

PaaS provides the engineering environment for product development.

A catalogue record should therefore identify relevant PaaS requirements such as:

- Workspace
- Workflow design
- Code development
- Visual workflow
- Virtual asset configuration
- Simulation
- Emulation
- Testing
- Resource configuration
- Validation
- Deployment preparation

~~~

## 25. Product Catalogue and IaaS

IaaS provides the resource/backend requirements.

A catalogue record may identify:

```text
Resource Type
Capability
Capacity
Location
Availability
Access
Performance
Cost / Quota
Security Classification
Provider
```

The product should express logical resource requirements where possible rather than prematurely binding itself to a particular infrastructure provider.

~~~

## 26. Product Catalogue and SaaS

SaaS provides the consumption layer.

A catalogue record may identify:

- SaaS workflow
- Required inputs
- Outputs
- User roles
- Guided parameters
- Product UX
- Execution path
- Results
- Evidence
- Client configuration

The preferred pattern is:

```text
SaaS
 ↓
Factory / Fabric Calls
 ↓
Existing Platform Capability
 ↓
Result
```

SaaS should avoid duplicating backend execution logic.

~~~

## 27. Product and Evidence Traceability

A product should maintain a traceability chain:

```text
Priority Source
      ↓
Problem
      ↓
Capability
      ↓
Product
      ↓
Existing Assets
      ↓
Gap
      ↓
Pilot
      ↓
Evidence
      ↓
Maturity
```

This makes it possible to understand why a product exists, what supports it and how far it has progressed.

~~~

## 28. Product and Asset Synchronization

Product records should remain synchronized with platform assets.

Relevant dimensions include:

- Identity
- Capability
- Interface
- Configuration
- Resource requirements
- Execution contract
- Security
- Governance
- Provenance
- Lifecycle
- Maturity

```text
Product
   ↕
Framework Asset
   ↕
Factory Asset
   ↕
PaaS Capability
   ↕
IaaS Requirement
   ↕
SaaS Workflow
```

Changes to reusable platform assets should be traceable to affected products.

~~~

## 29. Product Status

A common status vocabulary may include:

- Opportunity
- Under Analysis
- Concept
- Capability Definition
- PaaS Development
- Pilot Candidate
- Pilot Active
- Validation
- Post-Pilot
- Productization
- SaaS Candidate
- Productized
- Deployable
- Operational
- Deferred
- Research Candidate
- Retired

Status describes product lifecycle state and should not be interpreted as a ranking.

~~~

## 30. Product Record Example

A simplified record can be represented as:

```text
Product ID:
QAI-PROD-AGRI-001

Product Family:
QAI Agriculture / Digital Farm

Country/Sector:
Canada / Agriculture

Problem:
Agricultural resource optimization

Priority Source:
Relevant country priority source

Target Client/User:
Agricultural operator / agriculture organization

Existing Assets:
General Framework
General Factory
QAI Agriculture Pilot
QAI Lab
Optimization Workflow

Required New Capabilities:
Post-pilot productization
Additional domain/data integration
Resource integration

PaaS Relationship:
Engineering and validation workspace

IaaS Relationship:
Compute / storage / backend resources as required

SaaS Relationship:
Guided agriculture optimization workflow

Pilot Candidate:
Existing agriculture pilot

Evidence Status:
Pilot evidence available; further post-pilot validation required

Product Maturity:
Post-Pilot Development

IP Opportunity:
To be assessed

Dependencies:
Data
Domain model
Resource integration
Security
Governance
```

This is an illustrative catalogue record structure rather than a statement that every field has already been validated for a particular market.

~~~

## 31. Machine-Readable Future

The Markdown catalogue provides the strategic baseline.

A future structured representation may use:

```text
product_registry.json
```

or another appropriate registry mechanism.

The structured registry could support:

- Product discovery
- Dependency analysis
- Gap linking
- Roadmap reporting
- Country filtering
- Sector filtering
- Lifecycle tracking
- PaaS/IaaS/SaaS mapping
- Evidence tracking

The Markdown catalogue should remain the human-readable reference until a machine-readable registry is justified.

~~~

## 32. Catalogue Governance

Product records should be changed through controlled updates.

Important changes include:

- Product identity
- Problem definition
- Priority source
- Required capability
- Existing assets
- Gap status
- Evidence status
- Product maturity
- Dependencies
- Productization state

Significant changes should preserve provenance and version history.

~~~

## 33. What the Catalogue Does Not Mean

The presence of a product in the catalogue does not automatically mean that:

- It is approved for development.
- It has validated market demand.
- It is commercially available.
- It requires quantum technology.
- It requires proprietary infrastructure.
- It is a committed roadmap item.
- It has patentable IP.
- It is suitable for every country.
- It should be ranked above another product.

The catalogue records product opportunities and their development state.

~~~

## 34. Relationship to the Product Roadmap

The overall relationship is:

```text
Priority Mapping
       ↓
Product Roadmap
       ↓
Product Catalogue
       ↓
Gap Analysis
       ↓
PaaS Development
       ↓
IaaS / Resource Integration
       ↓
Pilot
       ↓
Evidence
       ↓
Productization
       ↓
SaaS / Deployment
```

The Product Catalogue therefore becomes the structured bridge between strategic product opportunities and engineering execution.

~~~

## 35. Guiding Principles

1. Every product should have a clear identity.
2. Every product should have an identifiable problem or requirement.
3. Priority sources should be traceable.
4. Existing assets should be identified before new development.
5. Required new capabilities should be explicit.
6. Products should remain connected to the gap analysis.
7. PaaS, IaaS and SaaS relationships should be visible.
8. Pilot and evidence status should be explicit.
9. Product maturity should be distinct from technology maturity.
10. IP opportunities should be recorded without assuming patentability.
11. Dependencies should be explicit.
12. Common products should be reusable across countries where practical.
13. Country products should reuse the common platform wherever practical.
14. Product records should remain synchronized with Framework and Factory assets.
15. Product status should describe lifecycle state, not ranking.
16. The catalogue should evolve as evidence and requirements change.

~~~

## 36. Guiding Statement

**The QAI Product Catalogue provides a structured, traceable representation of QAI product opportunities from priority and problem through capability, assets, gaps, engineering, pilot, evidence and product maturity.**

**It provides one product information model while allowing common products, country products, industry solutions and client-specific configurations to evolve on the same General Framework and General Factory foundation.**

---

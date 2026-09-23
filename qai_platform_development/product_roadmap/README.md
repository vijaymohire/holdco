# QAI Product Roadmap

Product opportunity layer above the engineering Framework/Factory.

Products are selected from validated priority/problem needs, not from technology interest alone.

~~~

## 1. Purpose

The QAI Product Roadmap translates validated or sufficiently supported needs into potential products and product-development paths.

It connects:

```text
Country / Market
      ↓
Priority
      ↓
Sector
      ↓
Problem
      ↓
Required Capability
      ↓
Existing Assets
      ↓
Gap
      ↓
Product Opportunity
      ↓
Development
      ↓
Pilot
      ↓
Evidence
      ↓
Productization
```

The roadmap provides a product-level view while the General Framework and General Factory remain responsible for reusable engineering architecture and implementation.

~~~

## 2. Architectural Position

The Product Roadmap sits above the engineering platform.

```text
Country / Industry / Client Need
              ↓
       Priority Mapping
              ↓
       Product Roadmap
              ↓
    Product Requirements
              ↓
      General Framework
              ↓
       General Factory
              ↓
       PaaS / IaaS / SaaS
              ↓
          Deployment
```

The roadmap therefore expresses **what products may need to be developed**, while the Framework and Factory determine how reusable platform capabilities are defined and implemented.

~~~

## 3. Product Selection Principle

A product should normally originate from a sufficiently supported:

- Priority
- Sector need
- Problem
- Capability requirement
- Client requirement
- Industry requirement
- Validated opportunity

The preferred sequence is:

```text
Need
 ↓
Problem
 ↓
Capability
 ↓
Product
```

rather than:

```text
Technology
 ↓
Find a problem
 ↓
Create a product
```

Technology can enable a product, but technology interest alone should not determine the roadmap.

~~~

## 4. Common Products and Country Products

The initial roadmap structure is:

```text
product_roadmap/
│
├── common_products/
├── country_products/
└── README.md
```

### Common Products

Products or product families based on reusable capabilities that can potentially serve multiple countries, industries or clients.

### Country Products

Products or product variants driven by country-specific:

- Priorities
- Problems
- Data
- Regulations
- Infrastructure
- Market requirements
- Public-sector requirements
- Industry structures
- Client requirements

~~~

## 5. Common Product Model

A common product should ideally be based on reusable platform capabilities.

```text
Common Problem Class
        ↓
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

This supports the objective of developing one reusable platform rather than independent products for every market.

~~~

## 6. Country Product Model

A country product may be required when the problem or operating environment is sufficiently country-specific.

```text
Country
   ↓
National / Regional Requirement
   ↓
Sector
   ↓
Problem
   ↓
Required Capability
   ↓
Country Product
```

A country product may still reuse:

- General Framework
- General Factory
- Common Products
- Shared Services
- PaaS capabilities
- IaaS/resource abstractions
- SaaS mechanisms

Country-specific does not mean platform-independent.

~~~

## 7. Product Families

Potential QAI product families identified through current platform work include:

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

These represent **product-development candidates and families**, not a commitment that all products will be developed.

~~~

## 8. Product Opportunity Record

A product roadmap record should be able to capture:

```text
Product ID
Product Name
Product Family
Country
Sector
Priority
Problem
Required Capability
Target Users
Existing Assets
Gap IDs
Common / Country-Specific
PaaS Requirements
IaaS Requirements
SaaS Requirements
Pilot
Evidence
Dependencies
External Partners
Development Status
Productization Status
Lifecycle
Notes
```

The structured representation can evolve into a product registry later.

~~~

## 9. Product Development Lifecycle

A candidate product can progress through:

```text
Opportunity
    ↓
Problem Definition
    ↓
Capability Definition
    ↓
Existing Asset Assessment
    ↓
Gap Analysis
    ↓
Product Concept
    ↓
PaaS Engineering
    ↓
Resource / IaaS Integration
    ↓
Pilot
    ↓
Validation
    ↓
Post-Pilot Product
    ↓
SaaS
    ↓
Deployment
    ↓
Scale
```

Not every product needs to pass through every stage in exactly the same way.

~~~

## 10. Product Concept Before Product Build

Before substantial development, the product concept should establish:

- Who has the problem?
- What is the problem?
- What capability is required?
- What evidence supports the problem?
- What already exists?
- What is missing?
- What could be reused?
- What would need to be developed?
- What external dependencies exist?
- What would constitute successful validation?

This keeps the roadmap evidence-oriented.

~~~

## 11. Existing Asset Reuse

A product should first inspect the existing platform.

Potential reusable assets include:

```text
General Framework
General Factory
QAI Lab
Pilot Assets
Post-Pilot Assets
Reference Implementations
Engineering Modules
Resource Fabric
Simulation
Workflow Runtime
Shared Services
PaaS
IaaS
SaaS
```

The roadmap should therefore link products to existing assets rather than independently recreating them.

~~~

## 12. Product Gap Relationship

The Product Roadmap and Gap Analysis have complementary roles.

### Product Roadmap

Answers:

> What products or product families could address validated needs?

### Gap Analysis

Answers:

> What is missing to make the product possible, reusable, deployable or commercializable?

```text
Product Opportunity
       ↓
Gap Analysis
       ↓
Required Development
       ↓
Product Roadmap
```

Gap resolution can then feed back into product development.

~~~

## 13. Product and General Framework

The Framework should receive reusable concepts discovered while developing products.

For example:

```text
Product Requirement
       ↓
Reusable Capability
       ↓
Framework Definition
```

A product-specific implementation should not automatically become part of the Framework.

The Framework should remain technology-neutral and reusable where appropriate.

~~~

## 14. Product and General Factory

The General Factory provides implementation capabilities required by products.

```text
Product Requirement
       ↓
Framework Capability
       ↓
Factory Implementation
       ↓
Product Workflow
```

Factory capabilities may include:

- Workflow execution
- Connectors
- Adapters
- Resolvers
- Simulation
- Emulation
- Resource binding
- Backend integration
- Evidence
- Deployment

~~~

## 15. PaaS Role in Product Development

PaaS is the primary engineering surface for developing products.

```text
Product Concept
      ↓
PaaS Workspace
      ↓
Configure Assets
      ↓
Design Workflow
      ↓
Develop
      ↓
Simulate
      ↓
Emulate
      ↓
Test
      ↓
Validate
```

PaaS therefore provides the controlled engineering environment between product concept and deployable product.

~~~

## 16. IaaS Role in Product Development

IaaS provides the resource and backend layer required by product engineering and execution.

Potential requirements include:

- CPU
- GPU
- HPC
- AI accelerators
- Virtual QPU
- Quantum simulators
- Quantum emulators
- External QPU
- Storage
- Network
- Partner services

The product should specify resource **requirements**, while the resource layer resolves those requirements to available resources.

```text
Product
 ↓
Workload Requirement
 ↓
Resource Requirement
 ↓
IaaS / Resource Fabric
 ↓
Resource Binding
```

~~~

## 17. SaaS Role in Product Development

SaaS is the primary consumption layer for validated products.

```text
Validated Product Capability
          ↓
Approved Workflow
          ↓
Guided User Experience
          ↓
SaaS Product
          ↓
Client
```

SaaS should remain thin where practical.

It should consume existing Factory capabilities instead of duplicating execution logic.

~~~

## 18. PaaS → IaaS → SaaS

The current development sequence is:

```text
PaaS
BUILD HERE
    ↓
IaaS
RESOURCE
    ↓
SaaS
CONSUME
```

A product may therefore begin as a PaaS engineering capability, acquire the required resource integrations, and subsequently be packaged as SaaS.

~~~

## 19. Product and Simulation

Products may use simulation and emulation before physical deployment.

```text
Product Concept
      ↓
Virtual Asset
      ↓
Simulation
      ↓
Emulation
      ↓
Hybrid / HIL where required
      ↓
Physical Deployment where justified
```

This supports virtual-first product development and reduces unnecessary dependency on physical infrastructure during early engineering.

~~~

## 20. Product and Computational Path

A product should not assume that quantum computation is always required.

Potential computational paths include:

- Classical
- AI
- Classical AI
- QAI / quantum-inspired
- Quantum
- Hybrid

The product architecture should allow the computational strategy to be selected according to the problem, evidence, resource availability and value requirements.

```text
Problem
   ↓
Mathematical Model
   ↓
Representation
   ↓
Computational Strategy
   ↓
Execution
   ↓
Validation
```

~~~

## 21. Product Validation

A product candidate should establish evidence appropriate to its intended use.

Potential evidence includes:

- Technical feasibility
- Classical baseline
- Performance
- Accuracy
- Cost
- Resource utilization
- Reliability
- Simulation results
- Emulation results
- User validation
- Operational validation
- Security validation
- Business/value evidence

Evidence should be linked to the product and the original problem.

~~~

## 22. Productization Outcomes

After validation, a product candidate may have several outcomes.

```text
Validated Capability
       ↓
 ┌─────┼──────────┬───────────┐
 ↓     ↓          ↓           ↓
SaaS  Platform   Client      Research
      Capability Solution    Continuation
```

Other outcomes may include:

- Partner offering
- Internal capability
- Reference implementation
- Further pilot
- Deferred product
- Retired opportunity

Validation does not automatically imply commercial productization.

~~~

## 23. Common Product Development

Common products should emphasize reuse.

```text
Multiple Countries
       ↓
Common Problem / Capability
       ↓
Common Product Family
       ↓
Common Framework
       ↓
Common Factory
       ↓
Country Adaptation
```

Examples of potential common product families may include:

- AI Engineering
- Hybrid Computational Engineering
- Industrial Engineering
- Data Centre / Compute Intelligence
- Energy Optimization

The exact common-product scope should be confirmed through priority, problem and evidence analysis.

~~~

## 24. Country Product Development

Country products should preserve the common platform underneath.

```text
Canada Product
      ↓
Common Platform
      +
Canadian Requirements
```

```text
India Product
      ↓
Common Platform
      +
Indian Requirements
```

```text
Australia Product
      ↓
Common Platform
      +
Australian Requirements
```

Country-specific requirements may include data, workflows, policies, integrations and deployment conditions.

~~~

## 25. Product Configuration Hierarchy

The preferred hierarchy is:

```text
Common Product
      ↓
Country Configuration
      ↓
Industry Configuration
      ↓
Client Configuration
      ↓
Deployment
```

Where a country-specific product is genuinely required:

```text
Country Product
      ↓
Industry Configuration
      ↓
Client Configuration
      ↓
Deployment
```

This supports reuse without forcing every requirement into a common product.

~~~

## 26. Product Catalogue Relationship

The product roadmap feeds the future product catalogue.

```text
Product Opportunity
      ↓
Validated Product
      ↓
Product Definition
      ↓
Product Catalogue
      ↓
SaaS / Client Consumption
```

The catalogue may eventually contain:

- Product
- Product family
- Version
- Target sector
- Target users
- Supported countries
- Required inputs
- Outputs
- Workflow
- Resource requirements
- Deployment model
- Service model
- Evidence status

~~~

## 27. Country → Product → Use Case Model

A useful product-planning structure is:

```text
Country
   ↓
Product Topic
   ↓
Product
   ↓
Use Case
   ↓
Client Use Case
   ↓
Required Inputs
   ↓
SaaS Workflow
   ↓
Factory / Fabric Calls
   ↓
Result
```

This connects high-level market context with actual execution.

~~~

## 28. Client-Specific Products

A client requirement may result in:

- Existing product configuration
- Product extension
- Industry solution
- Client-specific solution
- New product opportunity

The preferred path is:

```text
Client Requirement
      ↓
Existing Product?
      │
      ├── Yes → Configure
      │
      └── No
           ↓
     Existing Capability?
           │
           ├── Yes → Extend
           │
           └── No → New Development / Research
```

This reduces unnecessary creation of separate products.

~~~

## 29. Product Dependencies

A product may depend on:

- Framework capabilities
- Factory capabilities
- Shared Services
- Domain models
- Data
- AI/QAI models
- Simulation
- Resource Fabric
- IaaS resources
- External partners
- Security controls
- Governance controls
- Deployment profiles

Dependencies should be recorded explicitly.

~~~

## 30. Product Maturity

Product maturity should be distinguished from technology maturity.

A product may be:

```text
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

Meanwhile, its underlying computational technology may have a different maturity.

For example, a product may use a classical implementation initially while retaining a QAI/quantum extension path.

~~~

## 31. Technology Independence

The product roadmap should not become a catalogue of technologies.

A product should primarily describe:

- Problem
- User
- Capability
- Workflow
- Inputs
- Outputs
- Value
- Evidence
- Deployment

Technology implementations can evolve underneath the product.

~~~

## 32. Product Roadmap and Research

Research may be required when an important capability cannot be adequately provided by existing technology.

```text
Product Requirement
       ↓
Capability Gap
       ↓
Existing Technology Insufficient
       ↓
Research
       ↓
Prototype
       ↓
Evidence
       ↓
Product Integration
```

Research candidates should remain traceable to the problem and capability requirement.

A research candidate is not automatically a product commitment or an IP/patent candidate.

~~~

## 33. Product Roadmap and IP

Product development may generate:

- New methods
- Architecture patterns
- Algorithms
- Models
- Interfaces
- Workflow mechanisms
- Resource-management techniques
- Domain-specific implementations

Potential IP should be assessed separately using appropriate novelty, prior-art, implementation and commercial criteria.

The product roadmap should record the relationship but should not assume that every product feature is proprietary IP.

~~~

## 34. Product Status

An initial product status vocabulary may include:

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

Status describes product-development state rather than ranking products.

~~~

## 35. Product Roadmap Record

A future structured product record may contain:

```text
Product ID
Product Name
Product Family
Country
Priority
Sector
Problem
Required Capability
Target User
Existing Assets
Gap IDs
Common / Country-Specific
PaaS Capability
IaaS Requirement
SaaS Workflow
Pilot
Evidence
Dependencies
Partners
Product Status
Lifecycle
Version
Notes
```

This can later become a machine-readable product registry.

~~~

## 36. Relationship to Priority Mapping

Priority Mapping explains the origin of a product opportunity.

```text
Country
 ↓
Priority
 ↓
Sector
 ↓
Problem
 ↓
Capability
 ↓
Product
```

The Product Roadmap then expands the product into:

```text
Product
 ↓
Assets
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

Together:

```text
Priority Mapping
        ↓
Product Roadmap
        ↓
Gap Analysis
        ↓
Platform Development
```

~~~

## 37. Relationship to Consolidated Gap Analysis

The Product Roadmap uses the consolidated gap analysis to determine development requirements.

```text
Product Candidate
      ↓
Existing Assets
      ↓
Gap Analysis
      ↓
Required Development
      ↓
Roadmap Milestone
```

The same gap may support multiple products.

This is an important mechanism for identifying reusable platform investments.

~~~

## 38. Product Roadmap and Asset Synchronization

Products should remain synchronized with the common platform asset model.

Relevant relationships include:

```text
Product
 ↓
Capability
 ↓
Framework Asset
 ↓
Factory Asset
 ↓
PaaS Asset
 ↓
IaaS Requirement
 ↓
SaaS Workflow
 ↓
Deployment
```

Changes to reusable platform capabilities should therefore be traceable to affected products.

~~~

## 39. Current Roadmap Structure

The current repository structure is:

```text
product_roadmap/
│
├── common_products/
│
├── country_products/
│
└── README.md
```

`common_products/` is intended for reusable product families and cross-country opportunities.

`country_products/` is intended for country-specific products and controlled country adaptations.

~~~

## 40. Development Philosophy

The roadmap follows:

```text
Start with Need
       ↓
Understand Problem
       ↓
Define Capability
       ↓
Reuse Existing Assets
       ↓
Identify Gaps
       ↓
Develop Through PaaS
       ↓
Integrate Resources
       ↓
Pilot
       ↓
Validate
       ↓
Productize
       ↓
Deliver Through SaaS
```

The platform should grow from validated requirements rather than from technology accumulation.

~~~

## 41. Guiding Principles

1. Products originate from validated or sufficiently supported needs.
2. Technology interest alone does not determine the roadmap.
3. Start with the problem and required capability.
4. Reuse existing platform assets before creating new ones.
5. Keep common products distinct from country-specific products.
6. Use the General Framework for reusable architectural concepts.
7. Use the General Factory for reusable implementation.
8. Use PaaS for engineering and product development.
9. Use IaaS for resource and backend capabilities as justified.
10. Use SaaS for validated consumption and product delivery.
11. Preserve country, industry and client traceability.
12. Validate before broad productization.
13. Keep product maturity distinct from underlying technology maturity.
14. Treat research and IP as related but separately assessed activities.
15. Allow products to evolve as evidence and customer requirements change.

~~~

## 42. Guiding Statement

**The QAI Product Roadmap converts validated priority and problem needs into reusable product opportunities, while connecting those products to the General Framework, General Factory, PaaS, IaaS, SaaS, pilots, evidence and deployment.**

**Build products because they solve validated problems; use technology because it helps solve them.**

---

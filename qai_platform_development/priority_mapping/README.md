# Priority Mapping

Traceability layer:

Country → National Priority → Sector → Problem → Required Capability → QAI Product → Existing Asset → Gap → Pilot → Evidence → Productization.

~~~

## 1. Purpose

Priority Mapping connects country-level priorities to QAI platform and product development.

It provides a traceable path from:

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

The purpose is to prevent the transition from a national priority to a proposed product from becoming an untraceable assumption.

~~~

## 2. Role in QAI Platform Development

Priority Mapping connects several existing platform-development artefacts.

```text
Country Priorities
        ↓
Priority Mapping
        ↓
Product Roadmap
        ↓
Gap Analysis
        ↓
General Framework
        ↓
General Factory
        ↓
PaaS / IaaS / SaaS
        ↓
Pilot
        ↓
Evidence
```

Priority Mapping therefore acts as a **traceability layer**, not as the product roadmap itself.

~~~

## 3. Evidence Classification

Each mapping should distinguish what is directly supported by its source from what is an analytical extension.

Recommended classification:

### Explicit

The source directly identifies the priority, sector, requirement or objective.

### Sector Application

The source identifies a priority and the mapping connects it to an explicitly relevant sector.

### Inferred

The relationship is an analytical inference from the available evidence.

### Opportunity

A potential QAI product, capability or application identified through analysis.

### Requires Validation

The relationship requires further research, customer validation, technical validation or another form of evidence.

Example:

```text
National Priority
      ↓
Explicit

Sector
      ↓
Explicit / Sector Application

Problem
      ↓
Inferred / Requires Validation

QAI Product
      ↓
Opportunity

Product Demand
      ↓
Requires Validation
```

This distinction is important because a national priority does not automatically establish demand for a particular QAI product.

~~~

## 4. Country

The first element identifies the country whose priorities are being mapped.

Current country scope:

- Canada
- India
- Australia

Additional countries can be added later without changing the mapping structure.

```text
Country
 ├── Canada
 ├── India
 └── Australia
```

~~~

## 5. National Priority

The national-priority element records the relevant policy or strategic priority.

Examples of broad priority areas already represented in the platform development work include:

- AI and digital transformation
- Defence, security and resilience
- Quantum and emerging technologies
- Compute, data centres and digital infrastructure
- Energy and resource efficiency
- Agriculture and food systems
- Workforce, skills and productivity
- Public-service modernization
- Industrial modernization

These are a working taxonomy and should not be interpreted as a ranking.

Country-specific files provide the more detailed source-backed context.

~~~

## 6. Sector

The next mapping step identifies the sector affected by the priority.

For example:

```text
AI and Digital Transformation
        ↓
Manufacturing
```

or:

```text
Agriculture and Food Systems
        ↓
Agriculture
        ↓
Digital Agriculture
```

The relationship is many-to-many.

One priority can affect multiple sectors, and one sector can relate to multiple priorities.

~~~

## 7. Problem

The sector is then translated into a concrete problem or opportunity.

The problem should describe the operational or technical need rather than prematurely naming a technology.

Example:

```text
Agriculture
    ↓
Resource Optimization
```

rather than immediately:

```text
Agriculture
    ↓
Quantum Optimization Product
```

The technology and product should be considered after the problem and required capability have been established.

~~~

## 8. Required Capability

The problem is translated into the capability required to address it.

Examples:

```text
Resource Optimization
       ↓
Optimization Capability
```

```text
Infrastructure Resilience
       ↓
Simulation + Scenario Analysis
```

```text
AI Engineering
       ↓
Model Development + Validation
```

```text
Industrial Modernization
       ↓
Digital Twin + Simulation
```

The capability should be described independently of a particular vendor or implementation technology where practical.

~~~

## 9. QAI Product

The required capability can then be mapped to a potential QAI product or product family.

Example:

```text
Agriculture
 ↓
Resource Optimization
 ↓
Optimization Capability
 ↓
QAI Digital Farm
```

Another example:

```text
AI / Digital Transformation
 ↓
AI Engineering
 ↓
AI/QAI Experimentation Capability
 ↓
QAI AI Engineering Platform
```

A product appearing in this mapping represents a **candidate product opportunity**, not an automatic commitment to build or commercialize it.

~~~

## 10. Existing Asset

The next question is:

> What do we already have that can contribute to this product?

Existing assets may include:

- General Framework
- General Factory
- QAI Lab
- Pilot notebook
- Post-pilot implementation
- Engineering module
- Reference implementation
- Workflow
- Domain model
- Simulation
- Resource abstraction
- Shared Service
- PaaS capability
- IaaS capability
- SaaS capability
- Existing connector
- Existing backend integration

Example:

```text
QAI Digital Farm
       ↓
Existing Assets
       ├── Agriculture pilot
       ├── Optimization workflow
       ├── QAI Lab
       ├── General Framework
       └── General Factory
```

~~~

## 11. Gap

Existing assets are compared with the required product capability.

```text
Required Capability
        ↓
Existing Assets
        ↓
Gap
```

Potential gaps include:

- Framework
- Factory
- Domain
- Data
- Integration
- Resource
- Security
- Governance
- Validation
- Deployment
- Commercial packaging

The detailed gap-analysis methodology is maintained separately in:

`gap_analysis/README.md`

The consolidated cross-country view is maintained in:

`gap_analysis/consolidated_gap_analysis.md`

~~~

## 12. Pilot

A significant gap or product opportunity may require a pilot.

The pilot should establish whether the proposed capability can work in a representative scenario.

```text
Product Opportunity
       ↓
Existing Assets + Gap Resolution
       ↓
Pilot
```

The pilot may involve:

- Synthetic data
- Existing data
- Simulation
- Emulation
- Virtual assets
- External resources
- Classical computation
- AI
- QAI / quantum-inspired methods
- Quantum simulation
- External quantum resources where appropriate

The pilot should remain evidence-oriented rather than assuming the final production architecture.

~~~

## 13. Evidence

Pilot and development activity should generate evidence.

Evidence may include:

- Technical results
- Benchmark results
- Classical baseline
- Simulation results
- Emulation results
- Accuracy
- Performance
- Resource utilization
- Cost
- Reliability
- Validation results
- Acceptance criteria
- Operational observations
- Value evidence

The evidence should be linked back to the original priority and product requirement.

```text
Priority
   ↓
Problem
   ↓
Capability
   ↓
Product
   ↓
Pilot
   ↓
Evidence
```

~~~

## 14. Productization

Evidence can support progression toward a reusable product.

```text
Pilot
  ↓
Evidence
  ↓
Validated Capability
  ↓
Post-Pilot Asset
  ↓
PaaS Capability
  ↓
SaaS Product
```

Not every pilot should become a commercial product.

Possible outcomes include:

- Productize
- Reuse as platform capability
- Continue research
- Integrate into another product
- Client-specific deployment
- Partner solution
- Defer

~~~

## 15. PaaS / IaaS / SaaS Mapping

Priority Mapping should also identify which service model is involved.

### PaaS

Used when the requirement primarily concerns engineering, experimentation and development.

```text
Priority
 ↓
Problem
 ↓
Engineering Capability
 ↓
PaaS
```

### IaaS

Used when the capability requires additional computational or infrastructure resources.

```text
Capability
 ↓
Resource Requirement
 ↓
IaaS / Resource Fabric
```

### SaaS

Used when a validated capability can be presented as a controlled product or client solution.

```text
Validated Capability
 ↓
Product Workflow
 ↓
SaaS
```

A single product may use all three:

```text
PaaS → Build
IaaS → Resource
SaaS → Consume
```

~~~

## 16. Common Versus Country-Specific Mapping

Priority Mapping should identify whether a relationship is:

- Common
- Country-specific
- Industry-specific
- Client-specific

Example:

```text
Common Priority
      ↓
Common Capability
      ↓
Common Platform Asset
      ↓
Country Configuration
      ↓
Industry Configuration
      ↓
Client Solution
```

This supports the objective of maintaining one common platform architecture while allowing controlled specialization.

~~~

## 17. Common Capability Reuse

When the same capability appears in multiple countries, it should be considered for common implementation.

Example:

```text
Canada ─┐
        ├── Optimization Capability
India ──┤
        │
Australia┘
        ↓
Common Framework Definition
        ↓
Common Factory Implementation
```

Country-specific data, constraints, policies and workflows can then be layered above the common capability.

~~~

## 18. Country-Specific Extension

A country-specific requirement should not automatically create a new core platform capability.

Preferred structure:

```text
Common Platform
      +
Country Extension
      +
Industry Extension
      +
Client Configuration
```

This keeps the common architecture reusable while preserving local requirements.

~~~

## 19. Problem-to-Product Traceability

Every proposed product should ideally have a traceable problem statement.

```text
Country
  ↓
Priority
  ↓
Sector
  ↓
Problem
  ↓
Required Capability
  ↓
Product
```

This avoids technology-first product definition where the product is proposed before the underlying problem is understood.

~~~

## 20. Product-to-Asset Traceability

The reverse direction is also useful.

```text
Existing Asset
      ↓
Capability
      ↓
Problem Classes
      ↓
Potential Products
      ↓
Country / Industry Applications
```

This allows existing QAI assets to be reused across multiple markets.

~~~

## 21. Product-to-Gap Traceability

A product should identify what is already available and what remains missing.

```text
Product
 ├── Existing Assets
 ├── Reusable Assets
 ├── Required Extensions
 ├── Missing Capabilities
 └── External Dependencies
```

This connects Priority Mapping directly to Consolidated Gap Analysis.

~~~

## 22. Source Traceability

Each important mapping should preserve its source.

Recommended source fields include:

```text
Source Organization
Source Document
Source URL / Reference
Publication Date
Relevant Section
Evidence Classification
Mapping Interpretation
Validation Status
```

This allows reviewers to distinguish:

```text
What the source states
        from
What the platform analysis infers
        from
What is being proposed as an opportunity
```

~~~

## 23. Recommended Mapping Record

A structured priority-mapping record may contain:

```text
Mapping ID
Country
National Priority
Priority Source
Sector
Problem
Problem Source
Required Capability
Capability Classification
QAI Product
Product Classification
Existing Asset
Gap ID
Gap Category
Resolution Type
Pilot ID
Evidence ID
PaaS Requirement
IaaS Requirement
SaaS Requirement
Common / Country-Specific
Status
Validation Requirement
Productization Status
Notes
```

The exact machine-readable registry can be introduced later.

~~~

## 24. Example Mapping

A simplified example:

```text
Country:
Canada

Priority:
AI / Digital Transformation

Sector:
Agriculture

Problem:
Agricultural resource optimization

Required Capability:
Optimization + simulation + decision support

QAI Product:
QAI Digital Farm

Existing Assets:
General Framework
General Factory
QAI Agriculture Pilot
QAI Lab
Optimization workflow

Gap:
Post-pilot productization and additional domain/data/resource integration

Pilot:
Agriculture optimization pilot

Evidence:
Pilot execution and validation evidence

Productization:
PaaS engineering capability
+
SaaS digital-farm workflow
+
Future resource/IaaS integration
```

This example illustrates the mapping structure; it does not by itself establish market demand or a policy commitment.

~~~

## 25. Relationship to Country Priority Files

Country-specific priority files remain the primary location for country context.

```text
country_priorities/
   ├── canada/
   ├── india/
   └── australia/
```

Priority Mapping consumes the relevant information from those files and connects it to:

- Sectors
- Problems
- Capabilities
- Products
- Assets
- Gaps
- Pilots
- Evidence

The mapping layer should not duplicate the full country analysis.

~~~

## 26. Relationship to Common Priority Areas

The common priority taxonomy provides a shared vocabulary.

```text
Common Priority Area
        ↓
Country-Specific Priority
        ↓
Sector
        ↓
Problem
```

A country may have a different policy framing while still mapping to a common analytical category.

This enables cross-country comparison without assuming that the underlying policies or implementation requirements are identical.

~~~

## 27. Relationship to Product Roadmap

Priority Mapping provides inputs to the product roadmap.

```text
Priority Mapping
      ↓
Candidate Product
      ↓
Gap Analysis
      ↓
Required Development
      ↓
Product Roadmap
```

The roadmap then determines actual development sequencing.

Priority Mapping itself should remain a traceability mechanism.

~~~

## 28. Relationship to Consolidated Gap Analysis

The two artefacts have complementary roles.

### Priority Mapping

Answers:

> How did we get from the national priority to this product and capability requirement?

### Consolidated Gap Analysis

Answers:

> What do we already have, what is reusable, what is missing, and what needs to be developed?

```text
Priority Mapping
      ↓
Why / Where did the requirement originate?
      ↓
Consolidated Gap Analysis
      ↓
What is missing?
      ↓
Product Roadmap
      ↓
What should be developed?
```

~~~

## 29. Relationship to QAI Platform Development Method

Priority Mapping participates in the broader development method:

```text
Discover
   ↓
Study
   ↓
Priority / Problem Mapping
   ↓
Assess Existing Capability
   ↓
Identify Gap
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
```

This keeps product development connected to the original requirement.

~~~

## 30. Controlled Evolution

Priority mappings should be updated when new evidence becomes available.

For example:

```text
Initial Mapping
      ↓
Research
      ↓
Problem Refined
      ↓
Capability Refined
      ↓
Gap Updated
      ↓
Pilot
      ↓
Evidence
      ↓
Mapping Confirmed / Revised
```

A mapping is therefore a living traceability record rather than a permanently fixed statement.

~~~

## 31. Status

An initial status vocabulary may include:

- Draft
- Source Verified
- Mapped
- Capability Identified
- Gap Identified
- Pilot Candidate
- Pilot Active
- Evidence Available
- Productization Candidate
- Productized
- Reassess
- Closed

Status should describe the state of the mapping and evidence, not rank the importance of a country or priority.

~~~

## 32. Guiding Principles

1. Maintain traceability from country priority to product.
2. Distinguish source-backed facts from analytical inference.
3. Identify the problem before selecting the technology or product.
4. Identify required capabilities before defining development work.
5. Reuse existing assets wherever practical.
6. Connect every significant product opportunity to an identifiable gap or existing capability.
7. Distinguish common capabilities from country-specific extensions.
8. Keep PaaS, IaaS and SaaS relationships explicit.
9. Preserve pilot and evidence traceability.
10. Do not treat a national priority as automatic proof of product demand.
11. Keep Priority Mapping distinct from the Product Roadmap.
12. Keep Priority Mapping connected to Consolidated Gap Analysis.
13. Update mappings as evidence changes.
14. Preserve source provenance.

~~~

## 33. Guiding Statement

**Priority Mapping provides the traceable bridge from national priority to problem, capability, product, existing asset, gap, pilot, evidence and productization.**

**The objective is to make the origin and development path of each QAI product opportunity visible, evidence-based and reusable across countries, industries and clients.**
~~~
---

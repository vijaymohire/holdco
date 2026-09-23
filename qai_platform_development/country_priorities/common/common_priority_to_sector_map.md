# Common Priority → Sector Map

Use this file to map recurring national priorities to sectors and problem classes.

The map provides a common analytical structure for connecting country-specific evidence to sectors, problems, product opportunities and QAI Platform Development.

It is a mapping framework, not a ranking of priorities, sectors or countries.

Country-specific evidence remains in the relevant country priority files.

~~~

## 1. Purpose

The Common Priority → Sector Map provides the intermediate mapping layer between a common priority area and the sectors in which that priority may have practical application.

The intended flow is:

```text
Country Evidence
      ↓
Country Priority
      ↓
Common Priority Area
      ↓
Sector
      ↓
Problem Class
      ↓
Product Opportunity
      ↓
Platform Capability
```

The purpose is to identify recurring patterns across countries without assuming that the same priority has the same importance, policy status or implementation context in every country.

~~~

## 2. Mapping Principles

The mapping should follow these principles:

1. Use official country sources wherever possible.
2. Preserve the terminology used by the source.
3. Distinguish explicit policy statements from analytical inference.
4. Distinguish sectors explicitly identified by a source from sectors inferred from a priority.
5. Do not treat a mapped sector as evidence of a commercial opportunity by itself.
6. Do not rank countries, priorities or sectors.
7. Preserve country-specific context.
8. Maintain source traceability.
9. Allow one priority to map to multiple sectors.
10. Allow one sector to map to multiple priorities.

~~~

## 3. Evidence Classification

Each mapping should identify the type of evidence supporting it.

### A. Explicit Policy / Priority

The source directly identifies the priority and/or sector.

Example:

```text
Source:
"AI strategy identifies agriculture as a priority sector."

Mapping:

Priority:
AI and Digital Transformation

Sector:
Agriculture

Evidence:
Explicit
```

### B. Explicit Sector Application

The source identifies a technology or priority and describes an application in a particular sector.

```text
Priority
   ↓
Technology Application
   ↓
Sector
```

### C. Analytical Inference

The sector relationship is inferred from the documented priority.

```text
Documented Priority
       ↓
Reasoned Interpretation
       ↓
Potential Sector
```

Such mappings must be clearly marked as inferred.

### D. Product Opportunity

A potential product or use case is derived from the priority-sector relationship.

This is an analytical opportunity, not a government policy statement.

~~~

## 4. Evidence Status

Recommended evidence status values:

| Status | Meaning |
|---|---|
| `explicit` | Directly stated by the source |
| `sector_application` | Source describes application in the sector |
| `inferred` | Sector relationship is analytically inferred |
| `opportunity` | Potential product/use-case opportunity derived from analysis |
| `requires_validation` | Mapping needs additional evidence |

These values should not be treated as equivalent.

~~~

## 5. Common Priority Areas

The initial common priority areas are:

1. AI and Digital Transformation
2. Defence, Security and Resilience
3. Quantum and Emerging Technologies
4. Compute, Data Centres and Digital Infrastructure
5. Energy and Resource Efficiency
6. Agriculture and Food Systems
7. Workforce, Skills and Productivity
8. Public-Service Modernization
9. Industrial Modernization

These correspond to the working taxonomy maintained in:

`common_priority_areas.md`

~~~

## 6. Initial Sector Taxonomy

The initial sector taxonomy may include:

- Agriculture and food
- Energy and utilities
- Natural resources
- Manufacturing
- Advanced manufacturing
- Transportation and logistics
- Defence and security
- Public services and government
- Health and life sciences
- Education and skills
- Financial services
- Telecommunications
- Digital infrastructure
- Data centres and compute
- Construction and infrastructure
- Environment and climate
- Mining and critical minerals
- Aerospace and space
- Robotics and autonomous systems
- Research and innovation

This is also a working taxonomy and should be extended when country evidence requires additional sectors.

~~~

## 7. Initial Problem-Class Taxonomy

A sector mapping can be further classified by problem type.

Potential problem classes include:

- Optimization
- Forecasting
- Planning
- Scheduling
- Resource allocation
- Risk analysis
- Decision support
- Simulation
- Digital twin
- Monitoring
- Prediction
- Classification
- Detection
- Automation
- Workflow modernization
- Infrastructure management
- Asset management
- Supply-chain optimization
- Energy optimization
- Workforce planning
- Engineering design
- Systems integration
- Resilience analysis

The problem-class taxonomy is intended to support later product and use-case analysis.

~~~

## 8. Example Many-to-Many Mapping

A common priority can map to multiple sectors.

```text
AI and Digital Transformation
        │
        ├── Agriculture
        ├── Manufacturing
        ├── Health
        ├── Transportation
        ├── Public Services
        └── Energy
```

A sector can also map to multiple priorities.

```text
Agriculture
   │
   ├── AI and Digital Transformation
   ├── Agriculture and Food Systems
   ├── Energy and Resource Efficiency
   ├── Workforce, Skills and Productivity
   └── Compute and Digital Infrastructure
```

This many-to-many relationship is intentional.

~~~

## 9. Common Priority → Sector → Problem Map

The preferred analytical structure is:

| Common Priority | Sector | Problem Class | Evidence Status | Source |
|---|---|---|---|---|
| AI and Digital Transformation | Agriculture | Optimization / prediction | To be validated | Country source |
| AI and Digital Transformation | Manufacturing | Automation / predictive maintenance | To be validated | Country source |
| Compute, Data Centres and Digital Infrastructure | Data Centres | Resource / energy optimization | To be validated | Country source |
| Energy and Resource Efficiency | Energy | Optimization / forecasting | To be validated | Country source |
| Industrial Modernization | Manufacturing | Planning / simulation | To be validated | Country source |
| Public-Service Modernization | Government | Workflow modernization | To be validated | Country source |
| Workforce, Skills and Productivity | Education / workforce | Skills / productivity | To be validated | Country source |
| Quantum and Emerging Technologies | Research / industry | Advanced computation | To be validated | Country source |

These are **mapping examples**, not claims that each relationship is an official national priority.

Country-specific evidence must be added before treating an individual mapping as documented.

~~~

## 10. Country Mapping

The common map should not replace country-specific analysis.

The country workflow is:

```text
Country Source
      ↓
Country Priority
      ↓
Evidence Extraction
      ↓
Common Priority Mapping
      ↓
Sector Mapping
      ↓
Problem-Class Mapping
```

For example:

```text
Canada Source
      ↓
Canadian Priority
      ↓
Common Priority
      ↓
Canadian Sector
      ↓
Canadian Problem Context
```

The same process applies independently to:

- Canada
- India
- Australia
- Future countries

~~~

## 11. Policy Statement vs Opportunity

This distinction is essential.

### Policy Statement

A government source explicitly states:

```text
Priority → Sector
```

This can be recorded as documented evidence.

### Analytical Opportunity

The platform analysis identifies:

```text
Priority → Sector → Problem → Potential Product
```

This is an opportunity derived from the analysis.

It should not be presented as though the government source itself recommended the product.

~~~

## 12. Product Opportunity Mapping

Once a priority-sector relationship is sufficiently supported, it can be examined for product opportunities.

```text
Priority
   ↓
Sector
   ↓
Problem
   ↓
Existing Capability
   ↓
Gap
   ↓
Potential Product
   ↓
Required Development
```

For example:

```text
Agriculture
   ↓
Resource Optimization
   ↓
Water / Energy / Crop Decision Support
   ↓
Existing QAI Digital Farm Capability
   ↓
Identify Gap
   ↓
Potential Product
```

The product opportunity remains an internal analytical conclusion unless separately supported by market or customer evidence.

~~~

## 13. Platform Capability Mapping

A sector/problem combination can then be mapped to existing platform capabilities.

Potential capabilities include:

- Software Engineering
- Systems Engineering
- Simulation
- Emulation
- Digital twins
- Optimization
- AI
- QAI
- Data integration
- Workflow orchestration
- Resource Fabric
- PaaS
- IaaS
- SaaS
- Evidence and provenance
- Security and governance

```text
Sector
   ↓
Problem
   ↓
Capability Requirement
   ↓
Framework Capability
   ↓
Factory Implementation
```

~~~

## 14. PaaS / IaaS / SaaS Mapping

The priority-to-sector map ultimately connects to the service-model architecture.

```text
Priority
   ↓
Sector
   ↓
Problem
   ↓
Product Opportunity
   ↓
PaaS Engineering
   ↓
IaaS Resource Requirements
   ↓
SaaS Product
```

This allows the strategic priority analysis to remain connected to actual platform development.

~~~

## 15. Country Comparison Without Ranking

The common map can identify areas that appear in multiple country analyses.

For example:

```text
Common Area
      │
      ├── Canada
      ├── India
      └── Australia
```

The purpose is to identify:

- Recurring themes
- Shared sectors
- Shared problem classes
- Potential reusable capabilities
- Country-specific differences
- Country-specific gaps

It should not be used to rank countries or their priorities.

~~~

## 16. Reusable vs Country-Specific Opportunities

A useful distinction is:

### Common Opportunity

A similar problem appears across multiple countries.

```text
Country A ──┐
Country B ──┼──> Common Problem
Country C ──┘
                  ↓
             Reusable Product
```

### Country-Specific Opportunity

The problem is strongly tied to a particular country's policy, market, infrastructure or operating environment.

```text
Country
   ↓
Specific Context
   ↓
Specific Problem
   ↓
Country Product
```

Both types are valid product-development paths.

~~~

## 17. Source Requirements

For country-specific mappings, preferred sources include:

- National government departments
- Official strategy documents
- Government budgets
- National research agencies
- Official program documentation
- Regulatory bodies
- Official statistical agencies
- Public-sector research organizations

Secondary sources may be used for context, but should not silently replace primary evidence for a documented policy claim.

~~~

## 18. Source Traceability

Each country-specific mapping should ideally retain:

- Country
- Priority
- Sector
- Problem class
- Evidence status
- Source organization
- Source title
- Publication date
- URL or document reference
- Relevant quotation or extracted statement
- Analysis note
- Confidence / validation status

This makes the mapping auditable.

~~~

## 19. Recommended Mapping Record

A future structured registry can use fields such as:

```text
mapping_id
country
priority_area
country_priority
sector
problem_class
evidence_status
source_organization
source_title
source_date
source_reference
source_excerpt
analysis_note
product_opportunity
platform_capability
validation_status
```

This can later be represented in a JSON or tabular registry.

~~~

## 20. Relationship to Country Priority Files

This common file defines the mapping method.

The country-specific files provide the evidence.

```text
country_priorities/
│
├── common/
│   ├── common_priority_areas.md
│   └── common_priority_to_sector_map.md
│
└── countries/
    ├── canada/
    ├── india/
    └── australia/
```

The country files should therefore contain the actual country-specific findings rather than copying large amounts of common taxonomy.

~~~

## 21. Relationship to Product Roadmap

The mapping provides an input to:

`product_roadmap/`

The intended flow is:

```text
Priority Mapping
      ↓
Product Opportunity
      ↓
Product Catalogue
      ↓
Product Roadmap
```

The roadmap can then evaluate:

- Existing capability
- Development gap
- Technical feasibility
- Evidence
- Market need
- Client demand
- Commercial model
- Productization path

~~~

## 22. Relationship to Gap Analysis

The same mapping provides an input to:

`gap_analysis/`

```text
Priority
   ↓
Sector
   ↓
Problem
   ↓
Required Capability
   ↓
Existing Capability
   ↓
Gap
```

Potential gaps include:

- Framework
- Factory
- Data
- AI/QAI model
- Simulation
- Resource/backend
- Security
- Integration
- PaaS
- IaaS
- SaaS
- Validation
- Commercialization

~~~

## 23. Current Status

Status:

**Working Mapping Framework**

The current file establishes:

- Common priority taxonomy
- Sector taxonomy
- Problem-class taxonomy
- Evidence classification
- Country mapping method
- Product opportunity mapping
- Platform capability mapping
- PaaS/IaaS/SaaS relationship
- Source traceability requirements

The actual country-specific mappings should be populated from the Canada, India and Australia research files.

~~~

## 24. Guiding Principle

**Map what the sources say, distinguish what the analysis infers, and keep the path from priority → sector → problem → product → platform capability traceable.**

---

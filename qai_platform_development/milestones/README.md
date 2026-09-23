# Milestones

Record major architecture/product-development baselines and their corresponding Git commits/tags.

~~~

## 1. Purpose

The Milestones register records significant points in the evolution of the QAI Platform Development architecture and implementation.

A milestone should represent a meaningful baseline such as:

- Architecture established
- Major platform layer established
- Pilot completed
- Post-pilot architecture established
- Bootstrapper established
- PaaS/IaaS/SaaS baseline established
- Product-development framework established
- Country-priority framework established
- Product roadmap established
- Major capability validated
- Productized capability established

The milestone record provides historical traceability between the architectural state and the corresponding Git repository state.

~~~

## 2. Milestone Principle

A milestone is more than a dated activity.

It should identify:

```text
Architectural / Product Baseline
            ↓
Repository State
            ↓
Git Commit
            ↓
Git Tag
            ↓
Reusable Reference Point
```

A milestone therefore provides a known point from which development can continue, be reviewed or be reproduced.

~~~

## 3. Git Traceability

Where appropriate, each milestone should record:

- Git commit
- Git tag
- Branch
- Date
- Baseline description
- Major changes
- Related release
- Related documentation
- Validation status

Example:

```text
Milestone
   ↓
Commit
   ↓
Tag
   ↓
Repository Baseline
```

The commit provides the exact repository state.

The tag provides a human-readable permanent reference to that state.

~~~

## 4. Milestone Types

Initial milestone categories include:

### Architecture

Major architectural structure or boundary established.

### Platform

Major General Framework, General Factory or shared platform capability established.

### Pilot

Pilot capability completed or validated.

### Post-Pilot

A pilot capability generalized into reusable post-pilot architecture or implementation.

### Product

A significant product-development baseline established.

### Service Model

PaaS, IaaS or SaaS architecture/capability established.

### Integration

A significant technology, backend or external capability integrated.

### Validation

A significant technical, operational or value validation completed.

### Release

A meaningful repository or product release created.

~~~

## 5. Current Milestone History

The following milestones have already been established in the QAI platform development work.

### Digital Farm Pilot Complete

```text
Commit:
d6953c77cc7de7ece60a4277bbdc6995baa1d250

Tag:
v1.1.0-digital-farm-pilot-complete
```

This established the completed Agriculture Digital Farm pilot baseline.

The pilot included the final client-delivery notebook and associated experiment/package artifacts.

Reference:

```text
QAI_Agriculture_Optimization_Phase3-12_Pilot_ClientDelivery_Template_v1.0.ipynb
```

The milestone represents the transition from the completed pilot implementation toward reusable post-pilot development.

~~~

### Initial Factory Reference Implementations

```text
Commit:
feat: add initial Factory reference implementations
```

This milestone established initial reference implementations under the General Factory, including:

```text
Microsoft Fabric
QAI Lab / pipeline notebook
```

The reference implementations demonstrate how technology-specific implementations can be retained under the Factory without becoming the General Framework definition.

Where an immutable commit hash or tag is established later, it should be added to the milestone record.

~~~

### Bootstrapper MVP

```text
Commit:
feat: establish bootstrapper MVP and common web platform
```

This milestone established the initial General Factory Bootstrapper implementation.

The known-good MVP flow was:

```text
bootstrap.yaml
     ↓
Configuration
     ↓
Virtual Development Profile
     ↓
QAI Platform
     ↓
Software Engineering
     ↓
Systems Engineering
     ↓
Deployment Generation
     ↓
Validation
```

The generated deployment baseline was:

```text
agriculture-digital-farm-demo
```

The MVP established a working baseline before progressing to registry-driven resolution.

~~~

### Post-Pilot Reference Baseline

```text
Commit:
feat: establish post-pilot QAI platform reference baseline

Tag:
v0.1.0-post-pilot-reference-baseline
```

This milestone established the initial post-pilot repository structure across:

- General Framework
- General Factory
- QAI Platform Development
- Web Access Layer
- PaaS
- IaaS
- SaaS
- Engineering modules
- Country priorities
- Product roadmap
- Gap analysis
- Registries
- Samples
- Development method

It represents a major transition from pilot-focused development toward a structured post-pilot platform.

~~~

## 6. Milestone Baseline Categories

Milestones should be grouped conceptually into:

```text
Pilot Baselines
      ↓
Architecture Baselines
      ↓
Platform Baselines
      ↓
Product Baselines
      ↓
Service Model Baselines
      ↓
Validation Baselines
      ↓
Commercial / Deployment Baselines
```

A single Git commit may support more than one conceptual milestone, but the milestone record should explain the reason it is significant.

~~~

## 7. Architecture Baselines

Architecture milestones may establish:

- General Framework
- General Factory
- Framework / Factory boundary
- Pilot / Post-Pilot model
- Engineering modules
- Bootstrapper boundary
- Web Access Layer
- PaaS/IaaS/SaaS relationship
- Resource Fabric
- Simulation architecture
- QAI runtime architecture
- Shared Services
- Product architecture

These milestones provide historical reference points for architectural evolution.

~~~

## 8. Product Development Baselines

Product milestones may establish:

- Product opportunity model
- Product catalogue
- Common products
- Country products
- Product-to-priority mapping
- Product-to-gap mapping
- Pilot candidate
- Product validation
- Productization
- SaaS product baseline

A product milestone should identify the evidence supporting the transition where applicable.

~~~

## 9. Country Priority Baselines

Country-priority milestones may establish:

- Common priority taxonomy
- Canada priority baseline
- India priority baseline
- Australia priority baseline
- Priority-to-sector mapping
- Priority registry

These milestones should preserve the relevant source/evidence context.

They should not be interpreted as ranking countries or national priorities.

~~~

## 10. Gap Analysis Baselines

Gap-analysis milestones may establish:

- Gap-analysis methodology
- Consolidated cross-country gap analysis
- Product/capability gap registry
- Major identified platform gaps
- Gap resolution baseline

The milestone should record the repository state at which the analysis was established.

~~~

## 11. Service-Model Baselines

The current service-model development direction is:

```text
PaaS
 ↓
IaaS
 ↓
SaaS
```

Milestones may therefore establish:

### PaaS

Engineering workspace and product-development capability.

### IaaS

Resource and backend capability.

### SaaS

Validated product and client-consumption capability.

A milestone should make clear whether the baseline is architectural, implemented or validated.

~~~

## 12. Pilot-to-Post-Pilot Transition

A particularly important milestone type is the transition from pilot to post-pilot.

```text
Pilot
  ↓
Evidence
  ↓
Generalization
  ↓
Post-Pilot Asset
  ↓
Reusable Platform Capability
```

The milestone should identify what was promoted and why.

Pilot code should not automatically be treated as production platform code.

~~~

## 13. Milestone Evidence

A milestone should ideally have supporting evidence.

Examples:

- Git commit
- Git tag
- Release
- README
- Architecture document
- Notebook
- Experiment record
- Validation report
- Deployment package
- Screenshot or demonstration
- Test result
- Benchmark
- Product record

The evidence provides confidence that the milestone represents an actual repository or development state.

~~~

## 14. Milestone Record

A future structured milestone record may use:

```text
Milestone ID
Milestone Name
Milestone Type
Date
Description
Baseline
Commit
Tag
Branch
Related Release
Related Product
Related Framework Asset
Related Factory Asset
Evidence
Status
Notes
```

This can later be represented in a machine-readable milestone registry.

~~~

## 15. Recommended Milestone Status

Initial status values may include:

- Planned
- In Progress
- Achieved
- Validated
- Released
- Superseded

`Achieved` means the baseline has been established.

`Validated` means additional evidence has confirmed the intended capability.

`Released` means an explicit repository/release baseline has been published or tagged.

~~~

## 16. Commit and Tag Discipline

Where a milestone is significant enough to serve as a long-term reference, the preferred sequence is:

```text
Implement
   ↓
Review
   ↓
Validate
   ↓
Commit
   ↓
Tag
   ↓
Record Milestone
```

This creates a durable relationship between the development record and the repository state.

~~~

## 17. Milestones Versus Ordinary Development

Not every commit requires a milestone.

Ordinary development may include:

- Documentation edits
- Small fixes
- Refactoring
- Experimental changes
- Temporary implementation work
- Minor configuration changes

A milestone should be created when the change establishes a meaningful baseline that is useful for future development or review.

~~~

## 18. Milestones and Controlled Evolution

Milestones provide stable reference points while the platform continues to evolve.

```text
Milestone A
     ↓
Development
     ↓
Milestone B
     ↓
Development
     ↓
Milestone C
```

A later milestone does not invalidate the historical value of an earlier baseline.

This is especially important for:

- Pilot references
- Architecture evolution
- Product evolution
- Experimental implementations
- Technology studies

~~~

## 19. Milestones and Reference Implementations

Reference implementations may be promoted through milestone stages:

```text
Study Sample
     ↓
Reference Implementation
     ↓
Validated Implementation
     ↓
Reusable Factory Asset
     ↓
Product Capability
```

The milestone record should identify the promotion point without confusing the reference implementation with the architecture itself.

~~~

## 20. Milestones and Product Maturity

Product maturity and repository milestones are related but distinct.

For example:

```text
Product:
Pilot

Repository:
Post-Pilot Architecture Baseline
```

This is possible because the platform may mature faster than a particular product.

Conversely:

```text
Product:
Validated

Platform:
Capability Still Evolving
```

may also occur.

Both dimensions should remain independently traceable.

~~~

## 21. Milestones and Asset Synchronization

Milestones can capture synchronized states across:

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

A major milestone should identify which layers were affected.

This supports the Common Asset Synchronization principle.

~~~

## 22. Milestone Register

The repository may eventually maintain a structured register such as:

```text
milestones/
│
├── README.md
└── milestone_registry.json
```

The JSON registry can later capture:

```text
Milestone ID
Date
Type
Description
Commit
Tag
Status
Evidence
```

The current README remains the human-readable baseline.

~~~

## 23. Current Known Baselines

The currently established baselines include:

| Baseline | Commit / Tag | Role |
|---|---|---|
| Digital Farm Pilot Complete | `d6953c77cc7de7ece60a4277bbdc6995baa1d250` / `v1.1.0-digital-farm-pilot-complete` | Completed pilot |
| Initial Factory Reference Implementations | `feat: add initial Factory reference implementations` | Technology/reference integration |
| Bootstrapper MVP | `feat: establish bootstrapper MVP and common web platform` | Initial deployment bootstrap |
| Post-Pilot Reference Baseline | `feat: establish post-pilot QAI platform reference baseline` / `v0.1.0-post-pilot-reference-baseline` | Structured post-pilot platform baseline |

The commit descriptions above are retained as development references. Where a commit hash is not currently recorded, it should be added when the exact repository reference is available.

~~~

## 24. Current Development Direction

The platform is currently progressing from:

```text
Completed Pilot
      ↓
Post-Pilot Architecture
      ↓
Bootstrapper
      ↓
PaaS Engineering
      ↓
IaaS / Resource Integration
      ↓
SaaS Productization
      ↓
Country / Industry Products
      ↓
Client Deployment
```

The milestone register should capture significant baselines along this progression.

~~~

## 25. Guiding Principles

1. Record meaningful development baselines.
2. Link milestones to exact Git states wherever possible.
3. Prefer commits and tags as durable technical references.
4. Distinguish milestones from ordinary commits.
5. Preserve historical pilot baselines.
6. Record architecture and product-development transitions.
7. Keep product maturity separate from repository maturity.
8. Preserve evidence for significant milestones.
9. Record superseded baselines rather than deleting their history.
10. Use milestones to support controlled architectural evolution.
11. Keep the milestone register concise and traceable.
12. Do not treat a milestone as a ranking or quality score.

~~~

## 26. Guiding Statement

**Milestones provide durable reference points in the evolution of the QAI Platform Development architecture, products and implementations by linking meaningful baselines to their Git commits, tags and supporting evidence.**

**Build continuously, but preserve the important states.**
~~~
---

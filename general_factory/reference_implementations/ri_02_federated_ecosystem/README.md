# RI-02 — Federated Ecosystem

## 1. Purpose

RI-02 defines a reference model for coordinating portfolios, programs, tracks, working groups, projects and federated capabilities within the HoldCo ecosystem.

The model provides a structured way to connect strategic priorities with distributed expertise, intellectual property, technology, infrastructure, organisations and delivery projects.

It supports a federation in which common governance and coordination coexist with specialised teams, independent capability owners and project-specific delivery arrangements.

The objective is to make capabilities discoverable, connectable, deployable and reusable while maintaining clear accountability for decisions, resources, intellectual property and outcomes.

RI-02 is a technology-neutral reference specification. It does not assume that all participating entities use the same organisational structure, technology platform or delivery methodology.

## 2. Design Principles

- **Federated participation:** Capabilities may participate across organisational and project boundaries, subject to agreed arrangements.
- **Strategic alignment:** Portfolios and programs connect project activity to defined priorities and intended outcomes.
- **Clear accountability:** Every portfolio, program and project should have an identifiable owner and decision authority appropriate to its scope.
- **Flexible organisation:** Tracks and working groups can be assembled around objectives and adjusted as needs change.
- **Capability reuse:** Existing capabilities, methods, tools, services and approved IP should be considered before creating duplicates.
- **Separation of concerns:** Strategy, governance, coordination, technical execution and outcome measurement have distinct responsibilities.
- **Controlled autonomy:** Participating teams may operate independently within agreed interfaces, responsibilities and constraints.
- **Resource transparency:** Shared resources require defined ownership, allocation authority, access conditions and usage records.
- **Evidence-based maturity:** Capability availability and readiness must be supported by current evidence.
- **Outcome orientation:** Ecosystem activity should be evaluated against defined project, program and portfolio outcomes.

## 3. Reference Ecosystem Structure

The logical structure is:

**HoldCo → Portfolio → Program → Tracks / Working Groups → Projects → Federated Capabilities → Products and Services**

This is a conceptual relationship model, not necessarily a strict organisational hierarchy. Capabilities, products and services may be shared across multiple projects, programs or portfolios.

### HoldCo

Provides the overall strategic direction, portfolio-level coordination and common governance mechanisms defined by its operating model.

HoldCo establishes the principles under which participating organisations, projects, capabilities and resources are coordinated.

### Portfolio

Groups related investments, programs or strategic initiatives around a common objective or area of value.

Portfolio-level decisions may include priorities, resource envelopes, investment choices, risk exposure and continuation or termination of initiatives.

### Program

Coordinates related projects and capabilities that collectively contribute to a defined outcome.

A program may establish shared dependencies, delivery sequencing, interfaces, governance checkpoints and outcome measures.

### Tracks

Represent continuing areas of specialist focus, such as technology, industry, research, governance or commercialization.

Tracks organise expertise and reusable knowledge. They are not necessarily permanent departments or separate legal entities.

### Working Groups

Bring together relevant people and capabilities to address a defined objective, technical problem, standard, work package or decision.

Membership and duration may change according to the work required, subject to accountability and access controls.

### Projects

Convert validated needs into defined deliverables, activities, acceptance criteria and measurable outcomes.

Projects may draw on several tracks, working groups, organisations and shared resources.

### Federated Capabilities

Represent reusable expertise, methods, IP, software, infrastructure, data services or other capabilities contributed by participating entities.

Each capability should have a defined owner or responsible party, availability status, access conditions, dependencies and evidence of suitability.

### Products and Services

Represent capabilities packaged for internal reuse or external delivery.

A capability does not automatically become a product or commercial service. Productisation, licensing, support, commercial demand and operational readiness require separate assessment.

## 4. Reference Workflow

**Strategic Intent → Portfolio Prioritisation → Program Definition → Capability Discovery → Track / Working Group Formation → Project Definition → Capability Matching → Delivery Coordination → Outcome Assessment → Reuse, Scale or Closure**

### Stage 1 — Strategic Intent

Record the strategic objective, identified need, intended beneficiaries and expected outcomes.

Distinguish validated needs from assumptions, opportunities and exploratory research.

### Stage 2 — Portfolio Prioritisation

Evaluate proposed initiatives against portfolio objectives, available resources, risk, dependencies and decision criteria.

Record the decision, accountable authority and rationale.

### Stage 3 — Program Definition

Define the program's scope, outcomes, participating projects, dependencies, governance arrangements and measurement approach.

### Stage 4 — Capability Discovery

Identify potentially relevant internal and external capabilities, including expertise, existing IP, infrastructure, products, services and partner contributions.

Discovery does not imply that a capability is available, approved for use or technically suitable.

### Stage 5 — Track and Working Group Formation

Establish the specialist coordination structures needed for the identified work.

Define purpose, membership or participation rules, responsibilities, decision rights, expected outputs and review points.

### Stage 6 — Project Definition

Create a project definition that establishes scope, deliverables, owner, dependencies, acceptance criteria, budget constraints and required approvals.

### Stage 7 — Capability Matching

Match project requirements to candidate capabilities using documented criteria such as technical fit, availability, maturity, access rights, cost, risk and delivery constraints.

Record rejected options and unresolved gaps where material.

### Stage 8 — Delivery Coordination

Coordinate dependencies, interfaces, resource allocation, technical integration and progress reporting across participating teams.

### Stage 9 — Outcome Assessment

Compare delivered results with the project's acceptance criteria and the program's intended outcomes.

Record evidence, deviations, unresolved risks and lessons learned.

### Stage 10 — Reuse, Scale or Closure

Determine whether validated capabilities should be reused, improved, productised, scaled, retained or retired.

Any external deployment or commercial use remains subject to applicable agreements, governance and approval.

## 5. Inputs

Typical inputs include:

- Validated business, government, industry, research or internal needs.
- HoldCo strategic priorities and portfolio objectives.
- Program proposals, project definitions and expected outcomes.
- Requirements, constraints, assumptions and dependencies.
- Capability, product, service and resource catalogues.
- Capability ownership, availability and maturity information.
- Participating organisations, partners and specialist contributors.
- Governance, security, privacy, IP, licensing and contractual constraints.
- Resource availability, budget limits and allocation rules.
- Acceptance criteria, performance measures and evidence requirements.

The required input set should be proportionate to the scope and risk of the initiative.

## 6. Outputs

Expected outputs may include:

- A documented ecosystem structure and responsibility model.
- Portfolio and program definitions.
- Track and working group charters.
- Project definitions and dependency records.
- Capability catalogue entries and matching decisions.
- Interface agreements and coordination workflows.
- Resource allocation and access records.
- Governance decisions, risks and issue registers.
- Project and program outcome evidence.
- Reusable capability descriptions, patterns and lessons learned.

The outputs produced in a particular implementation depend on its configured workflows and governance requirements.

## 7. Logical Interface Contracts

| Interface | Expected information |
|---|---|
| HoldCo → Portfolio | Strategic priorities, decision boundaries and portfolio governance |
| Portfolio → Program | Priorities, expected outcomes, constraints and approved resources |
| Program → Tracks / Working Groups | Objectives, dependencies, work packages and coordination needs |
| Project → Capability Catalogue | Required functions, constraints, interfaces and acceptance criteria |
| Capability Owner → Project | Capability description, availability, dependencies, access conditions and evidence |
| Working Group → Program | Recommendations, technical outputs, issues and progress evidence |
| Project → Program | Delivery status, risks, acceptance results and outcome measures |
| Program → Portfolio | Consolidated outcomes, resource utilisation, risks and investment recommendations |
| Validated Capability → Ecosystem | Reusable description, version, evidence, ownership and permitted-use conditions |

These interfaces describe information exchanged between logical roles. They may be implemented through documents, repositories, APIs, catalogues, workflow systems or other suitable mechanisms.

## 8. Governance and Accountability

A federated model requires explicit decision boundaries rather than relying on informal coordination alone.

For each portfolio, program, project and shared capability, identify the applicable:

- Accountable owner and delegated decision authority.
- Scope, deliverables and acceptance criteria.
- Budget and resource approval boundaries.
- Participation, access and information-sharing rules.
- Intellectual property ownership and permitted-use conditions.
- Security, privacy, safety and regulatory obligations.
- Conflict-of-interest and procurement requirements, where applicable.
- Risk, issue, escalation and change-control processes.
- Outcome reporting and evidence-retention expectations.

A working group may recommend a decision without having authority to approve expenditure, bind a participating organisation or grant rights to another party's IP.

The specific governance model must reflect the legal, contractual and operational circumstances of the participating entities.

## 9. Capability Lifecycle and Maturity

A capability may progress through the following lifecycle:

**Identified → Described → Assessed → Available for Evaluation → Approved for Use → Integrated → Demonstrated → Validated → Reusable or Productised**

This lifecycle is a proposed classification, not a claim that each stage is implemented in the current ecosystem.

For each capability, record as applicable:

- Unique identifier and descriptive name.
- Owner or accountable custodian.
- Functional description and supported use cases.
- Dependencies, interfaces and operating constraints.
- Availability and access conditions.
- Maturity status and supporting evidence.
- IP ownership, licensing and permitted-use conditions.
- Cost, resource requirements and support arrangements.
- Version, change history and review date.
- Known limitations, risks and unresolved issues.

Professional membership, prior experience, a catalogue entry or a written description alone does not establish that a capability is available, qualified for a particular task or validated for operational use.

## 10. Validation and Acceptance Criteria

The reference model should be evaluated using observable evidence.

| Check | Acceptance evidence |
|---|---|
| Strategic traceability | Projects link to defined portfolio or program objectives |
| Accountability | Owners and decision boundaries are recorded |
| Structural clarity | Portfolio, program, track, working group and project roles are distinguishable |
| Capability traceability | Capability descriptions identify ownership and relevant dependencies |
| Matching rationale | Capability selection criteria and material decisions are recorded |
| Governance | Applicable approvals, access conditions and unresolved controls are documented |
| Interface clarity | Expected exchanges between logical roles are defined |
| Outcome measurement | Project acceptance criteria and program measures are recorded |
| Reuse controls | Reuse conditions, IP rights and evidence requirements are recorded |
| Change traceability | Material changes to scope, ownership, resources or interfaces are documented |

These criteria define what should be assessed. They do not establish that the ecosystem has passed validation.

## 11. Relationship to HoldCo

RI-02 provides a conceptual coordination model for the HoldCo ecosystem.

It complements:

- **RI-01 — Repository and Project Bootstrap:** Establishes a consistent starting structure for projects.
- **RI-03 — Product Foundry:** Defines the lifecycle through which needs and capabilities may become products or services.
- **RI-04 — Organization and Program Model:** Clarifies organisational responsibilities, specialist tracks and program structures.
- **RI-05 — Dynamic Asset Allocation:** Addresses shared-resource discovery, approval, provisioning, usage and reuse.
- **RI-06 — Government Capability-to-Project Ecosystem:** Applies ecosystem coordination principles to a proposed government and public-private partnership context.

Together, these references are intended to provide a consistent conceptual framework. Their interfaces and integration must be verified as the references and underlying implementations mature.

## 12. Source and Implementation Boundary

### Authoritative implementation reference

[IAFE Ecosystem](https://github.com/vijaymohire/iafe_ecosystem)

This repository is the designated engineering reference for the ecosystem area. Its actual structures, documentation, code, tests and evidence should be reviewed before attributing specific implementation capabilities to it.

### Separation of responsibilities

- **HoldCo reference:** Describes the conceptual ecosystem model, governance expectations and logical interfaces.
- **General Factory reference implementation:** Provides a concise, reusable location for examples, configuration, workflows and evidence.
- **Authoritative engineering repository:** Holds the detailed technical implementation and associated evidence.

This README does not claim that the full reference model is implemented in the linked repository.

## 13. Evidence and Maturity

**Initial status: Designed / Documented — implementation and validation status to be assessed.**

Use evidence-based maturity categories:

- **Designed / Documented:** The model and expected interfaces are described.
- **Partially Implemented:** Some specified capabilities exist, with gaps recorded.
- **Implemented — Verification Pending:** Relevant implementation exists but verification is incomplete.
- **Demonstrated:** A defined scenario has been executed and results recorded.
- **Validated:** Relevant acceptance criteria have been evaluated against sufficient evidence.

Record the scope and date of each assessment, its evidence sources, limitations and outstanding issues.

Do not infer government adoption, procurement eligibility, funding approval, regulatory compliance, commercial demand or validated economic benefits from conceptual alignment alone.

## 14. Next Steps

1. Review the authoritative `iafe_ecosystem` repository and map its actual structure to this reference.
2. Identify existing portfolio, program, track, working group, project and capability concepts.
3. Define a minimal, technology-neutral ecosystem example with two projects sharing a capability.
4. Document capability ownership, availability, permitted use and interface expectations in that example.
5. Define how governance decisions and project dependencies are recorded.
6. Add relevant sample configuration, workflow definitions and evidence records.
7. Execute a controlled example and assess it against the acceptance criteria.
8. Record gaps and distinguish existing implementation from proposed design.
9. Identify interfaces to RI-01 and RI-03 through RI-06 that need further definition.

## 15. Change Control

Changes to this reference should preserve traceability between the ecosystem model, organisational responsibilities, logical interfaces, authoritative implementation and validation evidence.

For material changes, record the rationale, affected roles or interfaces, governance impact, compatibility considerations and required updates to dependent references.

---

**Reference ID:** RI-02
**Reference name:** Federated Ecosystem
**Category:** General Factory — Reference Implementations
**Initial maturity:** Designed / Documented
**Authoritative engineering reference:** [iafe_ecosystem](https://github.com/vijaymohire/iafe_ecosystem)
**Validation status:** To be assessed
---

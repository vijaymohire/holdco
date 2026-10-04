# RI-03 — Product Foundry

## 1. Purpose

RI-03 defines a reusable reference model for transforming a validated need into a researched, specified, engineered and verified product or service, with a potential pathway to deployment and commercialisation.

The Product Foundry connects problem discovery, research, requirements engineering, architecture, implementation, verification, product management and value assessment through a traceable lifecycle.

It is intended to help HoldCo coordinate product development across portfolios, programs, projects, specialist tracks, working groups and federated capabilities while encouraging reuse of existing intellectual property, engineering assets, tools and validated patterns.

The reference is technology-neutral. It describes logical stages, interfaces, decision gates and evidence expectations without requiring a particular development methodology, programming language, cloud provider or engineering platform.

A product concept, prototype or successful technical demonstration is not automatically a production-ready or commercially viable product. Each transition requires evidence appropriate to its intended use.

## 2. Design Principles

- **Need before solution:** Establish the problem, intended users and expected outcome before committing to a specific implementation.
- **Evidence-led research:** Investigate existing approaches, relevant prior art, feasibility and unresolved uncertainties.
- **Requirements traceability:** Connect needs to requirements, architecture, implementation, verification and acceptance.
- **Architecture before uncontrolled implementation:** Establish suitable system boundaries, interfaces, dependencies and constraints.
- **Modular engineering:** Prefer separable components and defined interfaces where they support maintainability and reuse.
- **Verification throughout:** Plan and record verification activities across the lifecycle rather than relying exclusively on final testing.
- **Risk-proportionate assurance:** Apply safety, security, privacy, reliability and regulatory controls appropriate to the product and its intended use.
- **IP-aware development:** Record ownership, licensing, provenance and disclosure constraints for relevant inputs and outputs.
- **Reusable engineering:** Identify components, methods, configurations and lessons that may be reused under approved conditions.
- **Commercial discipline:** Assess customer needs, costs, support obligations, delivery models and commercial assumptions before committing to market claims.
- **Lifecycle accountability:** Assign ownership for product decisions, changes, release approval and ongoing maintenance.

## 3. Reference Workflow

**Validated Need → Opportunity Assessment → Idea → Research → Requirements → Architecture → Engineering → Verification → Product Assessment → Release Decision → Deployment / Commercialisation → Feedback and Evolution**

The workflow is iterative. Research may revise requirements, verification may require architectural changes, and commercial or operational feedback may initiate a new development cycle.

### Stage 1 — Validated Need

Describe the problem or opportunity, the affected users or stakeholders, the operating context and the outcome sought.

Record the evidence supporting the need and distinguish verified observations from assumptions and hypotheses.

### Stage 2 — Opportunity Assessment

Assess strategic alignment, potential beneficiaries, existing alternatives, constraints, dependencies, feasibility and expected value.

Determine whether the opportunity merits further research, a proof of concept, a formal product-development project or no further investment.

### Stage 3 — Idea Formation

Develop one or more candidate solutions.

Record the intended function, proposed differentiation, principal assumptions, relevant alternatives and initial feasibility questions.

An idea is a candidate for investigation, not evidence of novelty, technical feasibility or market demand.

### Stage 4 — Research

Investigate technical approaches, prior art, available components, domain constraints, feasibility and unresolved questions.

Where relevant, conduct experiments, simulations, prototypes or proof-of-concept activities to reduce uncertainty.

Record research methods, inputs, results, limitations and conclusions. Identify IP and confidentiality considerations before external disclosure.

### Stage 5 — Requirements Engineering

Translate the selected need and research findings into testable requirements.

Requirements may include:

- Functional behaviour and expected outputs.
- Performance, latency, throughput and capacity.
- Reliability, availability and recovery.
- Security, privacy and data-handling constraints.
- Interoperability and interface requirements.
- Deployment, operational and maintenance requirements.
- Safety, accessibility and applicable regulatory obligations.
- Cost, resource and environmental constraints.
- Verification methods and acceptance criteria.

Each requirement should have an identifier, rationale, priority, source and planned verification method where appropriate.

### Stage 6 — Architecture

Define the product's logical structure, component responsibilities, interfaces, data flows, dependencies and operating boundaries.

Evaluate relevant architectural alternatives and record significant design decisions, assumptions, trade-offs and risks.

Architecture should address the intended deployment context, including any applicable edge, cloud, on-premises, hybrid or specialised computing requirements.

### Stage 7 — Engineering

Implement or integrate the required components, services, models, workflows, infrastructure definitions and supporting documentation.

Maintain traceability to approved requirements and architecture decisions.

Use appropriate version control, change management, review, dependency management and development practices. Record third-party components, licences and material implementation limitations.

### Stage 8 — Verification

Evaluate whether the implementation satisfies its specified requirements and technical acceptance criteria.

Depending on the product, verification may include unit tests, integration tests, system tests, performance tests, security assessments, simulation, hardware-in-the-loop tests or controlled field trials.

Record the test conditions, versions, results, failures, deviations and unresolved issues.

Verification of specified requirements is distinct from validation that the product solves the intended real-world problem.

### Stage 9 — Product Assessment

Assess whether the engineered result is suitable for its proposed next stage.

Consider technical maturity, verification evidence, operational constraints, user feedback, unresolved risks, maintainability, support needs, IP position and cost assumptions.

Possible outcomes include further research, another engineering iteration, a limited demonstration, a controlled pilot, release preparation or termination.

### Stage 10 — Release Decision

Determine whether the product is authorised for its intended release context.

Define the release scope, approved version, deployment constraints, documentation, support arrangements, rollback or recovery approach and required approvals.

A prototype release, internal release, research demonstration and production release should not be treated as equivalent maturity levels.

### Stage 11 — Deployment and Commercialisation

Where justified, prepare the product for internal adoption, pilot deployment, licensing, service delivery, partnership or other commercial arrangements.

Evaluate the relevant customer or beneficiary requirements, delivery model, pricing assumptions, operating costs, contractual obligations, support responsibilities and applicable procurement or regulatory requirements.

Commercialisation is a decision supported by evidence and approvals, not an automatic result of completing engineering.

### Stage 12 — Feedback and Evolution

Collect relevant usage data, user feedback, incident reports, operating metrics and commercial or public-value evidence.

Use these inputs to prioritise improvements, revise requirements, address defects, update documentation or retire the product.

Approved reusable improvements may be returned to the Product Foundry reference catalogue.

## 4. Inputs

Typical inputs include:

- Validated business, government, industry, research or internal need.
- Stakeholder and user requirements.
- Strategic priorities and intended outcomes.
- Research findings, prior-art results and feasibility evidence.
- Existing products, components, services, models and reusable IP.
- Technical, operational and deployment constraints.
- Architecture standards and interface requirements.
- Available engineering capabilities, resources and budget.
- Security, privacy, safety, licensing and regulatory considerations.
- Verification plans, acceptance criteria and risk assessments.
- Commercial, support and lifecycle assumptions where relevant.

The required inputs depend on the product type, development stage and risk profile.

## 5. Outputs

Expected outputs may include:

- Problem definition and opportunity assessment.
- Research records and feasibility findings.
- Requirements specifications and traceability records.
- Architecture descriptions and design decisions.
- Engineering artefacts, source code, configurations and models.
- Verification plans, test results and defect records.
- Product maturity and risk assessments.
- Release documentation and deployment instructions.
- Product, support and maintenance plans.
- IP ownership and licensing records.
- Commercialisation assumptions and value assessments.
- Reusable components, reference patterns and lessons learned.

Not every project produces every output. Required artefacts should be defined according to scope, lifecycle stage and applicable governance.

## 6. Logical Interface Contracts

| Interface | Expected information |
|---|---|
| Need → Opportunity Assessment | Problem, stakeholders, evidence and intended outcomes |
| Opportunity → Research | Candidate solutions, assumptions, constraints and open questions |
| Research → Requirements | Findings, feasibility limits, relevant alternatives and implications |
| Requirements → Architecture | Approved requirements, priorities and acceptance criteria |
| Architecture → Engineering | Component responsibilities, interfaces, decisions and constraints |
| Engineering → Verification | Versioned implementation, configuration and testable requirements |
| Verification → Product Assessment | Results, defects, coverage, deviations and unresolved risks |
| Product Assessment → Release Decision | Maturity evidence, operating limits and recommendations |
| Release Decision → Deployment | Approved scope, version, instructions, support and controls |
| Deployment → Feedback | Operational observations, usage evidence, incidents and user feedback |
| Product → Reuse Catalogue | Reusable artefacts, provenance, version, ownership and permitted-use conditions |

These are logical interfaces. Their implementation may use documentation, repository artefacts, issue trackers, APIs, test systems or product-management platforms.

## 7. Requirements and Traceability Model

The Product Foundry should preserve traceability across the lifecycle:

**Need → Requirement → Architecture Element → Implementation Artefact → Verification Result → Acceptance Decision**

Where applicable, extend the chain to deployment, operational evidence and measured outcomes.

Each traceability record should identify the relevant artefact, its version or status, its responsible owner and any outstanding gap.

Traceability helps establish why a feature exists, what it is expected to do, how it was implemented and what evidence supports its acceptance.

A completed traceability record does not, by itself, prove that the underlying requirement has been satisfied.

## 8. Decision Gates and Exit Criteria

The following gates are proposed reference checkpoints. Projects may combine, adapt or add gates according to their needs and applicable controls.

| Gate | Decision question | Example exit evidence |
|---|---|---|
| G1 — Need | Is the problem sufficiently understood? | Problem statement, stakeholder evidence and intended outcome |
| G2 — Opportunity | Is further investigation justified? | Assessment, assumptions, constraints and decision record |
| G3 — Feasibility | Is there a plausible approach worth developing? | Research findings, experiments and feasibility limitations |
| G4 — Requirements | Are the requirements sufficiently clear and testable? | Reviewed requirements and acceptance criteria |
| G5 — Architecture | Is the proposed design suitable for implementation? | Architecture, interfaces, trade-offs and risk record |
| G6 — Engineering | Is there an implementation ready for verification? | Versioned artefacts and implementation review |
| G7 — Verification | What requirements have passed, failed or remain untested? | Test evidence, defect records and coverage limitations |
| G8 — Product readiness | Is the result suitable for the intended next stage? | Maturity assessment, risk review and recommendations |
| G9 — Release | Is the defined release authorised? | Release decision, scope, instructions and required approvals |
| G10 — Scale or commercialise | Is wider deployment or commercial investment justified? | Relevant user, operational, financial and governance evidence |

A gate may result in approval, conditional approval, rework, deferral or termination. Passing a gate should be recorded explicitly, with its scope and evidence.

## 9. Governance, Quality and IP Controls

Product development should incorporate controls appropriate to the intended use and risk of the product.

Relevant considerations include:

- Named product owner and engineering accountability.
- Requirements, architecture and change control.
- Quality assurance and verification independence where required.
- Security, privacy, safety and data governance.
- Third-party dependencies, open-source licences and provenance.
- Background IP, newly developed IP, ownership and licensing.
- Confidentiality and controlled disclosure of potentially protectable inventions.
- Regulatory, professional, contractual and procurement obligations.
- Release authority, maintenance responsibilities and incident handling.
- Evidence retention and review of unresolved risks.

A technical demonstration does not automatically establish regulatory compliance, production readiness, patentability or freedom to operate. Those conclusions require the relevant assessment and supporting evidence.

## 10. Product Maturity and Evidence

**Initial reference status: Designed / Documented — implementation and validation status to be assessed.**

For individual products, distinguish the following states where useful:

- **Concept:** A candidate solution or hypothesis has been identified.
- **Research / Feasibility:** Relevant technical or domain questions are being investigated.
- **Prototype:** An initial implementation exists for exploration or evaluation.
- **Verified Implementation:** Defined requirements have been evaluated against recorded test evidence.
- **Demonstrated:** A specified scenario has been executed and the results recorded.
- **Validated for Intended Use:** Evidence supports the defined intended use and acceptance criteria.
- **Release Authorised:** The responsible authority has approved a particular release and scope.
- **Operationally Monitored:** Relevant operational performance and issues are being observed.
- **Commercially Assessed:** Commercial or delivery assumptions have been evaluated using relevant evidence.

These states are not necessarily a single linear progression. A product may be demonstrated in one context while remaining unverified or unsuitable in another.

Record the assessment scope, date, version, evidence sources, limitations and outstanding issues. Do not promote a product's maturity status based solely on a plan, design document or catalogue entry.

## 11. Relationship to HoldCo

RI-03 provides a common product-development lifecycle for the HoldCo ecosystem.

It connects:

- **RI-01 — Repository and Project Bootstrap:** Establishes the initial working environment and project artefacts.
- **RI-02 — Federated Ecosystem:** Coordinates the portfolios, programs, working groups and distributed capabilities contributing to development.
- **RI-03 — Product Foundry:** Defines the product lifecycle from need through engineering, verification and potential commercialisation.
- **RI-04 — Organization and Program Model:** Supports accountability, specialist roles and program-level coordination.
- **RI-05 — Dynamic Asset Allocation:** Supports the allocation and reuse of engineering tools, infrastructure and other shared resources.
- **RI-06 — Government Capability-to-Project Ecosystem:** Provides a proposed pathway for assembling capabilities around defined public-sector outcomes.

The intended lifecycle is:

**Discover Need → Assemble Capabilities → Engineer Product → Verify Evidence → Decide Release → Measure Outcomes → Reuse or Improve**

## 12. Source and Implementation Boundary

### Authoritative engineering reference

[QAI Product Foundry](https://github.com/vijaymohire/qai_product_foundry)

This repository is the designated engineering reference for the Product Foundry area. Its actual documentation, code, workflow definitions, tests and evidence should be examined before assigning implementation or maturity claims to it.

### Separation of responsibilities

- **HoldCo reference:** Defines the technology-neutral lifecycle, expected interfaces and decision criteria.
- **General Factory reference implementation:** Provides a concise location for reusable samples, configuration, workflows and evidence.
- **Authoritative engineering repository:** Holds the detailed engineering implementation and associated evidence.

This README describes the intended reference model; it does not assert that every stage or control is already implemented in the linked repository.

## 13. Validation and Acceptance Criteria

Assess this reference and its implementation against observable evidence.

| Check | Acceptance evidence |
|---|---|
| Need traceability | Product work links to a documented need and intended outcome |
| Research traceability | Research questions, methods, findings and limitations are recorded |
| Requirements quality | Requirements have identifiable acceptance or verification methods |
| Architecture traceability | Important design decisions and interfaces are documented |
| Implementation traceability | Engineering artefacts can be linked to relevant requirements |
| Verification | Results identify tested scope, failures, deviations and limitations |
| Decision gates | Gate outcomes and accountable decisions are recorded |
| IP and licensing | Relevant ownership, provenance and permitted-use conditions are documented |
| Release control | Release scope, version and required approvals are identifiable |
| Feedback and reuse | Reusable outputs have provenance, ownership and appropriate evidence |

A check should be reported as passed, failed, partially satisfied, not assessed or not applicable, with an explanation where necessary.

## 14. Next Steps

1. Review the authoritative `qai_product_foundry` repository and inventory its actual lifecycle stages and artefacts.
2. Map existing workflows, tools, documentation and tests to the stages in this reference.
3. Identify gaps between the conceptual lifecycle and current implementation.
4. Define a minimal technology-neutral product record and requirements traceability example.
5. Add a representative workflow showing requirements moving through architecture, engineering and verification.
6. Specify the evidence required at each applicable decision gate.
7. Execute a controlled example and record the actual results.
8. Assess which outputs are reusable and under what ownership and licensing conditions.
9. Update maturity statements only after reviewing supporting evidence.

## 15. Change Control

Changes to this reference should preserve traceability between the product lifecycle, requirements, architecture, implementation, verification evidence and release decisions.

For material changes, record the rationale, affected lifecycle stages, interface impacts, verification implications and required updates to dependent references.

---

**Reference ID:** RI-03
**Reference name:** Product Foundry
**Category:** General Factory — Reference Implementations
**Initial maturity:** Designed / Documented
**Authoritative engineering reference:** [qai_product_foundry](https://github.com/vijaymohire/qai_product_foundry)
**Validation status:** To be assessed
---

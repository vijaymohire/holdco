# NSW Digital Landscape

**Status:** Designed / Documented — jurisdictional source mapping and QAI/FAEP alignment in progress
**Owner:** Bhadale IT — QAI / FAEP
**Jurisdiction:** New South Wales (NSW), Australia
**Last reviewed:** 3 October 2026

## 1. Purpose

Document the NSW Government's digital transformation context, technology and data governance, cybersecurity, AI assurance, procurement, project assurance, and commercialization environment.

This document provides a jurisdiction-specific reference for identifying opportunities to align Bhadale IT's QAI (Quantum AI) and FAEP (Federated Autonomous Ecosystem Platform) portfolio with NSW public-sector needs and private-sector use cases.

It supports:

* Identifying authoritative NSW Government policies, frameworks, legislation, and guidance.
* Distinguishing mandatory requirements from strategies, recommendations, and general guidance.
* Mapping relevant requirements and public priorities to potential QAI/FAEP capabilities.
* Identifying procurement, assurance, security, privacy, and implementation considerations.
* Recording evidence, gaps, owners, and follow-up actions.

This document is a research and planning framework. It does not establish government endorsement, supplier eligibility, procurement access, regulatory compliance, product readiness, or confirmed market demand.

## 2. Scope

The landscape covers:

1. NSW digital strategy and government service transformation.
2. Digital project governance and investment assurance.
3. AI governance and risk assessment.
4. Cybersecurity and digital resilience.
5. Data governance, privacy, and information management.
6. Government procurement and supplier requirements.
7. Cloud, integration, interoperability, and digital infrastructure.
8. Emerging technologies, research, innovation, and commercialization.
9. Potential QAI/FAEP applications across government, industry, and regional communities.

Federal requirements continue to apply where relevant. Commonwealth policy should not automatically be treated as a substitute for NSW-specific policy, legislation, or contractual obligations.

## 3. NSW Digital Strategy and Government Priorities

**Official source:** https://digital.nsw.gov.au/strategy

The NSW Digital Strategy provides the state-level strategic context for digital transformation. Its priorities include trusted and reliable digital services, secure digital infrastructure, emergency resilience, and digital capability across the public-sector workforce.

The strategy should be reviewed alongside current NSW Government priorities, agency plans, service delivery requirements, and relevant sector strategies.

### Potential QAI/FAEP relevance

| NSW priority area             | Potential capability mapping                                        | Evidence required                                                        |
| ----------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| Digital service delivery      | QAI Hub, QAI Agent Framework, workflow orchestration                | Defined service use case, prototype, accessibility and usability testing |
| Trusted and reliable services | QAI Runtime, observability, fallback execution                      | Reliability tests, service-level objectives, recovery evidence           |
| Digital infrastructure        | QAI Datacenter System, QAI Cloud, hybrid compute orchestration      | Deployment architecture, capacity and cost measurements                  |
| Emergency resilience          | Resilient workflows, offline/edge execution, recovery orchestration | Scenario tests, recovery objectives, incident procedures                 |
| Workforce capability          | QAI ProductDev Toolkit, documentation, training and developer tools | Training material, competency criteria, practical evaluation             |
| Shared technology and reuse   | FAEP integration and interoperability concepts                      | Interface specifications, reuse assessment, integration demonstration    |

These are proposed alignment opportunities, not confirmed NSW Government requirements for specific QAI products.

## 4. Digital Project Assurance and Investment Governance

**Official sources:**

* Digital Assurance: https://www.digital.nsw.gov.au/policy/digital-assurance
* Investment and assurance frameworks: https://www.nsw.gov.au/business-and-economy/budget-and-financial-management/consolidated-budget-management-guidance/investment-and-assurance-frameworks
* NSW Gateway Assurance: https://www.nsw.gov.au/nsw-government/public-sector/financial-information-for-public-entities/nsw-gateway-assurance

The NSW Digital Assurance Framework (DAF) provides a risk-based assurance process for state ICT and digital projects. The official guidance states that registration is mandatory for covered state capital and recurrent-funded digital projects with an estimated total cost of $5 million or more, regardless of funding source. Lower-cost projects may also be subject to assurance where strategically important or otherwise identified for review.

Applicability must be checked against the current framework, the project's entity, funding, cost, risk profile, and delivery arrangements.

### Implications for QAI/FAEP proposals

For a potential NSW public-sector project, prepare a documented case covering:

* Public need, outcomes, and measurable benefits.
* Options analysis, including reuse of existing services and conventional technology.
* Architecture, integration, data flows, and hosting arrangements.
* Cybersecurity, privacy, operational resilience, and AI-related risks.
* Whole-of-life costs, dependencies, delivery capacity, and support.
* Verification, acceptance criteria, and benefits measurement.
* Project risks, assurance activities, and escalation arrangements.

QAI should be evaluated against a defined classical baseline. Quantum computing or other specialized execution should be introduced only where the use case, evidence, and measured results justify it.

## 5. Artificial Intelligence Governance and Assurance

**Official source:** https://www.digital.nsw.gov.au/policy/artificial-intelligence/ai-governance-assurance-and-frameworks/nsw-ai-assessment-framework

The NSW AI Assessment Framework (AIAF) supports risk assessment and responsible AI use across the AI lifecycle.

The official NSW guidance states that NSW Government agencies must comply with the NSW AI Operational Policy and use the AIAF as required. It also states that the AIAF Platform becomes mandatory for registering and assessing NSW Government AI use cases from **30 September 2026**. High- or critical-risk use cases are subject to escalation to the NSW AI Review Committee under the specified process.

These obligations apply to covered NSW Government agencies. They do not automatically make the same internal government workflow a direct legal obligation for every private supplier; contractual and project-specific requirements must be checked.

### Potential QAI/FAEP alignment

| Governance concern              | Potential design response                     | Evidence to develop                                             |
| ------------------------------- | --------------------------------------------- | --------------------------------------------------------------- |
| AI use-case inventory           | QAI Hub or FAEP capability registry           | Inventory schema, ownership and update procedure                |
| Lifecycle governance            | QAI LLM DevOps Framework                      | Versioned lifecycle stages, approval records and change history |
| Risk assessment                 | QAI governance and assurance components       | Risk register, impact assessment and mitigation tracking        |
| Human oversight                 | Human approval and intervention controls      | Decision rights, escalation workflow and test results           |
| Explainability and traceability | Experiment records and execution provenance   | Logs, model/version records and reproducible test cases         |
| Privacy and data protection     | Data classification and controlled data flows | Data-flow maps, access controls and privacy assessment          |
| Monitoring and reassessment     | Runtime monitoring and change management      | Monitoring design, alert criteria and reassessment triggers     |

These mappings describe potential implementation approaches. They do not establish that the QAI portfolio currently satisfies the AIAF or any NSW policy.

## 6. Cybersecurity and Digital Resilience

**Official sources:**

* NSW cyber security policies: https://digital.nsw.gov.au/delivery/cyber-security-nsw/policies
* NSW Cyber Security Policy statement: https://www.digital.nsw.gov.au/delivery/cyber-security/policies/policy-statement
* NSW 2026–2028 Cyber Security Strategy: https://digital.nsw.gov.au/delivery/cyber-security/2026-2028-nsw-government-cyber-security-strategy

The NSW Cyber Security Policy sets mandatory baseline requirements for the government entities within its scope. The 2026–2028 NSW Government Cyber Security Strategy provides strategic direction on strengthening cyber resilience, secure-by-design practices, coordinated protection, and trust in government digital services.

The exact policy version, entity scope, mandatory controls, reporting requirements, and applicable contractual flow-downs must be checked before a project is classified as compliant.

### QAI/FAEP design considerations

* Identity and access management, least privilege, and separation of duties.
* Secure development, dependency management, vulnerability handling, and patching.
* Encryption, secrets management, logging, monitoring, and incident response.
* Network segmentation and controlled integration between IT, OT, edge, and cloud environments.
* Backup, restoration, disaster recovery, and continuity testing.
* Supply-chain risk and third-party service assessment.
* Security of AI models, datasets, agents, APIs, execution tools, and orchestration services.
* Evidence collection and accountable ownership of controls.

For the Digital Farm pilot, security boundaries should be defined across farm devices, field or greenhouse systems, edge infrastructure, regional hubs, and private or public cloud environments.

## 7. Data Governance, Privacy, and Information Management

**Reference sources:**

* NSW Information and Privacy Commission: https://www.ipc.nsw.gov.au/
* NSW privacy legislation information: https://www.ipc.nsw.gov.au/privacy
* Australian Privacy Principles guidance: https://www.oaic.gov.au/privacy/australian-privacy-principles/australian-privacy-principles-guidelines

Data governance must be based on the actual data collected, the responsible entity, the purposes of processing, and the applicable legal and contractual arrangements.

For each project, determine whether it involves personal information, health information, confidential government information, commercially sensitive information, critical infrastructure data, or other restricted data classes.

The applicable NSW privacy and information-access legislation should be identified for the relevant public-sector entity and use case. Commonwealth privacy requirements may also be relevant depending on the parties and circumstances.

### Proposed QAI/FAEP data governance controls

* Data inventory, classification, ownership, and permitted use.
* Data provenance, quality, lineage, and retention.
* Access control, consent or authority where applicable, and disclosure restrictions.
* Privacy impact assessment where warranted or required.
* Data minimization, de-identification where appropriate, and secure disposal.
* Rules governing external model services and third-party data processing.
* Data residency, cross-border access, and hosting restrictions where applicable.
* Auditable records of data access, model inputs, outputs, and consequential decisions.

For agriculture and regional CPS pilots, the data assessment should cover farm operations, workforce records, equipment telemetry, location data, satellite imagery, environmental observations, and any data identifying individuals or businesses.

## 8. NSW Government Procurement and Supplier Requirements

**Official source:** https://www.info.buy.nsw.gov.au/policy-library/policies/procurement-policy-framework

The NSW Procurement Policy Framework describes procurement objectives and Procurement Board requirements across the procurement lifecycle. The official page records an update dated **26 August 2026**.

The applicable version of the policy, current Procurement Board Directions, agency-specific arrangements, and any relevant tender conditions should be checked before responding to an opportunity.

### Supplier readiness workstream

| Workstream                 | Preparation activity                                                     | Evidence or deliverable        |
| -------------------------- | ------------------------------------------------------------------------ | ------------------------------ |
| Opportunity identification | Identify agency, need, scope, timing, and procurement route              | Opportunity register           |
| Eligibility                | Check supplier, legal entity, registration, and tender conditions        | Eligibility checklist          |
| Technical capability       | Map requirements to demonstrated capabilities                            | Requirement-to-evidence matrix |
| Commercial offer           | Define scope, deliverables, assumptions, and pricing                     | Proposal and cost model        |
| Risk and assurance         | Address security, privacy, AI, delivery, and continuity risks            | Risk and assurance pack        |
| Contracting                | Review IP, confidentiality, liability, data handling, and subcontracting | Contract review record         |
| Delivery                   | Define milestones, acceptance criteria, and support                      | Delivery and transition plan   |
| Benefits                   | Define measurable outcomes and reporting                                 | Benefits-realisation plan      |

Do not assume that alignment with a NSW strategy creates a procurement opportunity or that a supplier can participate without satisfying the relevant eligibility and tender conditions.

## 9. Cloud, Integration, and Digital Architecture

Architecture should be derived from the agency's service requirements, information classification, security controls, existing technology, integration needs, and lifecycle costs.

Potential areas for investigation include:

* Government and agency-approved hosting environments.
* Hybrid cloud, edge computing, and disconnected or low-connectivity operation.
* APIs, event-driven integration, identity federation, and interoperable data formats.
* Legacy system integration and controlled modernization.
* Digital twins, IoT, geospatial data, analytics, and operational technology.
* Resilience, service monitoring, backup, recovery, and exit portability.
* Vendor dependencies, data export, and transition to alternative providers.

QAI/FAEP architecture concepts may be assessed against these needs, but technology selection should remain evidence-led. A conceptual architecture is not proof of a deployable, secure, or interoperable implementation.

## 10. Potential Sector and Demonstration Opportunities

The following are candidate areas for research, not verified procurement demand.

| Sector or context                    | Potential use case                                               | Candidate QAI/FAEP components                         | Initial evidence needed                                          |
| ------------------------------------ | ---------------------------------------------------------------- | ----------------------------------------------------- | ---------------------------------------------------------------- |
| Agriculture and regional communities | Digital Farm twin, crop and water monitoring, asset coordination | FAEP, QAI Hub, digital twin and workflow components   | Stakeholder need, asset inventory, baseline and pilot KPIs       |
| Public service operations            | Workflow orchestration and decision support                      | QAI Agent Framework, QAI Hub                          | Process baseline, human oversight and service measures           |
| Infrastructure and utilities         | Asset monitoring, maintenance planning and simulation            | Digital twins, QAI Runtime, optimization components   | Asset data access, safety boundaries and comparative tests       |
| Emergency and resilience planning    | Scenario simulation and resource coordination                    | FAEP, simulation and orchestration components         | Defined scenarios, data agreements and operational validation    |
| Research and advanced computing      | Classical/quantum workload evaluation                            | QAI Research Hub, QAI PoC Lab                         | Reproducible experiments and classical comparison                |
| Regional digital infrastructure      | Edge-to-cloud coordination and local services                    | QAI Datacenter System, QAI Cloud, BareMetal Framework | Deployment feasibility, operating costs and partner requirements |

The Digital Farm pilot can provide an initial test environment for asset virtualization, data integration, workflow execution, and measurable comparison with conventional methods. Its outcomes should not be generalized to other sectors without further validation.

## 11. QAI/FAEP Requirement-to-Capability Mapping

For every identified NSW requirement or opportunity, record:

1. Source title, issuing authority, URL, version, and verification date.
2. Whether the source is legislation, a mandatory policy, a procurement condition, guidance, or strategy.
3. The applicable entity, project type, thresholds, and scope.
4. The specific requirement or opportunity statement.
5. The relevant QAI/FAEP capability and its current maturity.
6. Existing evidence and outstanding verification work.
7. The owner, next action, and target review date.

Use the following status labels consistently:

* **Not Assessed** — applicability or evidence has not yet been examined.
* **Applicability Pending Assessment** — the relevant scope is being established.
* **Designed / Documented** — a design or process is documented but implementation is not verified.
* **Partially Implemented** — some elements have been implemented.
* **Implemented — Verification Pending** — implementation is reported but verification is incomplete.
* **Demonstrated** — the capability has been demonstrated in a defined environment.
* **Verified for Defined Scope** — specified requirements have been checked against recorded evidence for a bounded scope.
* **Not Applicable — Justified** — non-applicability has been documented and justified.
* **Blocked** — progress depends on an unresolved issue or external dependency.

A status must be supported by evidence appropriate to the claim. A product description, roadmap, or architecture diagram alone is not proof of implementation or compliance.

## 12. Relationship to Other Australia Documents

This file should work alongside:

* `../README.md` — Australia country-priorities overview, if present at that location.
* `../national_priorities.md` — national strategic priorities.
* `../gap_analysis.md` — identified gaps and follow-up actions.
* `../product_alignment.md` — QAI product and capability alignment.
* `../sector_priorities.md` — sector-level opportunity assessment.
* `../frameworks/jurisdictional_compliance.md` — jurisdiction-specific applicability and compliance governance.
* `../frameworks/standards_assurance_framework.md` — standards and assurance mapping.
* `../frameworks/procurement_alignment_framework.md` — procurement lifecycle and supplier readiness.
* `../frameworks/commercialization_pathways.md` — commercialization options.
* `government_project_lifecycle.md` — public-sector project lifecycle.
* `private_project_lifecycle.md` — private-sector commercialization lifecycle.
* `digital_architecture_hierarchy.md` — cross-layer digital architecture.

Verify each relative path against the actual repository structure before adding links or restructuring files.

## 13. Research and Validation Work Plan

### Phase 1 — Official source verification

* Review the current NSW Digital Strategy and related agency priorities.
* Confirm the latest Digital Assurance Framework and relevant Gateway requirements.
* Review the current NSW AI Operational Policy and AIAF guidance.
* Review the applicable NSW Cyber Security Policy and current strategy.
* Identify applicable privacy, information-access, records, and data-governance obligations.
* Confirm the current Procurement Policy Framework and relevant Procurement Board Directions.

### Phase 2 — Requirement extraction

* Record exact source titles, publication or update dates, versions, and links.
* Extract the requirements relevant to the chosen entity and use case.
* Distinguish mandatory requirements from recommended practices and strategic ambitions.
* Record applicability conditions, thresholds, exceptions, and dependencies.
* Link each requirement to the relevant compliance or assurance register.

### Phase 3 — Capability mapping

* Map the requirements to QAI/FAEP architecture layers and portfolio components.
* Identify existing evidence and implementation gaps.
* Separate conceptual capability from demonstrated or verified functionality.
* Establish a classical baseline and measurable acceptance criteria for proposed pilots.

### Phase 4 — Opportunity validation

* Identify relevant agencies, industry participants, research organizations, and potential delivery partners.
* Confirm whether an actual need, funded program, market engagement, or procurement notice exists.
* Check supplier eligibility, registration, security, insurance, IP, and contract requirements.
* Record go/no-go decisions and unresolved assumptions.

## 14. Source Register

| Reference  | Subject                                | Official source                                                                                                                                         |
| ---------- | -------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| NSW-DL-001 | NSW Digital Strategy                   | https://digital.nsw.gov.au/strategy                                                                                                                     |
| NSW-DL-002 | Digital Assurance Framework            | https://www.digital.nsw.gov.au/policy/digital-assurance                                                                                                 |
| NSW-DL-003 | Investment and assurance frameworks    | https://www.nsw.gov.au/business-and-economy/budget-and-financial-management/consolidated-budget-management-guidance/investment-and-assurance-frameworks |
| NSW-DL-004 | NSW Gateway Assurance                  | https://www.nsw.gov.au/nsw-government/public-sector/financial-information-for-public-entities/nsw-gateway-assurance                                     |
| NSW-DL-005 | NSW AI Assessment Framework            | https://www.digital.nsw.gov.au/policy/artificial-intelligence/ai-governance-assurance-and-frameworks/nsw-ai-assessment-framework                        |
| NSW-DL-006 | NSW Cyber Security Policy              | https://digital.nsw.gov.au/delivery/cyber-security-nsw/policies                                                                                         |
| NSW-DL-007 | NSW Cyber Security Strategy 2026–2028  | https://digital.nsw.gov.au/delivery/cyber-security/2026-2028-nsw-government-cyber-security-strategy                                                     |
| NSW-DL-008 | NSW Procurement Policy Framework       | https://www.info.buy.nsw.gov.au/policy-library/policies/procurement-policy-framework                                                                    |
| NSW-DL-009 | NSW Information and Privacy Commission | https://www.ipc.nsw.gov.au/                                                                                                                             |
| NSW-DL-010 | Australian Privacy Principles guidance | https://www.oaic.gov.au/privacy/australian-privacy-principles/australian-privacy-principles-guidelines                                                  |

**Source-control note:** These links are an initial official-source register, not a complete legal inventory. Recheck the current policy version, legislation, applicability, and any later amendments when preparing a live proposal, tender, or compliance assessment.

## 15. Governance and Review

* Review sources whenever a relevant policy, procurement rule, assurance framework, or law changes.
* Reassess applicability when the project scope, hosting model, data, AI use, or contracting arrangement changes.
* Record material changes, decisions, and evidence in the appropriate repository registers.
* Do not represent policy alignment as government endorsement, eligibility, funding approval, procurement success, or verified compliance.
* Obtain qualified legal, privacy, cybersecurity, or procurement advice when project-specific obligations require specialist interpretation.

## 16. Update Record

**3 October 2026** — Replaced the initial placeholder with a structured NSW digital landscape covering digital strategy, assurance, AI governance, cybersecurity, privacy, procurement, architecture, candidate sector opportunities, capability mapping, and source verification.

**Current overall status:** Designed / Documented — detailed requirement extraction, project-specific applicability, evidence collection, and QAI/FAEP capability verification remain in progress.

---

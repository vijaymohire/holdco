# ACT Digital Landscape

**Status:** Designed / Documented — jurisdictional source mapping and QAI/FAEP alignment in progress
**Owner:** Bhadale IT — QAI / FAEP
**Jurisdiction:** Australian Capital Territory (ACT), Australia
**Last reviewed:** 3 October 2026

## 1. Purpose

Document the ACT Government's digital strategy, technology investment and assurance environment, AI governance, cybersecurity, data governance, privacy, procurement, and commercialization context.

This document supports Bhadale IT's assessment of how its QAI (Quantum AI) and FAEP (Federated Autonomous Ecosystem Platform) portfolio could address defined public-sector, research, industry, and community needs in the ACT.

Objectives:

* Identify authoritative ACT Government policies, legislation, frameworks, and guidance.
* Record requirements, scope, applicability, and source versions.
* Map relevant public priorities to potential QAI/FAEP capabilities.
* Identify procurement, security, privacy, assurance, and delivery considerations.
* Maintain traceability from each requirement or opportunity to evidence, gaps, owners, and actions.

This is a research and planning document. It does not establish government endorsement, funding eligibility, supplier qualification, procurement success, legal compliance, or product readiness.

## 2. Scope

This landscape covers:

1. ACT digital strategy and community-centred services.
2. Technology investment, project design, delivery, and assurance.
3. AI governance and risk assessment.
4. Cybersecurity and protection of official information.
5. Data governance, sharing, privacy, and information management.
6. Government procurement and supplier engagement.
7. Technology architecture, interoperability, cloud, and digital infrastructure.
8. Research, innovation, industry collaboration, and commercialization.
9. Potential applications across public administration, city planning, regional services, and cyber-physical systems.

Commonwealth legislation and policy may also apply, depending on the entity, funding, contract, data, and project. ACT and Commonwealth requirements should be assessed separately and then reconciled in the project compliance register.

## 3. ACT Digital Strategy

**Official source:** https://www.act.gov.au/open/act-digital-strategy

The ACT Digital Strategy describes how technology can support Canberra as an inclusive, progressive, and connected city. Its five focus areas are:

* Community-centred services.
* Values data.
* City planning by design.
* Relationships with industry to create value for the community.
* Future government.

The strategy provides a basis for exploring digital service improvements, data-informed planning, connected city capabilities, government-industry collaboration, and sustainable digital transformation. It should be read alongside current ACT Government priorities, directorate plans, and applicable operational policies.

### Potential QAI/FAEP alignment

| ACT focus area             | Candidate QAI/FAEP application                                             | Evidence to develop                                                      |
| -------------------------- | -------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| Community-centred services | Workflow orchestration, service integration, decision support              | Defined user need, service baseline, accessibility and usability tests   |
| Values data                | Data governance, provenance, controlled data sharing                       | Data inventory, classification, permissions, lineage and audit records   |
| City planning by design    | Digital twins, simulation, geospatial and sensor-data integration          | Defined planning scenario, authorized data access, model validation      |
| Industry collaboration     | Research partnerships, proof-of-concept demonstrations, reusable platforms | Partner requirements, collaboration agreements and demonstration results |
| Future government          | Governed AI workflows, secure integration, technology lifecycle management | Architecture, assurance plan, operational support and cost evidence      |

These are proposed capability mappings. The strategy does not establish demand for a particular QAI product or imply that the ACT Government has endorsed the portfolio.

## 4. Digital Governance and Technology Investment Assurance

**Official source:** https://www.act.gov.au/directorates-and-agencies/digital-canberra/digital-data-and-technology-solutions

The ACT Government's Digital, Data and Technology Solutions information identifies relevant government guidance and governance mechanisms, including:

* Guiding Best Practice Design and Delivery.
* ACT Government Technology Directions.
* Technology Investment Framework.
* ACT Data Governance Management Policy Framework and Guide.
* ACT Data Sharing Policy.
* Digital Services Governance Committee.
* Data Steering Committee.

The ACT Budget 2026–27 also identifies digital governance, investment oversight, delivery discipline, assurance, shared services, and workforce capability among Digital Canberra's priorities. See the official budget documents: https://www.treasury.act.gov.au/budget/budget-2026-2027

### Implications for QAI/FAEP proposals

A proposed ACT digital project should be prepared with:

* A clearly defined problem, affected stakeholders, and expected outcomes.
* Options analysis that considers existing services and conventional alternatives.
* Architecture, integration, data flows, and hosting requirements.
* Security, privacy, AI risk, and operational resilience assessments.
* Whole-of-life cost estimates, dependencies, and delivery capacity.
* Measurable benefits, acceptance criteria, and a verification plan.
* Project governance, decision rights, risk ownership, and change control.

Before applying a specific assurance process, confirm the current ACT Technology Investment Framework, relevant design-and-delivery guidance, funding arrangements, project thresholds, and directorate-specific requirements.

Do not assume that a framework applies identically to every ACT entity or every project.

## 5. Artificial Intelligence Governance and Assurance

**Official source:** https://www.act.gov.au/open/act-government-artificial-intelligence-policy

The ACT Government Artificial Intelligence Policy establishes a framework for safe, ethical, and responsible use of AI within the ACT Government. The associated ACT AI Assurance Framework includes a self-assessment approach intended to help identify AI system risks, mitigation measures, and accountability.

For a proposed ACT Government AI use case, review the current policy and assurance framework directly to determine the required assessments, approvals, documentation, and escalation pathways.

### Potential QAI/FAEP alignment

| Governance concern    | Potential capability or design response       | Evidence to develop                                          |
| --------------------- | --------------------------------------------- | ------------------------------------------------------------ |
| AI use-case inventory | QAI Hub or FAEP capability registry           | Inventory schema, ownership and update process               |
| Risk assessment       | QAI governance and assurance components       | Use-case assessment, risk register and mitigation evidence   |
| Lifecycle management  | QAI LLM DevOps Framework                      | Version control, approval records and change history         |
| Human oversight       | Human approval and intervention controls      | Decision rights, escalation process and test results         |
| Traceability          | Experiment records and execution provenance   | Model/version records, logs and reproducible tests           |
| Monitoring            | Runtime monitoring and reassessment workflows | Monitoring plan, alert criteria and reassessment triggers    |
| Safe tool execution   | QAI Agent Framework controls                  | Tool permissions, execution boundaries and adversarial tests |

A proposed AI or agentic workflow should document its purpose, affected users, data inputs, expected outputs, human oversight, failure modes, and operating boundaries.

Quantum-related claims should be assessed separately from conventional AI claims. A hybrid or quantum-enhanced design should demonstrate its value against a suitable classical baseline rather than assume that quantum execution is beneficial.

These mappings describe potential design responses; they do not establish current compliance with the ACT AI Policy or Assurance Framework.

## 6. Cybersecurity and Information Security

**Official source:** https://www.act.gov.au/__data/assets/pdf_file/0006/2837121/Cyber-Security-Policy.pdf

The ACT Government Cyber Security Policy, version 3.5 dated 10 November 2025 in the official document, provides a whole-of-government information-security framework. It distinguishes mandatory terms such as “MUST” from recommendations such as “SHOULD.” Directorate-specific requirements may also apply.

Before a project is classified as compliant, verify the current policy version, entity and system scope, applicable standards, exceptions, contractual obligations, and any additional controls required by the responsible directorate.

### QAI/FAEP security considerations

* Identity management, least privilege, separation of duties, and privileged access controls.
* Secure development, software dependency management, vulnerability remediation, and patching.
* Encryption, secrets management, logging, monitoring, and incident response.
* Network segmentation and controlled integration across IT, OT, edge, and cloud environments.
* Backup, restoration, recovery, and continuity testing.
* Third-party, supplier, and software supply-chain risk management.
* Security of models, datasets, agents, APIs, tools, and execution environments.
* Documented control ownership, verification evidence, and exception management.

For a cyber-physical or Digital Farm demonstration, define security boundaries across field devices, gateways, edge systems, regional services, and cloud resources. Do not connect to live government or operational systems without authorization and an approved test plan.

## 7. Data Governance, Sharing, and Privacy

**Official sources:**

* ACT Government data and technology guidance: https://www.act.gov.au/directorates-and-agencies/digital-canberra/digital-data-and-technology-solutions
* Information Privacy Act 2014: https://www.legislation.act.gov.au/a/2014-24
* Information Privacy Regulation 2014: https://www.legislation.act.gov.au/sl/2014-25/

The ACT Government identifies a Data Governance Management Policy Framework and Guide and a Data Sharing Policy as part of its data-management guidance.

The **Information Privacy Act 2014** is listed as in force in the ACT legislation register. Applicability to a particular project must be assessed against the current legislation, the responsible entity, the information involved, and the relevant processing or disclosure activity.

A data-sharing opportunity does not itself authorize access to information. Data access, use, disclosure, retention, and onward transfer must be supported by the applicable legal authority, approvals, and agreements.

### Proposed QAI/FAEP data governance controls

* Data inventory, classification, ownership, and permitted-use definitions.
* Data provenance, quality, lineage, and retention.
* Access controls, authorization, and auditable data-sharing agreements.
* Privacy assessment where required or appropriate.
* Data minimization, de-identification where suitable, and secure disposal.
* Controls for external AI services, model providers, and third-party processing.
* Hosting, data residency, cross-border access, and disclosure restrictions where applicable.
* Traceability for data access, model inputs and outputs, and consequential decisions.

For a city-planning, community-service, or CPS use case, identify whether datasets contain personal information, sensitive operational information, location data, confidential government material, or third-party intellectual property.

## 8. ACT Government Procurement

**Official sources:**

* Procurement ACT: https://www.procurement.act.gov.au/
* How ACT Government procures goods, services, and works: https://www.procurement.act.gov.au/supplying-to-act-government/getting-ready-to-work-with-the-act-government/how-we-procure-goods%2C-services-and-works
* Government Procurement Rules 2024: https://www.legislation.act.gov.au/

The ACT Government Procurement Framework consists of procurement-related legislation, legislative instruments, policies, guidance, tools, templates, and systems. Procurement ACT supports whole-of-government procurement policy and guidance, while responsibility for individual procurements remains with the relevant Territory entity and its authorized delegates.

The Government Procurement Rules 2024 form part of the ACT procurement framework. The current rules, relevant legislation, thresholds, exemptions, tender conditions, and entity-specific arrangements must be checked before engaging in a procurement opportunity.

### Supplier readiness workstream

| Workstream                 | Preparation activity                                                  | Evidence or deliverable        |
| -------------------------- | --------------------------------------------------------------------- | ------------------------------ |
| Opportunity identification | Identify the ACT entity, business need, scope, and procurement route  | Opportunity register           |
| Eligibility                | Verify entity, registration, tender and contractual requirements      | Eligibility checklist          |
| Technical capability       | Map stated requirements to demonstrated capabilities                  | Requirement-to-evidence matrix |
| Commercial offer           | Define scope, deliverables, assumptions, and pricing                  | Proposal and cost model        |
| Risk and assurance         | Address security, privacy, AI, delivery, and continuity risks         | Risk and assurance pack        |
| Contracting                | Review IP, confidentiality, liability, data, and subcontracting terms | Contract review record         |
| Delivery                   | Establish milestones, acceptance criteria, and support arrangements   | Delivery and transition plan   |
| Benefits                   | Define outcomes, baselines, and reporting methods                     | Benefits-realisation plan      |

Potential participation routes include open tenders, quotation processes, approved procurement arrangements, research collaborations, and engagement with established suppliers. The availability and eligibility conditions for each route must be verified for the actual opportunity.

## 9. Technology Directions, Architecture, and Integration

The ACT Government's published technology guidance provides a starting point for understanding government technology directions, investment planning, design quality, and shared-service considerations.

Potential architecture topics for QAI/FAEP mapping include:

* Existing ACT systems and agency-approved technology environments.
* API-based integration, event processing, and interoperability.
* Data platforms, analytics, geospatial information, and digital twins.
* Hybrid cloud, edge computing, and disconnected operation where justified.
* Identity federation, access control, and service-to-service security.
* Legacy integration and controlled modernization.
* Service continuity, backup, recovery, and monitoring.
* Vendor dependencies, portability, data export, and exit planning.
* Whole-of-life cost, energy use, operational staffing, and supportability.

Architecture decisions should be justified against the actual service requirements and constraints. QAI Datacenter System, QAI Cloud, QAI Hub, QAI Runtime, and FAEP orchestration concepts are candidates for evaluation, not presumed solutions for every ACT workload.

## 10. Candidate Sector and Demonstration Opportunities

The following areas are candidates for investigation. They are not confirmed ACT Government procurements or evidence of funded demand.

| Sector or context                  | Candidate use case                                                 | Potential QAI/FAEP components                   | Initial evidence needed                                     |
| ---------------------------------- | ------------------------------------------------------------------ | ----------------------------------------------- | ----------------------------------------------------------- |
| City planning                      | Digital twins, scenario modelling, connected-city data             | FAEP, digital twin components, simulation tools | Defined planning problem, authorized data, model validation |
| Community services                 | Workflow integration and decision support                          | QAI Hub, QAI Agent Framework                    | User requirements, oversight model, service baseline        |
| Public administration              | Governed workflow automation and information retrieval             | QAI Agent Framework, QAI LLM DevOps Framework   | Approved use case, risk assessment, accuracy tests          |
| Data and analytics                 | Controlled data integration, provenance, and reproducible analysis | QAI Research Hub, data-governance components    | Data permissions, lineage, quality and access controls      |
| Infrastructure and CPS             | Asset monitoring, maintenance planning, and simulation             | Digital twins, QAI Runtime, orchestration       | Asset inventory, safety constraints and test results        |
| Research and advanced computing    | Classical/quantum workload evaluation                              | QAI PoC Lab, QAI Research Hub                   | Reproducible experiments and classical baseline             |
| Regional and environmental systems | Environmental monitoring and resource planning                     | FAEP, edge/cloud coordination, simulation       | Stakeholder need, sensor/data access and measured outcomes  |

The ACT Digital Strategy's focus on city planning, connected technology, data, and collaboration with industry provides strategic context for investigating some of these opportunities. Specific agency needs, data access, funding, procurement pathways, and partner interest still need to be confirmed.

## 11. QAI/FAEP Requirement-to-Capability Mapping

For each ACT requirement or opportunity, record:

1. Source identifier, title, issuing authority, URL, version, and verification date.
2. Source classification: legislation, mandatory policy, procurement condition, guidance, or strategy.
3. Applicable entity, system, project, data, funding, and contractual scope.
4. Exact requirement or opportunity statement.
5. Relevant QAI/FAEP component and maturity status.
6. Existing evidence and outstanding verification tasks.
7. Owner, next action, dependency, and review date.

Use consistent status labels:

* **Not Assessed** — applicability or evidence has not yet been examined.
* **Applicability Pending Assessment** — scope is being established.
* **Designed / Documented** — a design or process is documented but implementation is not verified.
* **Partially Implemented** — some elements have been implemented.
* **Implemented — Verification Pending** — implementation is reported but verification is incomplete.
* **Demonstrated** — the capability has been demonstrated in a defined environment.
* **Verified for Defined Scope** — specified requirements have been checked against recorded evidence for a bounded scope.
* **Not Applicable — Justified** — non-applicability has been documented and justified.
* **Blocked** — progress depends on an unresolved issue or external dependency.

A status must match the available evidence. A proposed architecture, roadmap, or product description is not proof of implemented functionality or regulatory compliance.

## 12. Relationship to Other Australia Documents

This file should complement:

* `../national_priorities.md` — national priorities.
* `../gap_analysis.md` — gaps and follow-up actions.
* `../product_alignment.md` — QAI product and capability mapping.
* `../sector_priorities.md` — sector opportunity assessment.
* `../frameworks/jurisdictional_compliance.md` — jurisdictional applicability and compliance governance.
* `../frameworks/standards_assurance_framework.md` — standards and assurance.
* `../frameworks/procurement_alignment_framework.md` — procurement and supplier readiness.
* `../frameworks/commercialization_pathways.md` — commercialization routes.
* `government_project_lifecycle.md` — public-sector project lifecycle.
* `private_project_lifecycle.md` — private-sector commercialization lifecycle.
* `digital_architecture_hierarchy.md` — digital architecture layers.

Verify each relative path against the actual repository structure before adding links or reorganizing files.

## 13. Research and Validation Work Plan

### Phase 1 — Source verification

* Review the current ACT Digital Strategy and ACT Government priorities.
* Verify the current Technology Investment Framework and design-and-delivery guidance.
* Review the current ACT AI Policy and AI Assurance Framework.
* Verify the current Cyber Security Policy and applicable security requirements.
* Review the current ACT privacy legislation and data governance guidance.
* Verify the Government Procurement Act, Procurement Rules, current policies, thresholds, and tender requirements.

### Phase 2 — Requirement extraction

* Record the source title, issuing authority, publication date, version, and URL.
* Extract requirements relevant to the selected entity and use case.
* Distinguish mandatory controls from guidance and strategic objectives.
* Record scope, thresholds, exemptions, approvals, and contractual flow-downs.
* Link requirements to the jurisdictional compliance register.

### Phase 3 — Capability mapping

* Map applicable requirements to QAI/FAEP components and architecture layers.
* Record maturity, evidence, dependencies, and implementation gaps.
* Separate conceptual capabilities from implemented and verified capabilities.
* Define classical baselines, test scenarios, acceptance criteria, and measurable outcomes.

### Phase 4 — Opportunity validation

* Identify relevant ACT entities, directorates, research organizations, and potential partners.
* Confirm actual needs, market engagements, funded programs, and procurement opportunities.
* Check supplier eligibility, registration, security, insurance, IP, and contract conditions.
* Record go/no-go decisions and unresolved assumptions.

## 14. Source Register

| Reference  | Subject                                          | Official source                                                                                                                                         |
| ---------- | ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ACT-DL-001 | ACT Digital Strategy                             | https://www.act.gov.au/open/act-digital-strategy                                                                                                        |
| ACT-DL-002 | Digital, Data and Technology Solutions           | https://www.act.gov.au/directorates-and-agencies/digital-canberra/digital-data-and-technology-solutions                                                 |
| ACT-DL-003 | ACT Government AI Policy and Assurance Framework | https://www.act.gov.au/open/act-government-artificial-intelligence-policy                                                                               |
| ACT-DL-004 | ACT Government Cyber Security Policy             | https://www.act.gov.au/__data/assets/pdf_file/0006/2837121/Cyber-Security-Policy.pdf                                                                    |
| ACT-DL-005 | ACT Government procurement guidance              | https://www.procurement.act.gov.au/                                                                                                                     |
| ACT-DL-006 | How ACT Government procures goods and services   | https://www.procurement.act.gov.au/supplying-to-act-government/getting-ready-to-work-with-the-act-government/how-we-procure-goods%2C-services-and-works |
| ACT-DL-007 | Information Privacy Act 2014                     | https://www.legislation.act.gov.au/a/2014-24                                                                                                            |
| ACT-DL-008 | Information Privacy Regulation 2014              | https://www.legislation.act.gov.au/sl/2014-25/                                                                                                          |
| ACT-DL-009 | ACT Budget 2026–27                               | https://www.treasury.act.gov.au/budget/budget-2026-2027                                                                                                 |
| ACT-DL-010 | ACT legislation register                         | https://www.legislation.act.gov.au/                                                                                                                     |

**Source-control note:** This is an initial official-source register, not a complete legal inventory. Recheck the latest documents and legislation when preparing a live tender, implementation plan, or compliance assessment.

## 15. Governance and Review

* Review the source register when relevant policies, legislation, procurement rules, or assurance processes change.
* Reassess applicability whenever project scope, hosting, data, AI use, or contractual arrangements change.
* Record material decisions, changes, evidence, and exceptions in the relevant registers.
* Obtain specialist legal, privacy, cybersecurity, or procurement advice where needed.
* Avoid claiming government endorsement, funding approval, procurement eligibility, or verified compliance without evidence.

## 16. Update Record

**3 October 2026** — Replaced the initial placeholder with a structured ACT digital landscape covering digital strategy, technology investment assurance, AI governance, cybersecurity, data and privacy, procurement, architecture, candidate sector opportunities, capability mapping, and source verification.

**Current overall status:** Designed / Documented — detailed requirement extraction, project-specific applicability, evidence collection, and QAI/FAEP capability verification remain in progress.
---

# Jurisdictional Compliance

**Status:** In Progress
**Owner:** Bhadale IT / QAI-FAEP
**Scope:** Australia — Commonwealth, New South Wales (NSW), Australian Capital Territory (ACT), and project-specific obligations
**Last reviewed:** 3 October 2026

## 1. Purpose

Establish a repeatable method for identifying, assessing, implementing and evidencing the legal, regulatory, policy, contractual and technical obligations applicable to QAI/FAEP products, services, research activities, pilots and commercial deployments in Australia.

This document defines the compliance assessment process. It does not constitute legal advice, certify compliance, or imply that every listed framework applies to every project.

## 2. Relationship to Other Frameworks

| Document                              | Primary responsibility                                                                      |
| ------------------------------------- | ------------------------------------------------------------------------------------------- |
| `policy_to_capability_mapping.md`     | Connect policy and requirements to QAI/FAEP capabilities, evidence and gaps                 |
| `jurisdictional_compliance.md`        | Determine applicability, obligations, controls, responsible parties and compliance evidence |
| `government_development_alignment.md` | Relate government development priorities to capability and project opportunities            |
| `public_needs_framework.md`           | Identify and validate public and operational needs                                          |
| `../procurement/README.md`            | Manage procurement research, supplier readiness and opportunity screening                   |

The same requirement may appear in several documents, but each should serve its defined purpose and refer to a common requirement identifier.

## 3. Compliance Principles

1. **Applicability before implementation:** Determine whether a requirement applies to the entity, activity, jurisdiction, system and contract.
2. **Authority and precedence:** Distinguish legislation, subordinate instruments, binding directions, contractual terms, government policies, standards and voluntary guidance.
3. **Evidence-based status:** Do not declare compliance solely because a policy, architecture or procedure has been documented.
4. **Risk-based implementation:** Select controls based on applicable requirements, data sensitivity, threats, safety consequences and operational context.
5. **Jurisdictional separation:** Assess Commonwealth, NSW and ACT requirements separately before defining shared controls.
6. **Lifecycle coverage:** Include design, development, testing, deployment, operation, maintenance, incident response and decommissioning.
7. **Data and IP protection:** Minimise unnecessary disclosure and maintain clear ownership, licensing, access and retention boundaries.
8. **Supplier transparency:** Describe actual capabilities, certifications, Australian operations and manufacturing activities accurately.
9. **Continuous review:** Reassess requirements when laws, policies, systems, contracts or project conditions change.

## 4. Jurisdictional Scope

### 4.1 Commonwealth

Investigate relevant obligations concerning:

* Privacy and personal information.
* Cybersecurity and information security.
* Critical infrastructure or regulated industry requirements, where applicable.
* Government procurement and contract conditions.
* AI, automated decision-making and responsible technology use.
* Intellectual property, confidentiality and licensing.
* Export controls, sanctions or security restrictions, where applicable.
* Research, grants, industry programs and associated reporting conditions.

### 4.2 New South Wales

Investigate relevant requirements concerning:

* NSW AI governance and assessment.
* Government cloud policy and technology architecture.
* Cybersecurity and information management.
* NSW procurement legislation, policies, directions and supplier conditions.
* Records management, privacy and information access.
* Agency-specific assurance, accessibility and service requirements.
* Quantum-safe and post-quantum cybersecurity transition requirements where relevant.

### 4.3 Australian Capital Territory

Investigate relevant requirements concerning:

* ACT Government technology directions.
* Digital service and data governance.
* Privacy, information security and records management.
* ACT procurement policy, tender conditions and supplier obligations.
* Contract-specific cloud, AI, interoperability and assurance requirements.
* Applicable economic development or technology program conditions.

### 4.4 Private-Sector Projects

For private-sector buyers, assess the applicable legislation, industry regulation, customer contract, security requirements, service levels, data handling terms, insurance requirements and technical acceptance criteria.

Government policies must not automatically be treated as binding on private-sector work unless they apply through law, contract, funding conditions or another relevant instrument.

## 5. Requirement Authority Classification

Assign each requirement one of the following classifications.

| Classification                  | Meaning                                                                                    |
| ------------------------------- | ------------------------------------------------------------------------------------------ |
| Legislation                     | Applicable Act or legislative instrument                                                   |
| Binding direction or instrument | Direction, determination or other instrument with applicable legal or administrative force |
| Contractual obligation          | Requirement accepted under an applicable contract, deed, grant or agreement                |
| Mandatory government policy     | Policy requirement binding within its defined scope                                        |
| Conditional requirement         | Applies when a defined threshold, activity, data type or circumstance is present           |
| Standard or technical baseline  | Standard or baseline adopted by law, contract, policy or project decision                  |
| Advisory guidance               | Guidance that informs risk management but is not independently mandatory                   |
| Strategic priority              | Policy context that may inform planning but is not itself a compliance obligation          |
| Unverified                      | Authority, currency or applicability has not yet been established                          |

Do not classify a requirement as mandatory merely because it appears on an official government website.

## 6. Compliance Assessment Workflow

For every candidate requirement:

1. Identify the issuing authority and authoritative source.
2. Record the exact title, URL, publication date, revision and date checked.
3. Determine the applicable entity, jurisdiction, activity, system and project phase.
4. Identify the legal, policy, contractual or technical basis for applicability.
5. Record the requirement in clear, testable language.
6. Identify the responsible organisation, role or supplier.
7. Map the requirement to QAI/FAEP components and existing controls.
8. Identify evidence needed to demonstrate implementation and effectiveness.
9. Record gaps, dependencies, risk, remediation actions and target dates.
10. Review the assessment with the appropriate technical, security, privacy, procurement or legal owner.
11. Reassess after material changes or at the agreed review interval.

If applicability is uncertain, record **Applicability Pending Assessment**. Do not assume the requirement is either mandatory or irrelevant.

## 7. Compliance Register Schema

Each requirement should have a unique identifier, for example `AU-NSW-SEC-001`.

Required fields:

| Field                    | Description                                                     |
| ------------------------ | --------------------------------------------------------------- |
| Requirement ID           | Stable unique identifier                                        |
| Requirement title        | Short descriptive name                                          |
| Jurisdiction             | Commonwealth, NSW, ACT, cross-jurisdictional or private sector  |
| Authority                | Issuing agency, regulator, buyer or contracting party           |
| Source reference         | Official URL, provision, section or clause                      |
| Version and dates        | Publication/revision date and date checked                      |
| Authority classification | Classification from Section 5                                   |
| Applicability conditions | Entity, activity, system, threshold and scope                   |
| Applicability decision   | Applicable, Not Applicable, Conditional or Pending Assessment   |
| Rationale                | Evidence supporting the applicability decision                  |
| Responsible party        | Entity, team or role responsible for satisfying the requirement |
| Requirement statement    | Testable statement of the obligation                            |
| QAI/FAEP control         | Product, process, architecture or organisational control        |
| Evidence required        | Artefacts, tests, approvals or records needed                   |
| Evidence reference       | Actual repository path or authoritative record                  |
| Implementation status    | Current status from Section 8                                   |
| Gap and risk             | Deficiency, consequence and dependencies                        |
| Remediation action       | Work needed to address the gap                                  |
| Acceptance criterion     | Observable condition for closure                                |
| Review owner and date    | Responsible reviewer and next review date                       |

## 8. Compliance Status Model

Use these statuses for each applicable requirement:

* **Not Assessed:** No applicability or implementation assessment has been completed.
* **Applicability Pending Assessment:** Available information is insufficient to decide whether the requirement applies.
* **Applicable — Gap Identified:** The requirement applies and a shortfall is known.
* **Planned:** Remediation or implementation has been approved or scheduled but is not complete.
* **Implemented — Verification Pending:** Controls have been implemented but sufficient verification evidence is not yet available.
* **Verified for Defined Scope:** Available evidence supports the requirement for the specified system, version, environment and scope.
* **Not Applicable — Justified:** A documented, reviewed rationale establishes that the requirement does not apply.
* **Exception or Waiver Approved:** An authorised exception has been formally granted, where the relevant regime permits one.
* **Blocked:** A dependency prevents completion or verification.

A requirement must not be marked verified merely because its related document exists. The verification record must identify the control, evidence, scope, reviewer and assessment date.

## 9. Initial Authoritative Source Register

These sources are initial research references. Each requirement must still be checked for currency, applicability and authority before being entered as a confirmed obligation.

### 9.1 Privacy

* [Privacy Act 1988 — Federal Register of Legislation](https://www.legislation.gov.au/C2004A03712/latest/downloads)
* [Australian Privacy Principles Guidelines — OAIC](https://www.oaic.gov.au/privacy/australian-privacy-principles/australian-privacy-principles-guidelines)

Assess whether the Act and relevant privacy principles apply to the entity and activity. Consider collection, use, disclosure, security, access, correction, retention and cross-border disclosures where applicable.

### 9.2 Cybersecurity

* [Australian Government Information Security Manual](https://www.cyber.gov.au/ism)
* [Essential Eight Maturity Model](https://www.cyber.gov.au/business-government/asds-cyber-security-frameworks/essential-eight/essential-eight-maturity-model)

Use these as cybersecurity assessment references. Determine which requirements are mandatory for the relevant organisation, system, contract or security environment. Do not automatically claim that a government security framework is a certification held by Bhadale IT.

### 9.3 NSW Procurement

* [NSW Government Procurement Policy Framework](https://www.info.buy.nsw.gov.au/policy-library/policies/procurement-policy-framework)
* [NSW Procurement Policies and Guidelines](https://buy.nsw.gov.au/buyer-guidance/before-you-buy/policies-and-guidelines)

Determine which procurement rules bind the buyer and which supplier conditions flow into the specific procurement or contract.

### 9.4 ACT Procurement

* [ACT Government Procurement](https://www.procurement.act.gov.au/)
* [Supplying to the ACT Government](https://www.procurement.act.gov.au/supplying-to-act-government)

Verify current procurement policies, eligibility, registration requirements, tender conditions and contractual terms for each ACT opportunity.

### 9.5 NSW Digital and AI Governance

* [NSW Digital Policy](https://digital.nsw.gov.au/policy)
* [NSW AI Assessment Framework](https://digital.nsw.gov.au/policy/artificial-intelligence/ai-governance-assurance-and-frameworks/nsw-ai-assessment-framework)
* [NSW Cloud Policy](https://digital.nsw.gov.au/policy/cloud-policy)

Assess applicability to the agency, use case and proposed engagement. Verify current versions and commencement dates before relying on any particular requirement.

## 10. QAI/FAEP Compliance Control Domains

Assess the following domains when relevant to the use case.

### 10.1 Governance and accountability

* Named system owner and accountable decision-maker.
* Defined system boundary, purpose and intended users.
* Risk register, change control and approval process.
* Clear responsibility across Bhadale IT, partners, suppliers and customers.

### 10.2 AI and automated systems

* Use-case inventory and purpose limitation.
* Data and model provenance.
* Risk assessment and human oversight where appropriate.
* Testing for accuracy, robustness, security and unintended effects.
* Monitoring, incident response and change management.
* Documented limitations and operational boundaries.

### 10.3 Privacy and data governance

* Data inventory and classification.
* Lawful collection, access, use and disclosure.
* Data minimisation, retention and disposal.
* Access controls and audit records.
* Third-party and cross-border data handling where applicable.

### 10.4 Cybersecurity and infrastructure

* Threat and risk assessment.
* Identity and access management.
* Secure configuration, vulnerability management and patching.
* Encryption and key management.
* Logging, monitoring, backup and recovery.
* Supplier, cloud, edge, network and operational technology risks.
* Security assessment and authorisation where required.

### 10.5 Procurement and delivery

* Eligibility and supplier onboarding.
* Contractual requirements and flow-down obligations.
* Scope, deliverables, milestones and acceptance criteria.
* Service levels, support, incident notification and warranties.
* Subcontractor and third-party dependencies.
* Cost, risk, change control and exit arrangements.

### 10.6 Intellectual property and commercialization

* Ownership and provenance of pre-existing IP.
* Separation of background IP and project-specific deliverables.
* Licensing, permitted use and confidentiality.
* Protection of source code, designs, models and research artefacts.
* Publication, disclosure and patent-filing considerations.
* Accurate claims about Australian ownership, operations, manufacturing and local value.

### 10.7 Safety and operational assurance

* Hazard and failure analysis proportionate to the application.
* Defined safe states and manual fallback where required.
* Test environments and staged deployment.
* Operational monitoring and incident escalation.
* Defined acceptance criteria before production use.

## 11. QAI/FAEP Jurisdictional Configuration

Maintain a common control baseline and apply jurisdiction-specific overlays.

* **Common core:** architecture, engineering lifecycle, secure development, evidence management, IP governance and change control.
* **Commonwealth overlay:** applicable national legislation, programs, procurement and security requirements.
* **NSW overlay:** applicable digital, AI, cloud, cybersecurity and procurement controls.
* **ACT overlay:** applicable technology, data, digital service and procurement controls.
* **Project overlay:** buyer-specific contract terms, data classification, system boundary, acceptance criteria and operational obligations.

A shared control may support multiple requirements, but each requirement must retain its own applicability decision and evidence trail.

## 12. Digital Farm CPS/Digital Twin Pilot

Use the Digital Farm pilot as an initial assessment case.

Assess:

* Data sources, ownership, permissions and sensitivity.
* Farm assets, interfaces and connected systems.
* Digital twin scope and model limitations.
* AI or automation decisions and human oversight.
* Cloud, edge and device security.
* Operational safety and failure handling.
* Data retention, monitoring and incident response.
* Demonstration evidence and acceptance criteria.
* Ownership and licensing of background and project IP.

Classify each control as applicable, conditional, not applicable with rationale, or pending assessment. Do not claim production compliance on the basis of a simulation or documentation-only demonstration.

## 13. Compliance Review Gates

### Gate A — Concept and discovery

Identify the use case, jurisdiction, stakeholders, data types, system boundary and potential regulatory constraints.

### Gate B — Design

Complete applicability decisions, risk assessments, architecture controls, data flows and evidence plans.

### Gate C — Implementation and testing

Verify controls, record test results, address defects and maintain versioned artefacts.

### Gate D — Deployment approval

Confirm required reviews, authorisations, acceptance criteria, operational responsibilities and contractual prerequisites.

### Gate E — Operation and change

Monitor control effectiveness, manage incidents, review access and reassess material changes.

### Gate F — Decommissioning

Address data return or disposal, access revocation, records retention, supplier exit and continuing contractual obligations.

A project must not pass a gate while a critical applicable requirement remains unresolved unless an authorised decision-maker has approved a lawful and documented disposition.

## 14. Exceptions and Residual Risk

For each exception or unresolved gap, record:

* Requirement ID and reason.
* Business and technical justification.
* Risk and potential impact.
* Compensating controls.
* Responsible risk owner.
* Approval authority.
* Validity period and review date.
* Conditions for closure.

An internal risk acceptance does not override a legal obligation or a contractual requirement unless an authorised mechanism permits the departure.

## 15. Immediate Actions

* [ ] Confirm the authoritative sources and current versions.
* [ ] Establish the compliance register and unique requirement IDs.
* [ ] Define the applicable entity, system and project boundaries.
* [ ] Assess privacy, cybersecurity, AI governance and procurement requirements.
* [ ] Separate mandatory obligations from policy context and advisory guidance.
* [ ] Map applicable controls to QAI/FAEP components and actual evidence.
* [ ] Assess the Digital Farm pilot against the defined scope.
* [ ] Record gaps, responsible owners, acceptance criteria and review dates.
* [ ] Feed jurisdiction-specific controls into the QAI/FAEP Jurisdictional Configuration Model.
* [ ] Reassess compliance before any relevant deployment, bid or contractual commitment.

## 16. Review and Change Control

Review this document whenever a relevant law, policy, technical baseline, contract, product architecture or deployment context changes.

Record the review date, reviewer, source changes, applicability decisions, evidence changes and outstanding actions.

**Governing principle:** Compliance is assessed against a defined requirement, applicable scope and verifiable evidence—not inferred from policy alignment or architectural intent alone.
---
---

## Update Addendum — 3 October 2026

**Document:** `jurisdictional_compliance.md`
**Update date:** 3 October 2026
**Owner:** Bhadale IT / QAI-FAEP
**Update status:** Draft — process enhancements proposed
**Scope:** Commonwealth, New South Wales (NSW), Australian Capital Territory (ACT), private-sector engagements and project-specific obligations.

### 17. Source Verification and Requirement Traceability

Every candidate requirement must be traceable to an authoritative source and a defined applicability decision before it is treated as a confirmed obligation.

For each source, record:

* Official source title and issuing authority.
* Canonical URL and relevant section, provision, clause or control.
* Publication date, version or revision date, where available.
* Date last accessed and verified.
* Requirement authority classification, as defined in Section 5.
* Applicable entity, jurisdiction, activity, system and project phase.
* Applicability rationale and the person responsible for reviewing it.

A government strategy or policy priority must not automatically be classified as a legal obligation. Confirm whether the requirement applies directly, is incorporated into a contract or funding agreement, or is advisory only.

**Source validation rule:** A URL in the register indicates a research reference, not proof that the source has been checked, that its contents are current, or that a requirement applies to Bhadale IT.

### 18. Responsibility and Contractual Flow-Down

For each applicable requirement, identify which party is responsible for satisfying it. Depending on the engagement, responsibility may rest with Bhadale IT, a technology or research partner, a customer, a government agency, or multiple parties.

Record, where relevant:

* Accountable organisation and responsible role.
* Supporting organisations and dependencies.
* Contractual clauses or agreements that allocate responsibilities.
* Required approvals, notifications and reporting obligations.
* Evidence that each responsible party must provide.
* Escalation and acceptance arrangements for unresolved gaps.

Distinguish between an obligation imposed directly on an organisation by law and a requirement imposed on a supplier through a procurement process, contract, grant, customer policy or other applicable instrument.

A supplier must not assume that the customer's compliance responsibilities automatically transfer to the supplier, or that a customer's policies are irrelevant. The actual legal and contractual allocation must be assessed for each engagement.

### 19. Evidence Management and Verification Records

Compliance evidence must be linked to the specific requirement and to the scope in which the evidence was produced.

Where applicable, maintain:

* Requirement ID and control reference.
* Evidence title, repository path or controlled record location.
* System, product version, deployment environment and assessment scope.
* Evidence creation date and review date.
* Test method, test result and identified limitations.
* Reviewer and approval record.
* Outstanding gaps, remediation actions and closure criteria.
* Next review date or event that triggers reassessment.

Evidence may include test reports, design records, risk assessments, policies, configuration records, audit logs, approvals, contractual documents and operational results.

**Verification rule:** A design document or planned control is not sufficient evidence that a control operates effectively. Use the existing Section 8 status model and mark a requirement **Verified for Defined Scope** only when the available evidence supports that conclusion for the stated scope.

Evidence should be stored with appropriate access restrictions. Public documentation must not disclose confidential customer information, security-sensitive configurations, unpublished QAI intellectual property or personal information unnecessarily.

### 20. Requirement IDs and Cross-Framework Consistency

Use stable requirement identifiers across related documents and project records. Each identifier should point to one defined requirement, with related controls and evidence linked rather than copied inconsistently.

Maintain traceability across:

| Related document or record           | Traceability responsibility                                               |
| ------------------------------------ | ------------------------------------------------------------------------- |
| `policy_to_capability_mapping.md`    | Policy or requirement → capability → evidence and gap                     |
| `technology_priority_framework.md`   | Technology priority → relevance and proposed application                  |
| `standards_assurance_framework.md`   | Applicable control → verification method and assurance evidence           |
| `procurement_alignment_framework.md` | Buyer or tender requirement → supplier response and supporting evidence   |
| `commercialization_pathways.md`      | Commercial arrangement → IP, licensing and contractual considerations     |
| Project-specific compliance register | Applicability decision → responsible party → control → evidence → closure |

Technology alignment, capability mapping and procurement readiness do not, by themselves, establish legal compliance or supplier qualification.

### 21. Change Control, Exceptions and Review

Reassess the compliance register when a material change occurs, including:

* New or amended legislation, regulations, policies, standards or contractual conditions.
* Changes to the customer, jurisdiction, project scope or delivery model.
* Introduction of new data types, AI models, quantum-related components, external services or hardware.
* Changes to hosting locations, cross-border data flows, system interfaces or security boundaries.
* Significant incidents, test failures, audit findings or newly identified risks.
* Changes to grant conditions, procurement terms, licensing arrangements or IP ownership.

For each change, record the date, source of change, affected requirement IDs, impact assessment, decision, owner and required follow-up.

Exceptions must be documented with their rationale, scope, risk, compensating controls, approval authority, expiry or review date, and closure conditions. An exception must not be treated as an approved waiver unless the relevant authority permits it and the required approval has been obtained.

Where no authorised exception mechanism exists, record the gap and determine an appropriate remediation or escalation path.

### 22. Digital Farm Pilot — Initial Compliance Workstream

Apply this framework to the QAI Digital Farm demonstrator as a project-specific workstream. This is an initial assessment structure, not a declaration that the pilot is deployed or compliant.

The pilot's proposed architecture spans farm or field assets, edge components, regional services, private or public cloud resources, data interfaces and hybrid classical/QAI execution. The applicable requirements will depend on the actual deployment, participating organisations, data, contracts and operating environment.

Assess the following work areas:

1. **Assets and interfaces:** Identify devices, sensors, gateways, software services, external connections, operators and system boundaries.
2. **Data governance:** Classify farm, workforce, customer, operational and commercially sensitive data; assess collection, access, use, sharing, retention and deletion.
3. **Cybersecurity:** Define access controls, identity management, secure configuration, logging, vulnerability management, backup and incident handling appropriate to the deployment.
4. **AI/QAI assurance:** Document intended use, limitations, human oversight, fallback behaviour, test cases and the conditions under which automated recommendations or actions are permitted.
5. **Operational safety:** Identify actions that could affect equipment, water, energy, crops, people or the environment; define authorisation, interlocks, safe states and manual override where relevant.
6. **Hosting and interoperability:** Record hosting locations, third-party services, data flows, dependencies, service levels and recovery arrangements.
7. **IP and commercial boundaries:** Identify pre-existing QAI IP, project-created artefacts, partner contributions, permitted disclosures, licensing terms and ownership decisions.
8. **Procurement and funding:** Record applicable customer requirements, supplier conditions, grant obligations and reporting duties where relevant.
9. **Verification:** Define test evidence, acceptance criteria, responsible reviewers, unresolved risks and conditions for progression to the next pilot stage.

For the initial register, use **Not Assessed** or **Applicability Pending Assessment** where the facts are insufficient. Use **Applicable — Gap Identified**, **Planned**, **Implemented — Verification Pending** or **Verified for Defined Scope** only when the corresponding conditions in Section 8 are met.

### 23. Review Cadence and Governance

Assign an owner and next review date to each active requirement. Review frequency should reflect the risk, rate of change, contractual obligations and operational consequences. Reassess immediately when a material change or incident requires it rather than waiting for the next scheduled review.

A periodic review should confirm:

* Sources remain accessible and sufficiently current.
* Applicability decisions remain valid.
* Assigned responsibilities and contractual conditions have not changed.
* Evidence remains relevant to the current product, version and deployment.
* Gaps, exceptions and corrective actions have named owners and target dates.
* Cross-references to related framework documents remain accurate.

Legal interpretation and high-consequence regulatory decisions should be referred to appropriately qualified advisers or the relevant authority when required.

### 24. Update Record — 3 October 2026

**Changes proposed in this update:**

* Strengthened source versioning and applicability traceability.
* Clarified direct obligations versus contractual flow-down.
* Expanded evidence, reviewer and approval records.
* Added cross-framework requirement ID consistency.
* Defined change-control and exception-management expectations.
* Established an initial project-specific compliance workstream for the QAI Digital Farm pilot.
* Reinforced evidence-based status reporting and review ownership.

**Current overall status:** In Progress. These additions describe a governance process. They do not demonstrate that individual legal requirements have been assessed, controls have been implemented, or compliance has been independently verified.

**Next action:** Populate the requirement register for the actual entity, project and engagement; validate official sources; assign responsibility; and attach supporting evidence before making compliance or supplier-readiness claims.

---

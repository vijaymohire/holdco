# Standards Assurance Framework

**Status:** Draft — Initial Framework
**Scope:** Australian national, NSW, ACT, and relevant industry requirements
**Purpose:** Establish a repeatable process for identifying applicable standards, assessing assurance requirements, mapping controls to QAI/FAEP capabilities, and maintaining evidence of implementation and validation.

**Last reviewed:** 3 October 2026

---

## 1. Objectives

This framework defines how Bhadale IT will:

* Identify standards, technical guidance, policies, and assurance requirements relevant to QAI/FAEP products and projects.
* Determine their scope, applicability, and whether they are mandatory, contractual, recommended, or voluntary.
* Map relevant requirements to architecture, products, services, development processes, and pilot activities.
* Record implementation evidence, identified gaps, risks, and remediation actions.
* Support proportionate assurance for research, demonstrations, commercial deployments, and government projects.
* Maintain traceability from requirements through implementation, testing, approval, and operational monitoring.

This document establishes an assurance method. It does not establish that any QAI/FAEP product or service is compliant, certified, accredited, or independently validated.

## 2. Assurance Principles

### 2.1 Applicability before implementation

Before adopting a standard or control, record:

* The issuing authority and source.
* The relevant edition or version.
* The system, product, service, or project in scope.
* The applicable jurisdiction and operating environment.
* The reason the requirement applies.
* Whether it arises from legislation, regulation, contract, procurement conditions, organizational policy, or voluntary good practice.

Do not assume that every government guideline applies to every private-sector project.

### 2.2 Evidence before claims

Distinguish between:

* A requirement being identified.
* A control being designed.
* A control being implemented.
* A control being tested.
* A control being independently assessed.
* A formal certification, accreditation, or approval being granted by the relevant authority.

Only make claims supported by evidence appropriate to the claim.

### 2.3 Risk-based assurance

Assurance activities should reflect the intended use, data sensitivity, affected stakeholders, operational consequences, deployment environment, and contractual requirements.

A research simulation and a production system controlling physical agricultural equipment will not necessarily require the same assurance activities.

### 2.4 Lifecycle coverage

Consider assurance throughout the lifecycle:

1. Concept and requirements.
2. Architecture and design.
3. Development and integration.
4. Testing and validation.
5. Deployment and acceptance.
6. Operation, monitoring, and maintenance.
7. Change management and retirement.

## 3. Standards and Assurance Domains

### 3.1 Information security and cybersecurity

**Areas to assess**

* Access control and identity management.
* Secure configuration and vulnerability management.
* Software supply-chain security.
* Logging, monitoring, incident response, and recovery.
* Data protection and information handling.
* IT and operational technology security.

**Potential QAI/FAEP alignment**

* QAI OS, QAI Runtime, and QAI Hub.
* QAI BareMetal Framework.
* QAI Datacenter System and deployment tooling.
* FAEP governance, resource management, and service management.

**Evidence examples**

* Threat models and security architecture.
* Configuration and access-control test results.
* Software and dependency inventories.
* Vulnerability assessments and remediation records.
* Backup and recovery tests.
* Security incident and change-management procedures.

**Official reference:** Australian Signals Directorate, Information Security Manual (ISM):
https://www.cyber.gov.au/ism

The ISM provides a cybersecurity framework that organizations can apply using their risk-management approach to protect IT and OT systems. Its applicability and implementation must be assessed against the actual environment. See the official guidance at the link above.

### 3.2 Baseline cybersecurity controls

The Australian Signals Directorate's Essential Eight describes eight prioritized mitigation strategies for reducing common cyber risks. The guidance is primarily designed for internet-connected IT networks and is not, by itself, a complete security framework for every OT environment.

**Potential QAI/FAEP alignment**

* Secure development and deployment.
* Privileged-access controls.
* Application and operating-system patching.
* Application control and hardening.
* Backup and recovery procedures.

**Evidence examples**

* Control implementation records.
* Configuration evidence.
* Backup restoration test results.
* Maturity assessments and remediation plans.

**Official references:**

* Essential Eight: https://www.cyber.gov.au/business-government/asds-cyber-security-frameworks/essential-eight
* Essential Eight maturity model: https://www.cyber.gov.au/business-government/asds-cyber-security-frameworks/essential-eight/essential-eight-maturity-model
* Essential Eight assessment process guide: https://www.cyber.gov.au/business-government/asds-cyber-security-frameworks/essential-eight/essential-eight-assessment-process-guide

Do not claim an Essential Eight maturity level without a suitable assessment and supporting evidence.

### 3.3 Artificial intelligence governance and assurance

**Areas to assess**

* Intended purpose and acceptable use.
* Data quality, privacy, and permissions.
* Model performance, reliability, and limitations.
* Human oversight and accountability.
* Fairness, transparency, and explainability where relevant.
* Monitoring, incident handling, and reassessment after material changes.

**Potential QAI/FAEP alignment**

* QAI Agent Framework.
* QAI LLM DevOps Framework.
* QAI Research Hub and QAI PoC Lab.
* QAI validation and governance frameworks.

**Evidence examples**

* Use-case descriptions and risk assessments.
* Dataset provenance and evaluation records.
* Model and workflow test results.
* Human-review and escalation procedures.
* Monitoring and change records.

**NSW reference:** NSW AI Assessment Framework:
https://www.digital.nsw.gov.au/policy/artificial-intelligence/ai-governance-assurance-and-frameworks/nsw-ai-assessment-framework

For NSW Government engagements, verify the current policy and assessment requirements with the responsible agency. The NSW framework describes agency responsibilities for registering and assessing AI use cases across their lifecycle. These agency obligations should not automatically be described as direct obligations on every external supplier.

### 3.4 Privacy, data governance, and sovereignty

**Areas to assess**

* Personal and sensitive information.
* Data collection, use, disclosure, and retention.
* Data ownership, permissions, and provenance.
* Data residency and cross-border transfers where relevant.
* Access, deletion, and incident-management procedures.
* Sector-specific confidentiality and contractual obligations.

**Potential QAI/FAEP alignment**

* QAI Hub and QAI Cloud concepts.
* QAI Data and resource-management components.
* FAEP governance and interface architecture.
* Digital Farm asset, sensor, and workflow data management.

**Evidence examples**

* Data inventories and flow diagrams.
* Privacy impact assessments where appropriate.
* Data-processing agreements.
* Retention and access-control policies.
* Documented hosting and data-location decisions.

Identify applicable privacy and data-handling obligations for each deployment. Do not treat a general architecture statement as proof of compliance.

### 3.5 Cloud, infrastructure, and service resilience

**Areas to assess**

* Cloud service responsibilities and configurations.
* Availability and recovery requirements.
* Workload isolation and environment separation.
* Service monitoring and incident response.
* Data backup, portability, and exit arrangements.
* Infrastructure dependencies and third-party risks.

**Potential QAI/FAEP alignment**

* QAI Datacenter System.
* QAI Cloud, QAI Hub, and QAI Runtime.
* Bare-metal, edge, and hybrid deployment concepts.
* Service management and resource management.

**Evidence examples**

* Deployment diagrams and configuration records.
* Service-level objectives and monitoring results.
* Recovery objectives and tested recovery procedures.
* Infrastructure dependency and supplier registers.
* Demonstrated migration or exit procedures where required.

Select controls and assurance activities based on the actual hosting environment, customer requirements, and risk profile.

### 3.6 Quantum technologies and post-quantum cryptography

**Areas to assess**

* Quantum-computing experimentation and reproducibility.
* Quantum-classical integration and workload management.
* Quantum algorithm evaluation against classical baselines.
* Cryptographic dependencies and migration readiness.
* Quantum communication or sensing claims, where relevant.

**Potential QAI/FAEP alignment**

* QAI quantum and hybrid-computing research.
* QAI algorithms and validation frameworks.
* QAI communication architecture.
* Hybrid execution and classical fallback.

**Evidence examples**

* Experiment configuration and reproducible results.
* Identification of simulation, emulation, virtualization, or physical execution.
* Classical baseline measurements.
* Cryptographic asset inventories and migration plans where relevant.
* Documented limitations and hardware dependencies.

**Official reference:** Australian Government, Critical Technology Standards:
https://www.industry.gov.au/science-technology-and-innovation/technology/critical-technology-standards

**NSW reference:** Transition to post-quantum cryptographic cybersecurity:
https://www.chiefscientist.nsw.gov.au/independent-reports/nsw-government-transition-to-post-quantum-cryptographic-cyber-security

Do not describe a system as quantum-safe, quantum-resistant, or quantum-advantaged without evidence supporting the specific claim.

### 3.7 Safety and cyber-physical systems

**Areas to assess**

* Physical hazards and operational boundaries.
* Human supervision and emergency stop procedures.
* Sensor and actuator reliability.
* Safe failure states and recovery procedures.
* Environmental conditions and operating limits.
* Applicable machinery, electrical, workplace, and sector-specific requirements.

**Potential QAI/FAEP alignment**

* QAI Digital Farm CPS/Digital Twin.
* Virtual-asset and simulation components.
* QAI Agent Framework and automation workflows.
* FAEP governance and operational management.

**Evidence examples**

* Hazard analyses and risk controls.
* Interface and integration tests.
* Simulation-to-field validation records.
* Human override and emergency procedures.
* Acceptance testing and operational sign-off.

Identify the applicable safety requirements before connecting software to physical equipment or enabling autonomous actions.

### 3.8 Software engineering, interoperability, and quality

**Areas to assess**

* Requirements traceability and configuration management.
* Software testing and release management.
* API and interface compatibility.
* Documentation and reproducibility.
* Defect management and maintenance.
* Quality controls proportionate to the intended use.

**Potential QAI/FAEP alignment**

* QAI Product Development Toolkit.
* QAI Product Deployment Toolkit.
* QAI LLM DevOps Framework.
* FAEP interfaces, service management, and lifecycle governance.

**Evidence examples**

* Version-controlled requirements and designs.
* Test plans, results, and defect records.
* API specifications and integration tests.
* Release notes and rollback procedures.
* Reproducible build or deployment instructions where applicable.

Select relevant standards and practices after identifying the project's scope and contractual requirements.

## 4. Standards and Assurance Register

Maintain a register with the following fields:

| Field             | Description                                                       |
| ----------------- | ----------------------------------------------------------------- |
| Requirement ID    | Unique identifier                                                 |
| Domain            | Security, AI, privacy, safety, quality, or another domain         |
| Source            | Official standard, law, policy, contract, or guidance             |
| Version/date      | Applicable edition or publication date                            |
| Jurisdiction      | National, NSW, ACT, other, or multi-jurisdictional                |
| Applicability     | Reason the requirement applies                                    |
| Obligation type   | Legal, regulatory, contractual, policy, recommended, or voluntary |
| Scope             | Product, system, project, service, or organization                |
| Mapped capability | Relevant QAI/FAEP component                                       |
| Required control  | Action or control to implement                                    |
| Evidence          | Test, record, assessment, certificate, or other artefact          |
| Assurance status  | Current assessment state                                          |
| Gap/risk          | Identified deficiency or uncertainty                              |
| Action owner      | Person or role responsible                                        |
| Due/review date   | Target completion and next review                                 |
| Approval          | Authorized reviewer or decision-maker, if applicable              |

## 5. Assurance Status and Evidence Maturity

Use consistent labels:

* **Not Assessed:** Applicability or implementation has not been assessed.
* **Applicable — Not Implemented:** A requirement applies, but implementation is not complete.
* **Designed/Documented:** The intended control or process is documented.
* **Partially Implemented:** Some required elements are implemented.
* **Implemented — Verification Pending:** Implementation exists but adequate testing is outstanding.
* **Tested:** Evidence demonstrates the defined test was performed and passed its stated criteria.
* **Independently Assessed:** An appropriate independent assessment has been completed and documented.
* **Certified/Accredited:** A formal certification or accreditation has been granted by the relevant authority or scheme, where applicable.
* **Not Applicable:** A documented assessment supports the decision that the requirement does not apply.

These statuses describe different kinds of evidence; they are not interchangeable maturity levels. Record the scope and limitations of each assessment.

## 6. Assurance Workflow

1. **Define scope:** Identify the product, project, customer, deployment, and intended use.
2. **Identify sources:** Locate authoritative standards, policies, laws, contractual clauses, and guidance.
3. **Determine applicability:** Document why each requirement applies or does not apply.
4. **Map controls:** Connect applicable requirements to system components and responsible roles.
5. **Identify gaps:** Record missing controls, evidence, expertise, or approvals.
6. **Plan remediation:** Assign actions, owners, dates, and acceptance criteria.
7. **Implement and test:** Retain implementation records and test results.
8. **Review and approve:** Obtain the required internal, customer, or independent review.
9. **Monitor changes:** Reassess when requirements, system scope, data, deployment, or intended use materially changes.
10. **Maintain evidence:** Preserve controlled records appropriate to the contract and information-handling requirements.

## 7. Initial QAI/FAEP Assurance Priorities

Use the following as an initial assessment queue, not as a claim that these controls are already implemented.

| Priority area                      | Initial focus                                         | Candidate evidence                                             |
| ---------------------------------- | ----------------------------------------------------- | -------------------------------------------------------------- |
| QAI PoC Lab                        | Reproducible tests and documented limitations         | Test records and baseline results                              |
| QAI Agent/LLM workflows            | Human oversight, model evaluation, and change control | Evaluation reports and workflow logs                           |
| QAI Hub and Cloud                  | Identity, access, monitoring, and recovery            | Configuration records and recovery tests                       |
| QAI BareMetal Framework            | Secure provisioning and configuration consistency     | Provisioning tests and configuration baselines                 |
| Digital Farm CPS/Digital Twin      | Data governance, operational safety, and integration  | Asset inventories, hazard analysis, and pilot acceptance tests |
| Quantum-classical experiments      | Execution-mode transparency and classical comparison  | Experiment records and benchmark results                       |
| Product development and deployment | Versioning, testing, release, and rollback            | Release records and test reports                               |

## 8. Relationship to Other Frameworks

This framework supports and should remain consistent with:

* `frameworks/technology_priority_framework.md`
* `frameworks/policy_to_capability_mapping.md`
* `frameworks/jurisdictional_compliance.md`
* `frameworks/government_development_alignment.md`
* `frameworks/procurement_alignment_framework.md`
* `frameworks/commercialization_pathways.md`
* `digital_landscape/government_project_lifecycle.md`
* `digital_landscape/private_project_lifecycle.md`
* `gap_analysis.md`
* `product_alignment.md`

Use the government and private-project lifecycle documents to determine where assurance activities belong in project delivery, procurement, acceptance, and operation.

## 9. Official Source Register

Start with these authoritative sources and verify the current edition and applicability before use:

* **Australian Signals Directorate — Information Security Manual:** https://www.cyber.gov.au/ism
* **Australian Signals Directorate — Essential Eight:** https://www.cyber.gov.au/business-government/asds-cyber-security-frameworks/essential-eight
* **NSW Government — AI Assessment Framework:** https://www.digital.nsw.gov.au/policy/artificial-intelligence/ai-governance-assurance-and-frameworks/nsw-ai-assessment-framework
* **Australian Government — Critical Technology Standards:** https://www.industry.gov.au/science-technology-and-innovation/technology/critical-technology-standards
* **NSW Chief Scientist — Transition to post-quantum cryptographic cybersecurity:** https://www.chiefscientist.nsw.gov.au/independent-reports/nsw-government-transition-to-post-quantum-cryptographic-cyber-security

Add further standards and jurisdiction-specific sources only after confirming their relevance to a defined product or project.

## 10. Review and Maintenance

Review this framework when:

* A relevant standard, policy, or legal requirement changes.
* A new jurisdiction, industry, or deployment environment is introduced.
* A pilot reveals a material assurance gap.
* A product changes its functionality, data use, or autonomy.
* A customer or procurement process introduces additional requirements.
* A certification, independent assessment, or formal approval is pursued.

Record the review date, reviewer, changes, open gaps, and next actions.

---

**Assurance statement:** This framework provides a method for planning and documenting assurance. Product-level compliance, certification, accreditation, safety, security, and performance claims must be supported by applicable requirements and appropriate evidence.
---

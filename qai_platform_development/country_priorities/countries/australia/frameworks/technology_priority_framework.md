# Technology Priority Framework

**Status:** Draft — Initial Framework
**Scope:** Australian national priorities, NSW, ACT, and relevant industry applications
**Purpose:** Identify technology priorities relevant to QAI/FAEP development, map them to potential capabilities and applications, and define the evidence required before pursuing commercialization or government opportunities.

**Last reviewed:** 3 October 2026

---

## 1. Objectives

This framework provides a consistent method to:

* Identify technology priorities documented by Australian government and relevant industry sources.
* Distinguish national priorities from jurisdiction-specific initiatives and industry needs.
* Map technology priorities to QAI/FAEP products, services, research, and modernization capabilities.
* Identify implementation dependencies, technical gaps, assurance requirements, and evidence needs.
* Prioritize pilot opportunities using existing evidence, achievable scope, measurable outcomes, and commercialization relevance.
* Maintain a traceable relationship between policy, technology, implementation, and value.

Technology alignment is an opportunity for further assessment. It does not establish government endorsement, procurement eligibility, funding eligibility, or technical advantage.

## 2. Technology Priority Categories

### 2.1 Artificial Intelligence and Advanced Computing

**Areas to assess**

* AI and machine learning.
* Generative and agentic AI.
* High-performance computing and hybrid computing.
* AI infrastructure, deployment, monitoring, and governance.
* Quantum-classical computing research and experimentation.

**Potential QAI/FAEP alignment**

* QAI Processor and QAI Datacenter System.
* QAI OS, QAI Runtime, and QAI Hub.
* QAI Agent Framework and QAI LLM DevOps Framework.
* QAI Research Hub and QAI PoC Lab.
* QAI Product Development and Product Deployment Toolkits.

**Evidence required**

* Working demonstrations and reproducible test results.
* Workload-specific performance and cost baselines.
* Model evaluation, security, privacy, and governance records.
* Documented hardware, software, and integration dependencies.

### 2.2 Quantum Technologies

**Areas to assess**

* Quantum computing research and experimentation.
* Quantum algorithms and hybrid quantum-classical workflows.
* Quantum information science and quantum error correction.
* Quantum communications and quantum sensing, where relevant.
* Quantum technology infrastructure and skills development.

**Potential QAI/FAEP alignment**

* QAI quantum-computing research and experimentation.
* Hybrid quantum-classical execution and fallback.
* QAI algorithm and validation frameworks.
* QAI communication and resource-management concepts.

**Evidence required**

* Clear identification of the execution mode: simulation, emulation, virtualization, or physical quantum hardware.
* Reproducible experiments and classical baselines.
* Hardware-provider and software dependencies.
* Defined metrics for accuracy, fidelity, runtime, resource use, and cost.
* Independent or otherwise documented validation before claiming a quantum advantage.

**Guardrail:** A proposed quantum architecture or simulated experiment must not be presented as demonstrated physical quantum execution or proven quantum advantage.

### 2.3 Cybersecurity and Critical Technologies

**Areas to assess**

* Secure-by-design architecture.
* Identity, access control, data protection, and auditability.
* Critical-technology risk management.
* Post-quantum cryptography (PQC) readiness.
* Resilience, software supply-chain security, and incident response.

**Potential QAI/FAEP alignment**

* QAI security and governance controls.
* Bare-metal and controlled-environment provisioning.
* Hybrid deployment and resource isolation.
* Security assurance and lifecycle documentation.

**Evidence required**

* Threat models and security architecture.
* Access-control and audit-log tests.
* Software and dependency inventories.
* Cryptographic inventory and migration assessment where PQC is relevant.
* Independent security testing where required by the project.

**Guardrail:** Do not claim that a system is quantum-safe, compliant, or certified solely because a framework describes the relevant controls.

### 2.4 Advanced Manufacturing and Industrial Automation

**Areas to assess**

* Industrial automation and robotics.
* Digital engineering and digital twins.
* Simulation, optimization, and predictive maintenance.
* Industrial AI and cyber-physical systems.
* Interoperability across IT, operational technology (OT), and edge systems.

**Potential QAI/FAEP alignment**

* FAEP industrial ecosystem architecture.
* QAI Digital Twin and virtual-asset concepts.
* QAI Agent Framework and workflow orchestration.
* QAI resource, service, and value management.

**Evidence required**

* Asset, interface, and workflow inventories.
* Demonstrated integration with representative systems.
* Safety and operational boundaries.
* Comparison against an existing operational baseline.
* Measured improvements in reliability, throughput, quality, or resource use.

### 2.5 Agriculture, Food, Water, and Environmental Systems

**Areas to assess**

* Agricultural productivity and precision agriculture.
* Water and energy management.
* Food production and supply-chain visibility.
* Environmental monitoring and resource efficiency.
* Rural infrastructure and digital capability.

**Potential QAI/FAEP alignment**

* QAI Digital Farm CPS/Digital Twin pilot.
* QAI-CROP, QAI-WATER, QAI-ASSET, and QAI-INVENTORY concepts.
* Edge-to-cloud data and workflow integration.
* Sensing, simulation, decision support, and controlled automation.

**Evidence required**

* Defined pilot users and operational problems.
* Asset, sensor, data, and interface inventories.
* Data permissions and data-quality assessment.
* Classical baseline and measurable pilot KPIs.
* Field validation before claims about operational or economic outcomes.

**Initial candidate:** Use the Digital Farm pilot to test asset virtualization, data integration, workflow orchestration, and measurable decision-support outcomes before expanding into more complex capabilities.

### 2.6 Data Centres, Cloud, and Digital Infrastructure

**Areas to assess**

* Secure and resilient computing infrastructure.
* Cloud and hybrid-cloud operations.
* Edge computing and distributed workloads.
* Data governance and sovereignty.
* Workload scheduling, observability, and resource efficiency.

**Potential QAI/FAEP alignment**

* QAI Datacenter System and QAI Cloud concepts.
* QAI Hub and QAI Runtime.
* QAI BareMetal Framework.
* QAI workload and resource-management components.

**Evidence required**

* Deployment architecture and supported environments.
* Availability, recovery, performance, and cost measurements.
* Data-location and access requirements.
* Tested backup, recovery, and operational procedures.
* Verified integration with the proposed infrastructure.

### 2.7 Energy, Critical Minerals, and Resource Systems

**Areas to assess**

* Energy-system optimization.
* Industrial process efficiency.
* Critical-mineral processing and supply chains.
* Resource planning, monitoring, and maintenance.
* Simulation and decision support for complex infrastructure.

**Potential QAI/FAEP alignment**

* Hybrid optimization and simulation research.
* Digital twins and industrial workflow integration.
* Resource-management and decision-support concepts.

**Evidence required**

* A specific operational problem and authorized data.
* A measurable classical baseline.
* Domain-expert review and safety constraints.
* Demonstrated cost, performance, or resource improvements.

### 2.8 Public-Sector Digital Services

**Areas to assess**

* Secure digital service delivery.
* Interoperability and information management.
* AI governance and assurance.
* Procurement, records, accessibility, and privacy requirements.
* Service reliability and measurable public outcomes.

**Potential QAI/FAEP alignment**

* QAI/FAEP governance and orchestration frameworks.
* QAI Product Development and Deployment Toolkits.
* Workflow management and evidence traceability.

**Evidence required**

* Defined service need and accountable stakeholders.
* Applicable jurisdictional requirements.
* Privacy, security, accessibility, and records assessments.
* Acceptance criteria and measurable service outcomes.
* Procurement-compliant engagement and disclosure controls.

## 3. Priority-to-Capability Mapping

Maintain a traceable record for each candidate opportunity using the following fields:

| Field               | Required information                                      |
| ------------------- | --------------------------------------------------------- |
| Priority ID         | Unique identifier                                         |
| Technology priority | Named technology or domain                                |
| Source              | Authoritative source and publication date                 |
| Scope               | National, NSW, ACT, or industry-specific                  |
| Problem or need     | Documented problem to address                             |
| QAI/FAEP capability | Relevant product, service, or research component          |
| Maturity status     | Planned, designed, partially implemented, or demonstrated |
| Dependencies        | Data, hardware, software, partners, and skills            |
| Evidence            | Tests, demonstrations, documentation, and results         |
| Gap                 | Missing capability, evidence, or assurance                |
| Pilot candidate     | Proposed bounded validation activity                      |
| Outcome metric      | Measurable technical, operational, or economic result     |
| Next action         | Owner, action, and review date                            |

## 4. Capability Maturity and Evidence Rules

Use consistent maturity labels across this framework and related documents:

* **Planned:** Intended but not yet documented in sufficient implementation detail.
* **Designed/Documented:** Architecture, workflow, or specification exists.
* **Partially Implemented:** Some components exist; end-to-end operation is incomplete.
* **Implemented — Verification Pending:** Implementation exists but has not been adequately verified.
* **Demonstrated:** A defined scenario has been executed with recorded evidence.
* **Validated:** Results have been assessed against explicit acceptance criteria.
* **Not Assessed:** Available information is insufficient to determine maturity.
* **Not Applicable:** The capability does not apply to the assessed opportunity.

A capability's maturity must be based on its actual evidence, not on its inclusion in a product catalogue or architecture document.

## 5. Opportunity Prioritization Method

Assess candidate opportunities against the following factors:

1. **Documented need:** Is there an identifiable problem supported by a credible source or stakeholder?
2. **Evidence readiness:** Can existing QAI/FAEP assets support a meaningful demonstration?
3. **Pilot feasibility:** Can the scope, cost, data, and dependencies be managed?
4. **Measurable value:** Can outcomes be compared with a baseline?
5. **Assurance requirements:** Can applicable security, safety, privacy, and regulatory requirements be addressed?
6. **Commercial pathway:** Is there a credible route to a customer, partner, research collaboration, or procurement opportunity?
7. **IP and disclosure risk:** Can the work proceed without unnecessary disclosure of proprietary technology?

Record the assessment and rationale. Do not treat an unvalidated numerical score as proof of commercial viability or government priority.

## 6. Relationship to Other Frameworks

This framework works with:

* `national_priorities.md`
* `sector_priorities.md`
* `product_alignment.md`
* `gap_analysis.md`
* `frameworks/policy_to_capability_mapping.md`
* `frameworks/jurisdictional_compliance.md`
* `frameworks/government_development_alignment.md`
* `frameworks/standards_assurance_framework.md`
* `frameworks/procurement_alignment_framework.md`
* `digital_landscape/national_digital_landscape.md`
* `digital_landscape/nsw_digital_landscape.md`
* `digital_landscape/act_digital_landscape.md`
* `digital_landscape/government_project_lifecycle.md`
* `digital_landscape/private_project_lifecycle.md`

## 7. Authoritative Source Register

Use official publications as the starting point. Confirm current versions, publication dates, scope, and applicability before relying on a source for a proposal or bid.

### Australian Government

* Australian Industry Sector Plan: https://www.industry.gov.au/publications/industry-sector-plan/introduction
* Future Made in Australia: https://www.industry.gov.au/future-made-in-australia
* Critical Technologies in National Interest: https://www.industry.gov.au/publications/list-critical-technologies-national-interest
* Critical Technologies Statement: https://www.industry.gov.au/publications/critical-technologies-statement
* National Robotics Strategy: https://www.industry.gov.au/publications/national-robotics-strategy
* Resources Sector Plan: https://www.industry.gov.au/publications/resources-sector-plan/executive-summary
* Manufacturing: https://www.industry.gov.au/manufacturing

### New South Wales

* NSW Industry Policy: https://www.nsw.gov.au/departments-and-agencies/investment-nsw/resources/nsw-industry-policy
* NSW focus sectors: https://www.nsw.gov.au/departments-and-agencies/investment-nsw/focus-sectors
* NSW AI Assessment Framework: https://www.digital.nsw.gov.au/policy/artificial-intelligence/ai-governance-assurance-and-frameworks/nsw-ai-assessment-framework
* NSW Cloud Policy: https://digital.nsw.gov.au/policy/cloud-policy
* NSW Government Procurement Policy Framework: https://www.info.buy.nsw.gov.au/policy-library/policies/procurement-policy-framework
* NSW transition to post-quantum cryptographic cybersecurity: https://www.chiefscientist.nsw.gov.au/independent-reports/nsw-government-transition-to-post-quantum-cryptographic-cyber-security

### Australian Capital Territory

* ACT Government Technology Directions: https://www.act.gov.au/open/act-government-technology-directions
* CBR2030 strategic economic development framework: https://www.act.gov.au/open/cbr2030-acts-strategic-economic-development-framework
* ACT Government Procurement: https://www.procurement.act.gov.au/

## 8. Review and Maintenance

Review this framework when:

* A relevant policy or technology strategy is updated.
* A new jurisdiction or sector is added.
* A QAI/FAEP capability changes maturity.
* A pilot produces new technical or commercial evidence.
* A procurement opportunity introduces specific requirements.

For each review, record the date, reviewer, changed sources, decisions, and resulting actions.

---

**Important:** This framework is a planning and traceability document. It does not establish compliance, eligibility, government endorsement, procurement success, or a quantum advantage. Those conclusions require opportunity-specific evidence and assessment.
---

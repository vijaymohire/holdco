
# Digital Architecture Hierarchy

**Status:** In Progress
**Purpose:** Define a layered digital architecture for connecting organizational objectives, governance, business processes, data, applications, infrastructure, and operational execution across Australian government and private-sector environments.

**Last reviewed:** 3 October 2026

---

## 1. Objectives

This document establishes a reference architecture for evaluating and developing digital systems within the QAI / FAEP ecosystem.

It aims to:

- Connect policy and business objectives to operational capabilities.
- Separate governance, business workflows, application logic, data management, and infrastructure.
- Support integration with existing government and industry systems.
- Identify appropriate execution environments for classical computing, AI, simulation, emulation, and quantum workloads.
- Support security, privacy, interoperability, resilience, cost management, and assurance.
- Provide a consistent architecture that can be configured for Commonwealth, NSW, ACT, and private-sector projects.
- Enable incremental development, from small pilots to larger operational systems.

This is a **proposed reference architecture**, not a claim that Australian government agencies use one universal architecture or mandate these exact layers.

## 2. Architecture at a Glance

```text
+-------------------------------------------------------------+
| L1. OUTCOMES, POLICY & STRATEGY                             |
| Public needs | Business goals | Service outcomes | KPIs     |
+-------------------------------------------------------------+
| L2. GOVERNANCE, JURISDICTION & ASSURANCE                    |
| Policy | Compliance | Risk | Security | Privacy | Audit     |
+-------------------------------------------------------------+
| L3. BUSINESS CAPABILITIES & OPERATING MODEL                 |
| People | Roles | Services | Processes | Decisions           |
+-------------------------------------------------------------+
| L4. WORKFLOW & ORCHESTRATION                                |
| Cases | Approvals | Rules | Events | Schedules | Agents     |
+-------------------------------------------------------------+
| L5. APPLICATIONS & DIGITAL SERVICES                         |
| Portals | APIs | Dashboards | Business applications         |
+-------------------------------------------------------------+
| L6. DATA, KNOWLEDGE & DIGITAL TWINS                         |
| Data products | Metadata | Models | Records | Twin states   |
+-------------------------------------------------------------+
| L7. INTELLIGENCE & COMPUTATION                              |
| Rules | Analytics | AI/ML | Simulation | Hybrid QAI         |
+-------------------------------------------------------------+
| L8. INTEGRATION & CONNECTIVITY                              |
| APIs | Messaging | Identity federation | IoT | Networks     |
+-------------------------------------------------------------+
| L9. COMPUTE, STORAGE & EXECUTION                            |
| Cloud | On-premises | Edge | HPC | Emulation | QPU access   |
+-------------------------------------------------------------+
| L10. OPERATIONS & CONTINUOUS IMPROVEMENT                    |
| Monitoring | Support | Recovery | Cost | Performance        |
+-------------------------------------------------------------+

Cross-cutting controls:
Security | Privacy | Data governance | Accessibility |
Interoperability | Resilience | Safety | Evidence | IP
```

The ten layers are an organizing model for QAI / FAEP design. They can be combined, expanded, or implemented using different technologies depending on project scope.

## 3. Layer Definitions

### L1. Outcomes, Policy and Strategy

Defines why the system exists and which outcomes it must support.

Typical inputs:

- Government or organizational objectives.
- Stakeholder needs and service expectations.
- Sector and industry priorities.
- Business cases and approved project scope.
- Key performance indicators and acceptance criteria.

**Outputs:** Defined outcomes, measurable objectives, scope, constraints, and success criteria.

### L2. Governance, Jurisdiction and Assurance

Determines the controls that apply to the project and who is accountable for decisions.

Typical functions:

- Jurisdiction and applicability assessment.
- Policy, legal, regulatory, and contractual mapping.
- Risk management and assurance planning.
- Security and privacy governance.
- Data ownership and sovereignty considerations.
- Audit trails, evidence retention, and approval controls.
- Intellectual property and third-party licensing management.

**Outputs:** Applicable obligations, control requirements, governance roles, risk records, and assurance evidence.

### L3. Business Capabilities and Operating Model

Describes what the organization needs to do, independently of any particular software product.

Typical elements:

- People, roles, and responsibilities.
- Business services and operating procedures.
- Organizational capabilities.
- Decision rights and approval paths.
- Service levels and operational constraints.
- Human oversight and escalation arrangements.

**Outputs:** Capability maps, service definitions, role models, and operating procedures.

### L4. Workflow and Orchestration

Coordinates activities across people, applications, data, and automated components.

Typical functions:

- Workflow and case management.
- Business rules and approvals.
- Event-driven processing.
- Scheduling and task allocation.
- Agent orchestration with defined permissions.
- Human-in-the-loop review.
- Exception handling, retries, and recovery.

**Outputs:** Executable workflows, process states, task assignments, and traceable decisions.

### L5. Applications and Digital Services

Provides the interfaces through which users and other systems access capabilities.

Typical components:

- Web portals and graphical user interfaces.
- Dashboards and reporting applications.
- Business applications.
- APIs and service endpoints.
- Mobile and field interfaces.
- Administrative and operational consoles.

**Outputs:** User-facing services and application interfaces.

### L6. Data, Knowledge and Digital Twins

Manages the information needed to operate, analyze, and improve services.

Typical components:

- Operational and analytical data stores.
- Data ingestion and transformation.
- Metadata, data catalogues, and lineage.
- Knowledge bases and retrieval systems.
- Digital-twin models and current states.
- Data quality and retention controls.
- Access permissions and data-sharing rules.

**Outputs:** Governed data products, usable information, model inputs, and traceable records.

### L7. Intelligence and Computation

Hosts the analytical and computational methods that support decisions or execute workloads.

Potential components:

- Deterministic rules and classical algorithms.
- Statistical analysis and optimization.
- AI and machine-learning models.
- Simulation and emulation.
- Hybrid quantum-classical workflows.
- Quantum algorithm experiments and QPU integrations, where available and justified.
- Model evaluation and uncertainty assessment.

**Outputs:** Predictions, analyses, optimization results, simulations, and decision-support information.

Quantum execution must be selected based on technical availability and demonstrated suitability. A proposed quantum workflow is not evidence of quantum advantage.

### L8. Integration and Connectivity

Enables controlled communication between systems, services, devices, and execution environments.

Typical components:

- APIs and service contracts.
- Message brokers and event streams.
- Identity federation and access interfaces.
- Enterprise and industrial system connectors.
- IoT, field, and edge connectivity.
- Network segmentation and secure communication.
- Data exchange and interoperability mappings.

**Outputs:** Defined integration paths, data exchange contracts, and controlled system interactions.

### L9. Compute, Storage and Execution

Provides the infrastructure and runtime environments required to operate the system.

Possible environments:

- Public cloud.
- Private cloud and on-premises infrastructure.
- Edge devices and local gateways.
- High-performance computing (HPC).
- Containers and virtual machines.
- Simulation and emulation environments.
- External quantum computing services or physical QPUs, when available.

**Outputs:** Allocated execution resources, storage, runtime environments, and deployment configurations.

Not every workload requires every environment. Deployment choices must account for latency, availability, data sensitivity, connectivity, cost, and operational constraints.

### L10. Operations and Continuous Improvement

Ensures the system can be monitored, supported, recovered, and improved after deployment.

Typical functions:

- Service monitoring and observability.
- Incident, problem, and change management.
- Performance and availability measurement.
- Backup, restoration, and disaster recovery.
- Resource and cost management.
- Release and configuration management.
- User feedback and operational reviews.
- Continuous testing and improvement.

**Outputs:** Operational evidence, service reports, recovery procedures, and prioritized improvements.

## 4. Cross-Cutting Architecture Controls

The following concerns span multiple layers rather than belonging to only one component.

| Control area | Architecture considerations |
|---|---|
| Security | Identity, least privilege, secrets, secure configuration, threat management, and incident response. |
| Privacy | Lawful handling, minimization, access controls, retention, and disclosure. |
| Data governance | Ownership, quality, lineage, classification, and permitted use. |
| Interoperability | Documented interfaces, standards, data formats, and integration contracts. |
| Resilience | Failure handling, redundancy where justified, recovery objectives, and dependency management. |
| Accessibility | Accessible interfaces and appropriate user interaction design. |
| Safety and human oversight | Risk-sensitive automation, approvals, escalation, and safe failure behavior. |
| Assurance and evidence | Requirements traceability, testing, approvals, logs, and acceptance records. |
| Intellectual property | Ownership, licenses, third-party dependencies, disclosure boundaries, and permitted reuse. |
| Sustainability and cost | Resource utilization, lifecycle cost, energy considerations, and financial controls. |

The specific controls and evidence must be determined from the project's applicable obligations, risks, and operating context.

## 5. Logical, Application and Physical Views

The hierarchy should be represented in three complementary views.

### 5.1 Logical architecture

Describes capabilities, responsibilities, information flows, and system boundaries without committing to specific products or vendors.

### 5.2 Application and integration architecture

Identifies applications, services, APIs, workflow engines, data stores, identity systems, and integration dependencies.

### 5.3 Physical and deployment architecture

Identifies actual environments, locations, network boundaries, compute resources, storage, and deployment configurations.

Separating these views allows a project to change its infrastructure or vendors without unnecessarily changing its business capability model.

## 6. QAI / FAEP Mapping

The following is a proposed mapping of existing QAI / FAEP product families to the reference layers. Each association must be verified against the implementation and evidence available for the particular project.

| Architecture layer | Candidate QAI / FAEP components |
|---|---|
| L1 — Outcomes and strategy | Business Transformation Framework; sector and value-management frameworks. |
| L2 — Governance and assurance | FAEP governance, jurisdictional alignment, compliance, assurance, and evidence frameworks. |
| L3 — Business capabilities | FAEP operating models; QAI services and industry-domain capabilities. |
| L4 — Workflow and orchestration | QAI Agent Framework; workflow, approval, and orchestration capabilities. |
| L5 — Applications and services | QAI Hub; QAI Client Adoption Tool; product-specific user interfaces and APIs. |
| L6 — Data and digital twins | QAI Research Hub; Digital Farm CPS / Digital Twin; data and knowledge components. |
| L7 — Intelligence and computation | QAI Algorithms; QAI Processor; QAI QPU integrations; classical and hybrid computation. |
| L8 — Integration and connectivity | QAI Routers; QAI communication and integration frameworks. |
| L9 — Infrastructure and execution | QAI Datacenter System (QAI-DCS); QAI OS; QAI Runtime; QAI Cloud; QAI BareMetal Framework. |
| L10 — Operations and improvement | QAI LLM DevOps Framework; QAI ProductDeploy Toolkit; monitoring, testing, and lifecycle processes. |
| Cross-cutting engineering | QAI ProductDev Toolkit; QAI PoC Lab; security, governance, and validation frameworks. |

This table is a conceptual placement guide. It does not establish that every named component is implemented, integrated, independently deployable, or production-ready.

## 7. Workload Placement and Execution Modes

Select execution environments according to workload requirements.

| Workload or requirement | Potential execution approach | Key assessment |
|---|---|---|
| Routine business transactions | Existing application or classical service | Reliability, access control, latency, and support. |
| Data processing and analytics | Database, data platform, or analytical service | Data quality, scale, cost, and lineage. |
| AI inference | Local, edge, private, or public-cloud service | Privacy, model risk, latency, and cost. |
| Time-sensitive field operation | Local or edge execution where feasible | Network dependency, response time, and safe fallback. |
| Digital-twin simulation | Classical simulation or specialized compute | Model fidelity, scenario coverage, and runtime. |
| Quantum algorithm experiment | Simulator, emulator, or accessible QPU | Problem suitability, hardware limits, noise, and comparison with a classical baseline. |
| Sensitive or disconnected operation | Approved local, private, or air-gapped environment where required | Applicable security controls, patching, data handling, and operational support. |

Simulation, emulation, virtualization, and physical execution are different modes. Record which mode was used when reporting a test or demonstration.

## 8. Jurisdictional Configuration

Use a common logical architecture with jurisdiction-specific configuration profiles.

| Profile | Initial assessment focus |
|---|---|
| Australian Government | Applicable Commonwealth obligations, procurement conditions, security, privacy, data handling, and agency architecture requirements. |
| NSW Government | NSW digital, cloud, cyber security, data, assurance, and procurement requirements that apply to the agency and project. |
| ACT Government | ACT technology directions, applicable procurement and security controls, privacy, data management, and directorate-specific requirements. |
| Private sector | Applicable laws, sector regulation, customer contracts, security expectations, and commercial requirements. |
| Multi-jurisdictional | Overlapping obligations, data flows, contractual boundaries, and any conflicts requiring resolution. |

Do not treat a configuration profile as a substitute for legal, security, procurement, or architecture review.

## 9. Australian Policy and Technology Context

The architecture can be used to investigate opportunities associated with Australia's critical technology fields, including:

- Artificial intelligence.
- Quantum technologies.
- Advanced information and communication technologies.
- Advanced manufacturing and materials.
- Autonomous systems, robotics, positioning, timing, and sensing.
- Clean energy generation and storage.

The Australian Government's *List of Critical Technologies in the National Interest* identifies these fields as relevant to Australia's economic prosperity, national security, and social cohesion. The list supports policy coordination and priority setting; it does not regulate or automatically approve individual technologies or projects. See the [official list](https://www.industry.gov.au/publications/list-critical-technologies-national-interest).

For NSW Government cloud-related projects, consult the [NSW Government Cloud Policy](https://digital.nsw.gov.au/policy/cloud-policy) and verify the requirements that apply to the agency, procurement, and project. The policy page states that it takes effect on 1 October 2026 and outlines agency requirements for cloud evaluation, secure and responsible adoption, cost management, and approved procurement pathways.

For ACT Government projects, consult the [ACT Government Technology Directions](https://www.act.gov.au/open/act-government-technology-directions), which describe guidelines concerning technology reuse, platform consolidation, staged whole-of-government solutions, security, privacy, and data management.

These policy contexts inform architecture assessment; they do not establish that a particular QAI / FAEP implementation satisfies the relevant requirements.

## 10. Architecture Design and Review Workflow

1. Define the business or public-service outcome.
2. Identify users, stakeholders, and operating constraints.
3. Determine the applicable jurisdiction and requirements.
4. Document the logical capabilities and system boundaries.
5. Map existing applications, data, infrastructure, and interfaces.
6. Identify reuse and integration opportunities.
7. Select suitable execution environments for each workload.
8. Map security, privacy, assurance, and operational controls.
9. Assess current implementation readiness and gaps.
10. Define a bounded pilot and measurable acceptance criteria.
11. Demonstrate and record results.
12. Review operational and commercial readiness before scaling.

## 11. Architecture Evidence Register

For each significant architecture decision, record:

- Architecture decision ID and date.
- Problem, requirement, or constraint.
- Options considered and rationale.
- Affected architecture layers and components.
- Applicable jurisdiction and source requirements.
- Security, privacy, data, and operational implications.
- Dependencies, assumptions, and unresolved risks.
- Test results or evidence references.
- Decision owner and review trigger.

Recommended evidence includes architecture diagrams, interface specifications, deployment records, test reports, data-flow diagrams, threat assessments, cost estimates, and acceptance results.

## 12. Initial Application: Digital Farm

Apply the hierarchy to the Digital Farm CPS / Digital Twin pilot.

| Layer | Example pilot question |
|---|---|
| L1 | Which agricultural or operational outcome will be measured? |
| L2 | Which data, safety, privacy, and governance controls apply? |
| L3 | Which farm operations and roles are in scope? |
| L4 | Which workflows require human approval or automation? |
| L5 | Which dashboards, interfaces, or APIs are needed? |
| L6 | Which assets, data sources, and twin states must be represented? |
| L7 | Which rules, analytics, simulations, or AI workloads are justified? |
| L8 | Which field devices, external systems, and data interfaces are required? |
| L9 | Which field, edge, local, or cloud resources are available? |
| L10 | How will performance, failures, recovery, costs, and improvements be recorded? |

Begin with the classical baseline and existing demonstrable features. Add advanced AI or quantum workloads only where there is a defined use case, an appropriate comparison baseline, and evidence that the approach meets the acceptance criteria.

## 13. Related Documents

- `README.md` — digital landscape overview.
- `national_digital_landscape.md` — national context.
- `nsw_digital_landscape.md` — NSW context.
- `act_digital_landscape.md` — ACT context.
- `government_project_lifecycle.md` — government project delivery.
- `private_project_lifecycle.md` — private-sector project delivery.
- `../frameworks/government_development_alignment.md` — government alignment method.
- `../frameworks/jurisdictional_compliance.md` — jurisdictional applicability.
- `../frameworks/standards_assurance_framework.md` — assurance and evidence.
- `../product_alignment.md` — QAI product alignment.
- `../gap_analysis.md` — implementation readiness and gaps.

---

**Maintainer:** Bhadale IT / QAI–FAEP
**Working principle:** Clear separation of concerns, interoperability, evidence-led architecture, and incremental delivery.
**Tag:** `@vijaymohire`

---

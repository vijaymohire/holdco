
# Australia — Product Alignment

Map country priorities to common QAI products, country-specific products, required integrations and existing platform assets.

---

## Release Update — 3 October 2026: QAI Platform Portfolio Alignment

### 1. Purpose

This document maps the broader QAI product portfolio to relevant Australian national priorities, industry needs and potential commercialization pathways.

It establishes a reusable product-alignment model across:

- QAI Datacenter
- QAI QPU
- QAI OS
- QAI Algorithms
- QAI Routers
- QAI Runtime
- QAI Cloud
- QAI Hub
- QAI Agent Framework
- QAI Research Hub and QAI PoC Lab
- QAI Product Development and Product Deployment Toolkits
- Other QAI computing, communication, orchestration, security and lifecycle capabilities.

The objective is to identify where shared platform products may contribute to multiple industries, where domain-specific integration is required, and which capabilities should be demonstrated before additional development is undertaken.

This file is a portfolio-planning document. It does not establish that every listed product is implemented, production-ready, commercially available, or validated against Australian customer requirements.

### 2. Product Alignment Principles

Apply the following principles when mapping products to Australian opportunities.

1. **Shared platform first:** reuse common QAI components across industries where their requirements are compatible.
2. **Pilot evidence first:** demonstrate available capabilities before investing in additional interfaces, complex GUI workflows or broad orchestration.
3. **Products versus applications:** distinguish a reusable platform product from an industry-specific configuration or solution.
4. **Classical and hybrid support:** retain conventional execution paths and compare them with AI, quantum or hybrid approaches where relevant.
5. **Evidence-based quantum claims:** do not assume that quantum hardware, quantum algorithms or hybrid execution will outperform a suitable classical baseline.
6. **Integration over duplication:** connect with existing cloud, enterprise, operational technology, data and communications systems where appropriate.
7. **Modular product boundaries:** define interfaces, responsibilities, dependencies and deployment options for each product.
8. **Security and governance by design:** include identity, authorization, auditability, data protection, safety and human oversight according to the use case.
9. **Commercialization discipline:** identify the customer problem, implementation cost, measurable value, delivery requirements and licensing boundaries.
10. **Incremental expansion:** advance from a bounded pilot to reusable industry configurations and then to broader platform capabilities.

### 3. QAI Portfolio Architecture

The portfolio can be organized into six logical product layers.

| Layer | Product families | Primary responsibility |
|---|---|---|
| 1. Compute and infrastructure | QAI Datacenter, QAI QPU, classical compute, HPC and edge integration | Provide or connect the computational resources needed by workloads. |
| 2. System and execution foundations | QAI OS, QAI Runtime, execution adapters and resource management | Provide system-level services, workload execution and resource coordination. |
| 3. Connectivity and access | QAI Routers, QAI Cloud, network and interface integrations | Connect users, workloads, environments and resources through defined interfaces. |
| 4. Intelligence and algorithms | QAI Algorithms, AI/ML models, hybrid algorithms and QAI Agent Framework | Execute the algorithms, inference and decision-support logic required by applications. |
| 5. Platform coordination | QAI Hub, orchestration, workflow coordination, policy and lifecycle services | Coordinate products, configurations, workloads, experiments and operational policies. |
| 6. Engineering and validation | QAI Research Hub, QAI PoC Lab, ProductDev Toolkit, ProductDeploy Toolkit and validation frameworks | Develop, test, demonstrate, package and evaluate product capabilities. |

These are logical responsibility boundaries. The exact implementation and dependency relationships must be verified against the current repositories and architecture.

A product may span more than one layer, but its interfaces and responsibilities should remain clear.

### 4. Common QAI Product Alignment Matrix

The following matrix identifies intended product roles and potential Australian applications. Readiness is assessed separately in Section 7.

| Product family | Common product role | Potential Australian priority alignment | Important dependencies |
|---|---|---|---|
| QAI Datacenter | Coordinate or integrate compute infrastructure, workloads and operational resources. | AI infrastructure, research computing, industrial workloads and infrastructure efficiency. | Compute hardware, power and cooling information, telemetry, security and resource-management interfaces. |
| QAI QPU | Represent, access, integrate or execute quantum-processing resources, depending on the implemented product scope. | Quantum research, optimization experiments, quantum sensing workflows and hybrid computing. | Actual QPU availability or simulator, provider interface, supported operations, execution limits and experiment controls. |
| QAI OS | Provide system-level abstractions and coordination for supported QAI environments. | Reusable computing foundations, interoperable systems and controlled workload execution. | Supported hardware, runtime interfaces, system services, permissions and lifecycle requirements. |
| QAI Algorithms | Provide reusable algorithm implementations and interfaces for supported computational tasks. | Optimization, modelling, simulation, analytics and research workflows. | Problem formulation, datasets, algorithm implementation, baseline and evaluation method. |
| QAI Routers | Coordinate routing or selection across supported workloads, resources, endpoints or execution paths according to the actual implementation. | Advanced ICT, distributed systems, hybrid execution and resilient operations. | Routing policies, resource discovery, interface contracts, network connectivity and failure handling. |
| QAI Runtime | Execute supported workloads and coordinate their runtime behavior. | AI adoption, hybrid computing, research execution and industrial workflows. | Workload packages, resource adapters, configuration, observability and recovery behavior. |
| QAI Cloud | Provide or integrate cloud-based access, deployment and management capabilities. | AI infrastructure, scalable research, digital services and distributed industrial applications. | Cloud provider APIs, identity, networking, data governance, cost controls and deployment configuration. |
| QAI Hub | Provide a coordination or access layer across selected products, services and workflows. | Cross-domain integration, research coordination, workload management and reusable platform services. | Product interfaces, service registry, identity, policy, telemetry and integration contracts. |
| QAI Agent Framework | Support agent-based task execution and coordination where implemented. | Workflow assistance, knowledge-intensive work, operational decision support and engineering productivity. | Model access, tool permissions, workflow controls, evaluation, audit trails and human approval. |
| QAI Research Hub | Organize research assets, experiments, findings and reusable knowledge. | Research collaboration, technology validation and commercialisation preparation. | Experiment metadata, versioning, evidence storage, access control and reproducibility. |
| QAI PoC Lab | Provide a controlled environment for proof-of-concept demonstrations and technical validation. | Industry pilots, applied research, partner demonstrations and early product evaluation. | Reproducible environment, controlled datasets, execution instructions, baseline and acceptance criteria. |
| QAI ProductDev Toolkit | Support product engineering and development activities. | Reusable product development, local engineering capability and research-to-product transition. | Development standards, source control, tests, documentation and release practices. |
| QAI ProductDeploy Toolkit | Support packaging, configuration and deployment activities within its implemented scope. | Repeatable deployment, partner integration and product lifecycle management. | Deployment targets, configuration management, security checks, rollback and operating documentation. |
| QAI LLM DevOps Framework | Support the lifecycle of LLM-based applications and associated operational controls. | Responsible AI adoption, model lifecycle governance and enterprise AI integration. | Model evaluation, data controls, monitoring, security, deployment and governance evidence. |
| QAI BareMetal Framework | Support controlled provisioning and management of compatible bare-metal or restricted-network environments. | Infrastructure control, disconnected or restricted environments and specialized deployments. | Supported hardware, provisioning procedures, network assumptions, security controls and recovery methods. |

**Interpretation rule:** a product's intended role is not evidence that every listed function is implemented. For example, QAI QPU integration must distinguish access to actual quantum hardware from simulator-based testing or a planned adapter.

### 5. Product Families and Reusable Capabilities

To avoid unnecessary duplication, map individual products to common capability families.

#### 5.1 Compute and resource management

Relevant products:
- QAI Datacenter
- QAI QPU
- QAI OS
- QAI Runtime
- QAI Cloud

Shared capabilities to assess:
- Resource discovery and capability description.
- Workload requirements and resource selection.
- Classical, simulated, emulated and physical execution modes.
- Resource allocation, execution status and telemetry.
- Failure handling and supported fallback paths.
- Cost, energy and operational constraints where measurable.

#### 5.2 Algorithms and intelligence

Relevant products:
- QAI Algorithms
- QAI Agent Framework
- QAI LLM DevOps Framework
- QAI Research Hub

Shared capabilities to assess:
- Problem and input representation.
- Algorithm or model selection.
- Classical baseline execution.
- Experiment configuration and versioning.
- Output validation and reproducibility.
- Human review and decision accountability.
- Evidence for performance, accuracy, cost and other relevant KPIs.

#### 5.3 Connectivity and orchestration

Relevant products:
- QAI Routers
- QAI Hub
- QAI Runtime
- QAI Cloud

Shared capabilities to assess:
- Defined service and API contracts.
- Workload and endpoint discovery.
- Policy-based execution or routing.
- Identity, access and authorization.
- Observability and traceability.
- Retry, failure isolation and fallback where implemented.
- Integration with external systems without assuming they are natively supported.

#### 5.4 Engineering, validation and lifecycle

Relevant products:
- QAI PoC Lab
- QAI Research Hub
- QAI ProductDev Toolkit
- QAI ProductDeploy Toolkit
- QAI BareMetal Framework
- QAI LLM DevOps Framework

Shared capabilities to assess:
- Reproducible development and experiment environments.
- Testing and validation.
- Configuration and version control.
- Security and compliance evidence.
- Release and deployment procedures.
- Operational documentation.
- IP and licensing traceability.

### 6. Australian Priority-to-Product Mapping

The following mapping uses Australian policy themes as an opportunity framework. It does not assert that any specific Australian organization has requested these products.

| Australian priority theme | Potentially relevant QAI products | Illustrative application | Evidence needed before progressing |
|---|---|---|---|
| AI adoption and productivity | QAI Hub, QAI Runtime, QAI Algorithms, QAI Agent Framework | A bounded workflow that reduces a documented manual effort or improves decision support. | User problem, current process baseline, repeatable test and measured benefit. |
| AI infrastructure and data centres | QAI Datacenter, QAI OS, QAI Runtime, QAI Cloud | Workload visibility, resource coordination or controlled execution across supported environments. | Infrastructure access, supported interfaces, operational requirements and resource measurements. |
| Quantum technologies | QAI QPU, QAI Algorithms, QAI Runtime, QAI Research Hub | A reproducible experiment comparing an eligible quantum or hybrid approach with a classical method. | Suitable problem, execution access, algorithm constraints, baseline and evidence of results. |
| Advanced ICT and communications | QAI Routers, QAI Hub, QAI Cloud, QAI Runtime | Coordination across defined endpoints, workloads or computing environments. | Interface compatibility, network assumptions, performance measures and security requirements. |
| Advanced manufacturing and robotics | QAI Hub, QAI Algorithms, QAI Runtime, QAI Datacenter | Simulation, optimization or decision support for a selected manufacturing or robotic process. | Industry workflow, asset interfaces, operational constraints and safety review. |
| Energy and resources | QAI Algorithms, QAI Runtime, QAI Datacenter, QAI Research Hub | Resource planning, scenario analysis or optimization experiments. | Validated domain data, operational constraints, baseline and measurable outcome. |
| Agriculture and food systems | QAI Hub, QAI Algorithms, QAI Runtime, QAI Cloud, QAI PoC Lab | Digital Farm asset modelling, simulation, resource decision support and workflow validation. | Pilot inventories, scenario data, baseline, acceptance criteria and demonstration evidence. |
| Research and commercialisation | QAI Research Hub, QAI PoC Lab, QAI ProductDev Toolkit | Reproducible research, prototype evaluation and evidence preparation for potential partners. | Research question, experiment records, IP boundaries and a credible route to application. |
| Critical infrastructure and resilience | QAI Datacenter, QAI OS, QAI Runtime, QAI BareMetal Framework | Controlled workload execution and recovery testing in a defined environment. | Threat model, availability requirements, failure tests and operational approvals. |

The official Australian List of Critical Technologies in the National Interest provides a reference for fields including AI, quantum, advanced ICT, autonomous systems, advanced manufacturing and clean-energy technologies. See the source register in Section 11.

### 7. Product Readiness and Evidence Register

Assess product readiness independently from strategic relevance.

Use the following classifications:

- **Demonstrable:** working behavior has been reproduced and evidence is available.
- **Implemented — verification pending:** an implementation exists, but repeatable demonstration evidence is incomplete.
- **Partially implemented:** some behavior works, with specific gaps remaining.
- **Documented / designed:** requirements or architecture exist, but implementation has not been verified.
- **Planned:** development has been identified but not completed.
- **Research / experimental:** feasibility or performance still requires investigation.
- **Not assessed:** repository evidence has not yet been reviewed.

Maintain a register with these fields:

| Field | Purpose |
|---|---|
| Product ID and name | Identify the product consistently across repositories. |
| Product family | Datacenter, QPU, OS, Algorithms, Routers, Runtime, Cloud, Hub or another defined family. |
| Product boundary | State what the product is responsible for and what is outside its scope. |
| Existing assets | Link repository paths, source files, notebooks, APIs, scripts and documentation. |
| Readiness | Record the current evidence-based classification. |
| Demonstration procedure | Describe how the available capability can be exercised. |
| Dependencies | Identify required hardware, cloud services, datasets, APIs and other products. |
| Interfaces | Record inputs, outputs, protocols and integration assumptions. |
| Known gaps | State missing or unverified behaviors. |
| Australian relevance | Link to a specific national priority or validated stakeholder requirement. |
| KPI and acceptance criteria | Define how technical behavior and value will be evaluated. |
| IP and licensing | Record ownership, disclosure boundaries and third-party dependencies. |
| Next action | Reuse, test, integrate, implement, investigate, defer or exclude. |

Do not assign production readiness or commercial maturity from the existence of a product name, README or folder structure alone.

### 8. Pilot-First Demonstration Strategy

The Digital Farm pilot is the initial application through which selected shared products can be demonstrated.

The first demonstration should use the smallest coherent set of existing capabilities that proves a meaningful workflow.

#### 8.1 Demonstration stages

**Stage A — Existing capability demonstration**

- Inspect the current pilot and platform repositories.
- Select the components that can already run.
- Demonstrate the asset, data and workflow path.
- Capture inputs, outputs, logs and execution instructions.
- Record which product responsibilities are actually exercised.

**Stage B — Essential pilot integration**

- Close only the gaps needed to meet agreed pilot acceptance criteria.
- Integrate existing products through defined interfaces where feasible.
- Verify repeatability, error handling and the required baseline.
- Record the evidence needed to assess the pilot.

**Stage C — Post-pilot platform validation**

- Identify components reusable across more than one use case.
- Test selected interfaces and configuration boundaries.
- Assess additional execution environments only where requirements justify them.
- Evaluate additional industry applications with appropriate domain partners.

**Stage D — Advanced GUI and orchestration**

- Design GUI workflows around validated operations and real user tasks.
- Introduce workflow editors, approvals, dashboards and advanced orchestration as separately scoped capabilities.
- Avoid making complex GUI development a prerequisite for demonstrating the underlying products.

#### 8.2 Demonstration acceptance

For every showcased product, record:

1. What the product does in the demonstration.
2. What other components it depends on.
3. Which inputs and outputs can be observed.
4. Whether the result can be reproduced.
5. What is simulated, emulated or physically executed.
6. What remains unimplemented or unverified.
7. What evidence supports the claim being made.

### 9. Integration Requirements

A portfolio of reusable products requires explicit integration boundaries.

Evaluate the following integration categories when applicable:

| Integration category | Questions to resolve |
|---|---|
| Hardware and compute | Which processors, accelerators, QPUs or compute environments are supported? |
| Runtime and OS | How are workloads packaged, executed, monitored and stopped? |
| Algorithms and models | What are the input schemas, supported operations and output contracts? |
| Routing and connectivity | Which endpoints and protocols are supported, and how are failures handled? |
| Cloud and datacenter | Which deployment environments, identity services and infrastructure APIs are available? |
| Hub and orchestration | How are products discovered, configured, coordinated and observed? |
| Data and storage | What formats, access controls, lineage and retention requirements apply? |
| Enterprise and OT | Which external systems, devices or business processes require integration? |
| Security and governance | How are authorization, audit trails, safety, privacy and policy enforcement implemented? |
| Development and deployment | How are versions, configurations, tests, releases and rollback handled? |
| Commercial and IP | Which components are owned, licensed, partner-provided or subject to third-party terms? |

An integration should be marked as supported only after its interface and behavior have been verified.

### 10. Country-Specific Products and Configurations

Prefer country-specific configurations over creating new core products solely to reflect geographic differences.

Potential Australian configurations include:

- Australian Digital Farm and agriculture integration profile.
- Australian industrial data and asset integration profile.
- Australian AI infrastructure deployment profile.
- Australian research and quantum-experiment profile.
- Australian industry partner and commercialization profile.
- Australian governance, data-handling and assurance configuration.

These are candidate configurations, not a declaration that the configurations already exist.

Each configuration should define:

- Applicable use case and users.
- Selected shared products.
- Country- or industry-specific requirements.
- Data, infrastructure and external-system dependencies.
- Security, regulatory and assurance considerations.
- Acceptance criteria and measurable outcomes.
- Delivery, support and licensing boundaries.

### 11. Official Australian Reference Sources

Use official sources to maintain the policy context for this alignment.

1. **List of Critical Technologies in the National Interest**
   https://www.industry.gov.au/publications/list-critical-technologies-national-interest
   Reference for AI, quantum, advanced ICT, autonomous systems, advanced manufacturing and clean-energy technology fields.

2. **Corporate Plan 2026–30 — Department of Industry, Science and Resources**
   https://www.industry.gov.au/publications/corporate-plan-2026-30
   Reference for industry competitiveness, industrial resilience, research and commercialisation, AI adoption and infrastructure expectations.

3. **Critical Technologies Statement**
   https://www.industry.gov.au/publications/critical-technologies-statement
   Reference for the government's stated approach to critical technologies, research, investment and international collaboration.

4. **National Robotics Strategy**
   https://www.industry.gov.au/publications/national-robotics-strategy
   Reference for robotics adoption, industrial applications, responsible use and workforce capability.

These sources provide policy context; they do not validate the technical maturity of QAI products or establish a procurement opportunity.

### 12. Governance, IP and Commercialization

Product alignment must preserve the boundaries between reusable QAI IP, application-specific development and third-party integration.

For each product or proposed engagement:

- Identify the relevant background IP and its owner.
- Separate reusable platform components from customer-specific configuration and deliverables.
- Define permitted disclosure and access to source code, designs, algorithms and research results.
- Record third-party software, hardware, cloud and licensing dependencies.
- Define the scope of any proposed licence or commercial agreement.
- Use staged disclosure and appropriate agreements before sharing confidential implementation details.
- Establish technical and commercial acceptance criteria before committing to significant development.

Australian policy alignment must not be presented as government approval, product certification, funding eligibility or evidence of customer demand.

### 13. Review and Maintenance

Review this document when:

- A QAI product is added, split, merged or materially redefined.
- A capability moves from design to implementation or from implementation to verified demonstration.
- The Digital Farm pilot establishes new evidence or acceptance results.
- A post-pilot use case receives stakeholder validation.
- An integration dependency or deployment assumption changes.
- Relevant Australian policy or program requirements change.
- A partner or customer requirement creates a specific, evidenced product gap.

Keep detailed implementation status in the relevant product and engineering repositories. This file should remain the portfolio-level map connecting products, national priorities, integrations and application opportunities.

### Release Summary

This release establishes a reusable product-alignment structure for the broader QAI portfolio. It connects shared computing, runtime, algorithms, connectivity, cloud, hub, research and engineering products to potential Australian industry applications.

The delivery sequence remains:

**Demonstrate existing features → Validate the pilot → Close essential integration gaps → Reuse platform capabilities → Expand post-pilot applications → Introduce complex GUI workflows when justified.**

The priority is to demonstrate credible, bounded capabilities first, then use verified evidence and stakeholder requirements to guide broader platform development and commercialization.

**Prepared by:** @vijaymohire
**Release date:** 3 October 2026
---

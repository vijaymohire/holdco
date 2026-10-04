# RI-05 — Dynamic Asset Allocation

## 1. Purpose

RI-05 defines a technology-neutral reference model for discovering, cataloguing, requesting, approving, provisioning, allocating, measuring, charging for and reusing shared assets and capabilities.

The model supports the HoldCo operating principle of centralising what should be common, virtualising what can be virtualised, dynamically allocating what is scarce, localising what a project requires and reusing what has already been built.

Assets may include software, subscriptions, intellectual property, reusable engineering components, computing capacity, cloud infrastructure, specialist expertise, physical equipment, facilities and approved partner resources.

The objective is to improve visibility, accountability and potential utilisation of available resources while maintaining appropriate controls over ownership, access, availability, cost, security and permitted use.

RI-05 is a reference specification, not a claim that a dynamic allocation platform or automated resource marketplace has already been implemented.

## 2. Design Principles

- **Ownership transparency:** Identify the owner or authorised custodian of each managed asset.
- **Controlled access:** Allocate resources only under the applicable permissions, approvals, contracts and usage conditions.
- **Separation of ownership and use:** An allocation does not transfer asset ownership unless an explicit agreement provides otherwise.
- **Demand-driven allocation:** Match resource requests to defined project needs and constraints.
- **Shared-resource reuse:** Prefer suitable existing resources over unnecessary duplication where this is practical and authorised.
- **Scarcity-aware allocation:** Consider availability, priority, capacity, scheduling and competing requests.
- **Virtualisation where appropriate:** Represent and provision logical resources where the asset and operating environment support it.
- **Measurement and traceability:** Record allocation decisions, actual usage, relevant costs and resource state changes.
- **Transparent cost responsibility:** Define who pays for acquisition, access, consumption, support, maintenance and partner services.
- **Lifecycle management:** Track assets from discovery and onboarding through allocation, maintenance, release and retirement.
- **Security and sovereignty:** Respect data residency, access restrictions, confidentiality and applicable jurisdictional obligations.
- **Evidence-based optimisation:** Treat utilisation gains and cost savings as outcomes to measure, not guaranteed benefits.

## 3. Resource Classification

The reference model distinguishes three broad resource classes.

### Class A — Common Project Tools

Resources made available to eligible projects under shared arrangements.

Examples may include development tools, collaboration services, documentation systems, approved subscriptions and standard engineering environments.

Access may be governed by named-user licences, project entitlements, usage limits or organisational agreements.

### Class B — HoldCo-Owned or Controlled Assets

Assets owned by HoldCo or managed under an explicitly documented control arrangement.

Examples may include reusable software, internally developed IP, product components, approved configurations, cloud environments, computing resources and reference implementations.

The asset register should distinguish legal ownership from operational custody, hosting and administration.

### Class C — Partner or External Resources

Resources supplied by external organisations, research partners, service providers, customers or other participating entities.

Examples may include specialist facilities, high-performance computing, equipment, laboratory access, expert services or externally operated infrastructure.

Availability and use depend on the relevant contracts, licences, scheduling arrangements, eligibility conditions and partner approvals.

A resource's presence in a catalogue does not establish that it is available, owned by HoldCo, approved for use or suitable for a particular project.

## 4. Reference Workflow

**Discover → Catalogue → Request → Approve → Provision → Allocate → Use → Measure → Charge, Where Applicable → Release → Reuse or Retire**

### Stage 1 — Discover

Identify an asset or capability that may support one or more projects.

Record its source, purpose, owner or custodian, known restrictions and initial availability.

### Stage 2 — Catalogue

Create or update an asset record with a unique identifier, description, classification, ownership information, permitted-use conditions, dependencies and lifecycle status.

Record relevant costs and evidence of availability where these can be established.

### Stage 3 — Request

A project or authorised requester submits a resource request.

The request identifies the intended purpose, required capacity, quantity, duration, timing, location, security requirements, budget constraints and expected outputs where applicable.

### Stage 4 — Approve

Evaluate the request against eligibility, authority, availability, competing demand, technical suitability, cost and risk.

Obtain the approvals required by the resource owner, budget authority, contract or applicable governance process.

### Stage 5 — Provision

Prepare the approved resource for use.

Provisioning may include creating a workspace, granting access, reserving capacity, configuring an environment, arranging equipment delivery or confirming a partner service.

Provisioning should follow the applicable security and change-control requirements.

### Stage 6 — Allocate

Assign the resource to the approved project, user, workload or time window.

Record the allocation scope, start and end conditions, permitted use, responsible party and any usage limits.

### Stage 7 — Use

Consume or operate the resource within the approved allocation.

Where appropriate, record usage, incidents, configuration changes, service performance and deviations from the approved scope.

### Stage 8 — Measure

Collect the measurements required to understand utilisation, capacity, service quality and cost.

Possible measures include allocated time, actual runtime, storage consumption, computing usage, equipment hours, licence seats, energy consumption or specialist service hours.

### Stage 9 — Charge, Where Applicable

Determine cost responsibility according to the applicable pricing, internal cost-allocation rules, licence terms, service agreements or partner contracts.

Charging may involve internal cost attribution, usage-based billing, a fixed fee, a licence fee, a service charge or no separate charge.

Measurement does not itself establish a payment obligation. The relevant agreement or approved policy determines the charge.

### Stage 10 — Release

End or modify the allocation when its purpose is complete, its approval expires or the resource is no longer required.

Revoke temporary access, release reservations, return equipment, clean up temporary environments and retain required records.

### Stage 11 — Reuse or Retire

Make the resource available for another approved use where appropriate, or retire it when it is obsolete, unsuitable, uneconomic or no longer authorised.

Before reuse, verify that access, configuration, data, licensing and ownership conditions permit the next use.

## 5. Inputs

Typical inputs include:

- A defined business, government, industry, research or internal project need.
- Resource requirements, quantities, capacity and expected duration.
- Asset catalogue entries and availability information.
- Ownership, custody, licence and permitted-use conditions.
- Technical dependencies, interfaces and compatibility requirements.
- Security, privacy, safety and data-handling constraints.
- Budget limits, cost models and funding authority.
- Allocation priorities, service levels and scheduling constraints.
- Partner agreements and external service conditions.
- Approval rules, usage policies and acceptance criteria.
- Measurement requirements and evidence-retention rules.

The required inputs depend on the asset type, project risk and resource governance model.

## 6. Outputs

Expected outputs may include:

- A resource catalogue and asset register.
- Resource request and approval records.
- Provisioning instructions and configuration records.
- Allocation, reservation and access records.
- Usage measurements and capacity reports.
- Cost attribution, billing or chargeback records where applicable.
- Maintenance, incident and service-quality records.
- Release, access-revocation and resource-return evidence.
- Reusable resource configurations and operating patterns.
- Capacity, utilisation and cost-optimisation findings.
- Retirement decisions and asset disposition records.

Actual outputs depend on the resource class and the capabilities of the implementing system.

## 7. Logical Interface Contracts

| Interface | Expected information |
|---|---|
| Project → Resource Catalogue | Required capability, purpose, capacity, duration and constraints |
| Catalogue → Requester | Asset description, owner, availability, permitted use and cost information |
| Requester → Approval Process | Request scope, justification, timing, budget and risk information |
| Approval Authority → Provisioning | Decision, approved scope, conditions and validity period |
| Provisioning → Allocation | Resource identity, configuration, readiness and access details |
| Allocation → Project | Allocation terms, limits, duration and responsible party |
| Resource → Measurement | Usage, capacity, runtime, service status or other relevant observations |
| Measurement → Cost Process | Recorded usage and applicable cost rules |
| Project → Release Process | Completion, release request, return status and outstanding obligations |
| Release → Catalogue | Updated availability, condition, configuration and lifecycle status |

These are logical interfaces. They may be implemented through forms, configuration files, APIs, inventory systems, scheduling services, billing systems or manual approval workflows.

## 8. Asset Register and Resource State

Each managed resource should have an identifiable record containing information appropriate to its type.

Suggested fields include:

- Asset or capability identifier.
- Name, category and functional description.
- Legal owner and operational custodian, where applicable.
- Source, supplier or partner.
- Location, hosting environment or jurisdiction where relevant.
- Version, configuration and dependencies.
- Capacity, quantity and availability.
- Permitted users, projects and usage conditions.
- Licence, contract and renewal information.
- Acquisition, access, support and operating costs.
- Security classification and data-handling restrictions.
- Maintenance requirements and lifecycle status.
- Allocation history and usage evidence.
- Known risks, limitations and review date.

A logical resource lifecycle may use these states:

**Discovered → Assessed → Registered → Available → Requested → Approved → Provisioned → Allocated → In Use → Releasing → Available Again or Retired**

Additional states may be required for reservations, maintenance, suspension, partner confirmation or failed provisioning.

A state change should be recorded with the relevant time, responsible actor, reason and evidence where appropriate.

## 9. Allocation and Scheduling Rules

Allocation should be governed by documented rules rather than assumed to be automatic.

Relevant decision factors may include:

- Whether the requester is authorised.
- Whether the resource supports the intended use.
- Current availability and competing requests.
- Priority and urgency under approved policy.
- Capacity, duration and scheduling constraints.
- Geographic, data-residency or deployment requirements.
- Cost, budget and contractual conditions.
- Reliability, safety and security constraints.
- Required support and operational responsibilities.
- Reversibility, release conditions and recovery options.

Where a request cannot be satisfied, the process should record the reason and any suitable alternatives, deferral options or unresolved dependencies.

Scarce resources may require reservation windows, quotas, priority rules or explicit human approval. A priority rule must not override legal restrictions, contractual obligations or safety controls.

## 10. Cost and Economic Model

RI-05 separates five concepts:

1. **Ownership cost:** The cost of acquiring, developing, maintaining or retaining an asset.
2. **Access cost:** The cost of making the asset available, including licences, subscriptions or partner-access fees.
3. **Consumption cost:** The cost associated with actual usage, where measurable and applicable.
4. **Service cost:** The cost of provisioning, administration, engineering, support, connectivity or management.
5. **Allocation responsibility:** The party or budget accountable for the relevant costs under an approved arrangement.

These categories may overlap in a particular contract or accounting model and should be defined to avoid double counting.

Possible cost models include fixed allocation, usage-based charging, subscription, licence fees, project-level cost attribution, partner service fees or centrally funded shared services.

Not every resource needs an internal chargeback mechanism. However, where costs are material, their funding and responsibility should be transparent.

### Economic hypothesis

Pooling and reusing suitable resources may reduce unnecessary duplication, improve utilisation and make specialist capabilities available to more projects.

These benefits depend on demand, setup and switching costs, licensing, governance overhead, resource availability, operational complexity and the actual cost of shared services.

Measure outcomes against a defined baseline before claiming savings or improved return on investment.

## 11. Virtualisation and Physical Resource Allocation

Where appropriate, separate the logical representation of a resource from the physical infrastructure that supports it.

For example, a project may request a defined computing capability without selecting a specific physical server. The provisioning mechanism may then allocate an eligible cloud instance, virtual machine, container environment, reserved partner capacity or other approved resource.

Physical equipment, laboratory facilities and location-dependent services may require direct scheduling, custody, delivery, safety checks or site access.

Virtualisation does not eliminate physical constraints, licensing obligations, data-residency requirements, energy costs or operational dependencies.

The implementation should record which resource characteristics are logical abstractions and which require physical confirmation.

## 12. Governance, Security and Lifecycle Controls

Apply controls appropriate to the resource and its intended use.

These may include:

- Verification of ownership, custody and authority to allocate.
- Approval of access and permitted use.
- Identity, authentication and least-privilege access.
- Data classification, privacy and retention controls.
- Confidentiality and IP protection.
- Licence, contract and partner restrictions.
- Budget authority and cost responsibility.
- Capacity, scheduling and service-level requirements.
- Maintenance, patching and configuration management.
- Incident handling and escalation.
- Release, access revocation, data sanitisation and equipment return.
- Auditability and evidence retention.
- Asset retirement and disposal.

For third-party resources, HoldCo must not represent itself as the owner or allocation authority unless the relevant rights and authority have been established.

## 13. Validation and Acceptance Criteria

Evaluate the reference implementation using observable evidence.

| Check | Acceptance evidence |
|---|---|
| Asset identity | Each managed resource has a unique identifier or unambiguous record |
| Ownership and authority | Owner, custodian and allocation authority are recorded as applicable |
| Catalogue quality | Relevant availability, dependencies and permitted-use conditions are documented |
| Request traceability | Resource requests identify purpose, scope and responsible project |
| Approval control | Required decisions and conditions are recorded before controlled provisioning |
| Allocation traceability | Allocations identify resource, recipient, scope and validity |
| Usage measurement | Measurements are defined and recorded where applicable |
| Cost transparency | Applicable costs and responsibility rules are identifiable |
| Release control | Access, reservations and custody are resolved at release |
| Reuse safety | Reuse conditions, configuration and data handling are checked |
| Lifecycle accuracy | Resource states and material transitions are traceable |
| Economic evidence | Utilisation or cost claims are supported by comparable measurements |

A check may be recorded as passed, failed, partially satisfied, not assessed or not applicable. Each result should identify its scope, evidence and known limitations.

## 14. Relationship to HoldCo and Other References

RI-05 provides the resource-management layer for the HoldCo operating model.

- **RI-01 — Repository and Project Bootstrap:** Establishes project workspaces and initial artefacts.
- **RI-02 — Federated Ecosystem:** Connects projects to distributed capabilities and participating organisations.
- **RI-03 — Product Foundry:** Defines the product-development lifecycle and its engineering resource needs.
- **RI-04 — Organisation and Program Framework:** Defines responsibilities, capability ownership and program-level coordination.
- **RI-05 — Dynamic Asset Allocation:** Defines the lifecycle for shared assets, access, provisioning, measurement and reuse.
- **RI-06 — Government Capability-to-Project Ecosystem:** Applies capability matching and resource coordination to a proposed public-sector model.

The intended economic loop is:

**Own or Access Strategically → Catalogue → Pool Where Appropriate → Allocate → Use → Measure → Release → Reuse or Retire**

Ownership, access rights, allocation authority and consumption remain separate throughout this process.

## 15. Source and Implementation Boundary

### Reference ownership

This is an internal HoldCo reference. An authoritative implementation repository has not yet been identified in this README.

The reference should remain technology-neutral until relevant existing implementations, source repositories and evidence have been assessed.

Potential implementation components may include asset catalogues, resource schedulers, infrastructure provisioning tools, entitlement systems, usage metering, cost reporting and lifecycle workflows. These are candidate implementation areas, not claims that such components already exist.

### Separation of responsibilities

- **HoldCo reference:** Defines the resource lifecycle, logical interfaces and governance expectations.
- **General Factory reference implementation:** Provides reusable examples, configuration, workflows and evidence.
- **Authoritative engineering implementation:** Should be linked once an existing repository or approved implementation is identified and assessed.

This README does not claim that a dynamic asset allocation platform, automated marketplace, billing engine or optimisation engine has been implemented.

## 16. Evidence and Maturity

**Initial status: Designed / Documented — implementation and validation status to be assessed.**

Use evidence-based maturity categories:

- **Designed / Documented:** The resource model and expected workflow are described.
- **Partially Implemented:** Some functions exist, with limitations and gaps recorded.
- **Implemented — Verification Pending:** Relevant implementation exists but verification is incomplete.
- **Demonstrated:** A defined resource-allocation scenario has been executed and documented.
- **Validated:** Relevant acceptance criteria have been evaluated against sufficient evidence.

Record the assessed functions, test scenario, date, evidence sources, limitations and outstanding issues.

Do not infer government adoption, procurement eligibility, funding approval, legal or regulatory compliance, commercial demand or validated economic benefits from the reference design alone.

## 17. Next Steps

1. Inventory existing HoldCo assets, shared tools, reusable IP and relevant partner resources at an appropriate level of detail.
2. Define a minimal technology-neutral asset record and resource-request schema.
3. Specify ownership, custody, allocation authority and permitted-use fields.
4. Create a sample lifecycle for one shared software or computing resource allocated to two projects at different times.
5. Define approval, usage measurement, cost attribution and release rules for that scenario.
6. Add sample configuration and workflow records without including secrets or confidential partner information.
7. Define validation checks for allocation, release and reuse.
8. Identify any existing engineering repositories or tools that can support the reference.
9. Execute a controlled example and record actual results.
10. Measure utilisation or cost effects against a baseline before making economic claims.

## 18. Change Control

Changes to this reference should preserve traceability between resource definitions, ownership, approval rules, allocation decisions, usage measurements, cost responsibility and release evidence.

For material changes, record the rationale, affected resource classes, interface changes, governance implications and required updates to dependent references.

---

**Reference ID:** RI-05
**Reference name:** Dynamic Asset Allocation
**Category:** General Factory — Reference Implementations
**Initial maturity:** Designed / Documented
**Authoritative implementation reference:** Not yet identified
**Validation status:** To be assessed
---

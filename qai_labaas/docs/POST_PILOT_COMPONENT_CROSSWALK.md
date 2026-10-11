# Post-Pilot Component Crosswalk — FAEP and QAI LabaaS

**Status:** Initial architecture crosswalk
**Version:** 0.1.0
**Purpose:** Post-pilot architecture alignment and implementation planning
**Scope:** Component ownership, integration points, lifecycle mapping, and unresolved design decisions

---

## 1. Purpose

This document establishes an initial crosswalk between the proposed **FAEP ecosystem boundary**, the **QAI LabaaS client-facing laboratory and platform boundary**, and existing components within the Bhadale IT `holdco` repository.

The immediate objective is to maintain architectural consistency and identify suitable integration points before implementation begins.

This document does not authorize changes to existing runtimes, registries, deployment assets, protected files, or pilot deliverables.

### 1.1 Objectives

- Reuse existing Framework and Factory capabilities.
- Preserve separation between definitions, implementation, orchestration, and client access.
- Identify where LabaaS capabilities can use existing PaaS and experimentation assets.
- Establish a clear relationship between deployment preparation and the existing Bootstrapper.
- Map resource access to existing runtime, fabric, adapter, and backend components.
- Identify unresolved interfaces and ownership decisions before implementation.
- Support a controlled transition from pilot activities to post-pilot development.

---

## 2. Architecture and Ownership Principles

The following principles guide this crosswalk.

1. **Reuse before duplication:** Existing components remain the preferred implementation sources unless a documented gap justifies a new component.
2. **Definitions remain separate from execution:** Framework definitions and contracts must not be duplicated inside LabaaS.
3. **Factory remains the execution authority:** LabaaS provides an engineering and client-access surface; it does not replace General Factory execution responsibilities.
4. **Deployment preparation remains with existing deployment components:** LabaaS may initiate or request deployment preparation through established interfaces, subject to verification of those interfaces.
5. **Logical resources remain separate from physical infrastructure:** Client workflows and resource requirements should not assume a specific physical or cloud backend.
6. **Evidence is an explicit lifecycle concern:** Experiment outputs, validation results, and provenance should be associated with their originating activities.
7. **Security and governance apply across boundaries:** Credentials, authorization, approvals, and client isolation require explicit design.
8. **No silent execution-mode substitution:** Simulation, emulation, virtual execution, and physical quantum execution must remain distinguishable.
9. **Documentation precedes implementation:** Unverified integrations are recorded as proposed mappings rather than existing capabilities.
10. **Protected assets remain untouched:** Existing protected runtime bindings, bootstrapper implementation, pilot notebook, and Registry Resolver backup files are outside this document's change scope.

---

## 3. High-Level Component Relationship

The following diagram represents the intended logical relationship. It is an architecture proposal, not a claim that all interfaces are already implemented.

```text
                 FAEP — Ecosystem Boundary
       Governance | Federation | Capability Fabrics
                Deployment Coordination
                           |
                           v
              General Framework / Enterprise
          Definitions | Contracts | Policies
                           |
                           v
              General Factory / PaaS Assets
        Composition | Engineering | Execution
                           |
                           v
                QAI LabaaS Boundary
      Client Workspace | Lifecycle | Experimentation
         Validation | Results | Evidence | Access
                           |
             +-------------+-------------+
             |             |             |
             v             v             v
         QAI Runtime   Resource/Fabric  Deployment
         and APIs      Adapters         Preparation
             |             |             |
             v             v             v
       Execution Paths  Compute Backends  Existing
       and Contracts    and Resources     Bootstrapper
             |
             v
       Results and Evidence
             |
             v
      Client Review and Delivery
```

**Important:** The arrows indicate proposed responsibility and integration relationships. Exact APIs, call sequences, and deployment behavior must be verified against the current implementations before they are treated as established contracts.

---

## 4. FAEP Crosswalk — Ecosystem and Governance

FAEP is intended to provide an ecosystem-level boundary for governance, federation, capability fabrics, and deployment coordination.

It should coordinate or reference existing capabilities rather than recreate their definitions or runtime implementations.

| FAEP concern | Existing repository area | Relationship | Verification needed |
|---|---|---|---|
| Enterprise structure and hierarchy | `enterprise_hierarchy/` | Reference existing hierarchy capabilities | Identify authoritative hierarchy definitions and interfaces |
| Enterprise operating model | `enterprise_os/` | Align ecosystem governance and operations | Identify governance and control boundaries |
| Framework definitions and contracts | `general_framework/` | Reuse definitions, policies, and cross-cutting structures | Identify the authoritative modules for each capability |
| Factory implementation | `general_factory/` | Reference implementation and execution capabilities | Confirm supported integration interfaces |
| Capability fabrics | `general_factory/fabric_runtime/` and related framework fabric areas | Align fabric concepts with execution and resource access | Establish control-plane and data-plane ownership |
| Deployment coordination | Existing deployment and Bootstrapper areas | Coordinate through existing deployment preparation capabilities | Confirm request, validation, and approval contracts |
| Evidence and governance | Existing evidence and governance areas | Reuse established policies and evidence structures | Map authoritative schemas and retention rules |

### 4.1 FAEP boundary

The initial `qai_faep/` directory is a product and documentation boundary.

It must not automatically become a second implementation of:

- Enterprise hierarchy or enterprise operating-system functions.
- General Framework definitions.
- General Factory runtime behavior.
- Resource provisioning or backend adapters.
- Existing deployment composition and validation logic.

Any proposed implementation that crosses these boundaries requires an explicit ownership decision.

---

## 5. QAI LabaaS Crosswalk — Engineering and Client Access

QAI LabaaS is intended to provide a governed, client-facing laboratory and platform-as-a-service boundary.

Its proposed lifecycle includes workspace setup, co-design, experimentation, development, testing, validation, evidence capture, and transition to an agreed delivery pathway.

The existing General Factory PaaS assets are the primary documented alignment point for this work.

| LabaaS concern | Existing repository area | Proposed relationship | Verification needed |
|---|---|---|---|
| Engineering and platform access | `general_factory/post_pilot_assets/paas/` | Primary alignment point for LabaaS engineering capabilities | Determine which capabilities already exist and which remain planned |
| Factory execution | `general_factory/` and relevant execution components | Submit supported execution requests through existing Factory boundaries | Identify callable interfaces and execution contracts |
| Framework-defined capabilities | `general_framework/` | Consume definitions and constraints rather than duplicate them | Map capability identifiers and schemas |
| Runtime integration | `qai_runtime/` | Align workflow execution, API, result, and runtime responsibilities | Verify public contracts and supported invocation methods |
| Experimentation | `general_factory/experimentation/` | Reuse relevant experiment, execution, notebook, scenario, and result structures | Confirm data models, lifecycle, and storage ownership |
| QAI laboratory reference implementation | `general_factory/reference_implementations/qai_lab/` | Evaluate as a reference for LabaaS integration | Establish which parts are reusable and their maturity |
| Development and deployment tooling | `qai_devops/` | Align environment, project, deployment, and evidence concerns where applicable | Verify supported interfaces and responsibility boundaries |
| Documentation and client guidance | `qai_labaas/docs/` | Define usage, onboarding, contracts, and operating procedures | Identify the documentation structure needed for initial delivery |

### 5.1 LabaaS boundary

LabaaS should own or coordinate the client-facing experience and lifecycle, subject to the final design.

Potential responsibilities include:

- Client workspace requests and configuration.
- Project and experiment organization.
- Workflow authoring and configuration.
- Selection of logical assets and resource requirements.
- Submission of approved work for execution.
- Status and result presentation.
- Validation and evidence review.
- Client-facing lifecycle and delivery records.

These are intended responsibilities, not a statement that all capabilities are already implemented.

LabaaS should not independently recreate Factory execution, runtime scheduling, physical resource drivers, or Framework definitions.

---

## 6. Client Workspace and Experiment Lifecycle

The LabaaS lifecycle should align with the existing experimentation and result-related structures before introducing new persistence models or execution engines.

| Lifecycle stage | Intended responsibility | Candidate existing area | Open question |
|---|---|---|---|
| Client onboarding | Establish client and project context | PaaS and client-related assets | What identity and onboarding contracts exist? |
| Workspace setup | Configure a client workspace and its permitted capabilities | PaaS and relevant client assets | Is workspace provisioning already represented? |
| Co-design | Capture requirements, constraints, and proposed workflows | Framework definitions and PaaS | What is the canonical requirements model? |
| Experiment definition | Define inputs, scenarios, and expected outputs | `general_factory/experimentation/` | Which schemas and identifiers are authoritative? |
| Execution request | Submit an approved experiment or workflow | General Factory and `qai_runtime/` | Which supported invocation contract applies? |
| Monitoring | Present execution status and permitted operational information | Runtime and Factory interfaces | What status and event interfaces exist? |
| Results | Associate outputs with the originating execution | Experimentation and result-related components | Which component owns result persistence? |
| Validation | Evaluate outputs against declared criteria | Existing validation and evidence capabilities | Which validation contracts can be reused? |
| Evidence capture | Associate evidence with the experiment and validation outcome | Existing evidence-related components | What are the authoritative evidence schemas? |
| Client review | Present results, limitations, and evidence | LabaaS client-facing boundary | What approval and review workflow is required? |
| Delivery transition | Prepare an agreed delivery or deployment pathway | Existing deployment and Bootstrapper areas | Which approvals and artifacts are mandatory? |

### 6.1 Lifecycle requirements

The detailed implementation should preserve:

- Traceability from client request to workflow, execution, result, and evidence.
- Separation of client-owned data from platform-level definitions.
- Explicit validation status and approval status.
- Clear distinctions between successful execution, failed execution, and incomplete evidence.
- Execution-mode identification, including simulation or emulation when applicable.
- Appropriate authorization before deployment or infrastructure-changing actions.

These requirements need to be mapped to existing contracts before new models are created.

---

## 7. Deployment Preparation Crosswalk

The existing General Factory Bootstrapper documentation describes a deployment preparation flow involving deployment requests, bootstrap configuration, resolution, package composition, generation, configuration, validation, and deployment preparation.

LabaaS should align with that flow instead of creating a competing deployment operator prematurely.

| Concern | Existing component area | Proposed responsibility |
|---|---|---|
| Deployment request | LabaaS lifecycle and existing deployment definitions | Capture the requested delivery outcome and relevant constraints |
| Bootstrap configuration | Existing Bootstrapper configuration | Supply or reference the required configuration through supported contracts |
| Profile and definition resolution | Existing Bootstrapper and resolution components | Resolve applicable profiles and definitions |
| Package composition | Existing Bootstrapper and package assets | Reuse existing composition capabilities |
| Structure generation | Existing Bootstrapper | Generate deployment structures through established behavior |
| Configuration | Existing Bootstrapper and configuration assets | Apply supported configuration inputs |
| Validation | Existing Bootstrapper validation capabilities | Reuse applicable validation rather than duplicating it |
| Deployment preparation | Existing deployment assets | Prepare the deployment pathway subject to approval |
| Runtime execution | General Factory and runtime components | Remain distinct from deployment preparation |

### 7.1 Important distinction

**Deployment preparation is not the same as deployment execution.**

The exact point at which a prepared deployment becomes an approved and executed deployment must be established from the current implementation and its governance requirements.

Do not create `qai_deployment_operator/` until the existing Bootstrapper, deployment profiles, generated deployment structures, registry resolution, and runtime interfaces have been mapped and any genuine gap documented.

---

## 8. Resource, Fabric, and Runtime Crosswalk

LabaaS should describe resource needs at the logical level and use existing runtime, fabric, adapter, and backend capabilities where supported.

| Concern | Candidate existing area | Crosswalk objective |
|---|---|---|
| Workflow and execution contracts | `qai_runtime/contracts/`, `qai_runtime/workflow/`, and related runtime modules | Identify canonical request and workflow contracts |
| API and integration access | `qai_runtime/api/`, `qai_runtime/integration/`, and related gateway or SDK areas | Determine supported access methods |
| Resource selection and planning | Relevant `qai_runtime/` planning and resource-related modules | Map logical resource requirements to supported execution paths |
| Fabric control and data responsibilities | `general_factory/fabric_runtime/` | Clarify control-plane, data-plane, and viewpoint responsibilities |
| Provider and technology integration | `general_factory/adapters/` and `general_factory/connectors/` | Reuse supported integration boundaries |
| Resource backend access | `general_factory/reference_implementations/resource_backends/` | Identify supported GPU, HPC, QPU, TPU, and virtual-compute pathways |
| Environment and deployment tooling | `qai_devops/` | Determine applicable environment and deployment responsibilities |
| Execution evidence | Existing runtime, experimentation, and evidence areas | Preserve provenance across resource selection and execution |

The listed directories are candidate integration areas. Their presence alone does not prove that a particular API, adapter, backend, or end-to-end execution path is ready for use.

### 8.1 Resource handling principles

- Express requirements independently of physical infrastructure wherever feasible.
- Resolve logical requirements through established resource and runtime contracts.
- Preserve backend identity and execution-mode information.
- Record relevant configuration and provenance for reproducibility.
- Do not make a particular cloud provider, Kubernetes, or another infrastructure technology a mandatory LabaaS dependency without an explicit architectural decision.
- Do not silently replace unavailable hardware execution with simulation or emulation.

---

## 9. Registry Resolution and Runtime Bindings

Registry resolution and runtime binding are existing concerns that must be mapped before LabaaS introduces any additional resolver or registry.

Candidate areas include:

- `general_factory/registry/`
- `general_factory/reference_implementations/registry_resolver/`
- `qai_runtime/` contracts and integration modules
- Existing deployment and Bootstrapper configuration and resolution assets

### 9.1 Crosswalk requirements

The integration review should establish:

1. Which registry is authoritative for each type of definition or implementation.
2. How registry entries are identified and resolved.
3. How resolved references are validated.
4. How runtime bindings are represented and consumed.
5. How invalid or missing references are reported.
6. How evidence of successful resolution is recorded.
7. Which component owns validation and error handling at each boundary.

### 9.2 Protected-file constraint

The following files are explicitly outside the scope of this crosswalk and must remain untouched:

- `general_factory/registry/runtime_bindings.json`
- `general_factory/post_pilot_assets/bootstrapper/deployment/Invoke-GeneralFactoryBootstrapper.ps1`

The existing Registry Resolver backup files must also remain untouched.

This document does not authorize changes to registry contents, resolver implementation, runtime bindings, or Bootstrapper behavior.

---

## 10. Evidence, Validation, and Governance

Evidence should connect the requested activity to its execution and outcome.

The proposed LabaaS lifecycle should investigate how to reuse existing evidence and validation capabilities rather than creating a separate evidence platform by default.

| Evidence concern | Expected relationship |
|---|---|
| Request provenance | Identify the originating client request and project |
| Configuration provenance | Record the relevant workflow and configuration references |
| Execution provenance | Identify the execution and execution mode |
| Resource provenance | Record the relevant logical resource and backend references |
| Results | Link outputs to the originating execution |
| Validation | Link criteria, checks, and validation outcomes |
| Approval | Record applicable review or authorization decisions |
| Delivery | Associate the agreed delivery pathway with its supporting evidence |

The authoritative schemas, identifiers, storage locations, access controls, retention policies, and evidence-validation rules remain to be verified.

Client separation, credential handling, authorization, and infrastructure-changing approvals must be resolved before implementing production-facing workflows.

---

## 11. Proposed Directory Responsibilities

The initial directories under `qai_faep/` and `qai_labaas/` are organizational boundaries. They should be populated incrementally after existing components have been mapped.

### 11.1 `qai_faep/`

| Directory | Intended documentation or future responsibility |
|---|---|
| `ecosystem/` | Ecosystem context, participants, and relationships |
| `governance/` | Governance principles, policies, and responsibility boundaries |
| `federation/` | Federation models and cross-boundary coordination |
| `fabrics/` | Capability-fabric relationships and integration contracts |
| `deployment/` | Deployment coordination and alignment with existing deployment components |
| `evidence/` | Ecosystem-level evidence and traceability requirements |

### 11.2 `qai_labaas/`

| Directory | Intended documentation or future responsibility |
|---|---|
| `client_workspace/` | Client workspace lifecycle and boundaries |
| `client_catalog/` | Client-visible capability and service catalog concepts |
| `tenancy/` | Client isolation, identity, access, and tenancy requirements |
| `lifecycle/` | Onboarding, co-design, experimentation, validation, and delivery lifecycle |
| `runtime/` | LabaaS-to-runtime integration contracts |
| `resources/` | Logical resource requirements and resource-selection contracts |
| `experiments/` | Experiment definition and lifecycle alignment |
| `evidence/` | Experiment, execution, validation, and delivery evidence |
| `adapters/` | LabaaS integration boundaries where a distinct adapter is justified |
| `docs/` | Architecture decisions, crosswalks, interfaces, and operating guidance |

These descriptions establish intended areas of responsibility. They do not imply that implementation code must be created in every directory or that a new abstraction is always necessary.

---

## 12. Ownership Boundaries

The following table records the initial responsibility model.

| Component | Primary responsibility | Must avoid |
|---|---|---|
| FAEP | Ecosystem coordination, governance, federation, and capability relationships | Duplicating Framework definitions or Factory runtime implementation |
| General Framework | Definitions, contracts, policies, and cross-cutting framework capabilities | Becoming a client-specific LabaaS implementation |
| General Factory | Implementation capabilities, composition, and execution responsibilities | Duplicating enterprise-level definitions |
| General Factory PaaS | Engineering access and platform-development capabilities | Replacing the Factory execution authority |
| General Factory Bootstrapper | Deployment structure composition, configuration, generation, validation, and preparation as supported | Recreating Framework definitions or Factory runtimes |
| QAI Runtime | Runtime contracts and execution-related capabilities according to existing module ownership | Being bypassed by a parallel LabaaS execution engine |
| Fabric and adapters | Fabric coordination and integration with supported resource or technology paths | Hiding execution-mode or backend substitutions |
| QAI LabaaS | Client-facing engineering, lifecycle coordination, and results/evidence presentation | Becoming a competing Framework, Factory, Bootstrapper, or runtime |
| Evidence components | Evidence structures and validation responsibilities as established by existing contracts | Fragmenting evidence into incompatible, duplicate models |

This is a proposed ownership model. Any conflict with existing authoritative documentation or implementation must be resolved through a documented architecture decision.

---

## 13. Unresolved Questions and Verification Register

The following items require investigation before implementation. They are deliberately not treated as settled facts.

| ID | Question | Required investigation |
|---|---|---|
| XW-01 | What capabilities already exist in General Factory PaaS? | Inspect its documentation, source, and current status |
| XW-02 | What is the canonical client and project model? | Review existing client-related assets and contracts |
| XW-03 | Is there an existing workspace provisioning mechanism? | Inspect current workspace, project, and environment-related components |
| XW-04 | Which component owns experiment definitions and persistence? | Trace existing experimentation and result structures |
| XW-05 | What are the supported runtime invocation and status interfaces? | Inspect runtime contracts, API modules, and Factory integration points |
| XW-06 | How are logical resources resolved to actual backends? | Trace resource planning, adapters, fabric, and backend implementations |
| XW-07 | What registry and runtime-binding contracts are authoritative? | Review documentation and tests without modifying protected files |
| XW-08 | What is the boundary between deployment preparation and execution? | Trace Bootstrapper outputs and their downstream consumers |
| XW-09 | Which evidence schemas and validation mechanisms are reusable? | Inspect existing evidence and validation components |
| XW-10 | What tenancy and client-isolation controls are available? | Review identity, authorization, and environment components |
| XW-11 | Which integrations are implemented, experimental, or documentation-only? | Classify each mapped component using repository evidence |
| XW-12 | Does any genuine responsibility gap justify a new component? | Complete the crosswalk and document the gap before proposing new code |

---

## 14. Recommended Post-Pilot Work Sequence

The recommended sequence is documentation-led and incremental.

### Stage 1 — Inventory and classification

- Identify authoritative documentation and implementation locations.
- Classify relevant components as implemented, partially implemented, planned, or unverified.
- Record the source supporting each classification.

### Stage 2 — Interface and ownership mapping

- Map Framework definitions to Factory implementations.
- Map PaaS engineering functions to LabaaS lifecycle requirements.
- Map LabaaS execution requests to supported Factory and runtime interfaces.
- Map deployment preparation to existing Bootstrapper behavior.
- Map logical resource requirements to supported fabric, adapter, and backend contracts.
- Map results and evidence to their authoritative structures.

### Stage 3 — Architecture decisions

- Resolve ownership conflicts and duplicate responsibilities.
- Document approved interfaces, lifecycle transitions, and governance requirements.
- Identify gaps that cannot be addressed by reuse.

### Stage 4 — Small, bounded implementation

- Implement only the first verified capability or integration.
- Preserve existing behavior and protected files.
- Add validation and tests appropriate to the changed boundary.
- Record execution mode, results, and evidence where supported.

### Stage 5 — Controlled expansion

- Extend the client lifecycle incrementally.
- Add deployment integration only after the relevant contracts are verified.
- Evaluate additional components only when a documented gap requires them.

No stage in this sequence implies authorization to change protected files or to deploy infrastructure.

---

## 15. Initial Acceptance Criteria

This crosswalk can be considered ready for the next design review when:

- [ ] Each major responsibility is mapped to an existing component or explicitly marked unresolved.
- [ ] The distinction between Framework, Factory, PaaS, Bootstrapper, runtime, and LabaaS is documented.
- [ ] The proposed client and experiment lifecycle has been compared with existing structures.
- [ ] Registry resolution and runtime bindings have been mapped without modifying protected files.
- [ ] Deployment preparation and deployment execution have distinct ownership.
- [ ] Logical resource selection and physical backend execution remain distinguishable.
- [ ] Evidence and validation ownership is identified or explicitly unresolved.
- [ ] Existing implementations are distinguished from proposals and assumptions.
- [ ] Any proposed new component has a documented gap and an approved ownership boundary.

---

## 16. Conclusion

FAEP and QAI LabaaS should be developed as clear architectural boundaries over the existing Bhadale IT ecosystem, not as parallel implementations of capabilities that already belong to General Framework, General Factory, PaaS, Bootstrapper, runtime, fabric, or evidence components.

The immediate post-pilot priority is to **verify existing capabilities, establish ownership and interface mappings, and resolve open architecture questions before writing implementation logic**.

This crosswalk is an initial planning artifact. Its proposed relationships must be validated against the current repository source, documentation, and tests before being treated as implemented integration contracts.

---

## 17. Registry Resolver Verification Findings

**Review date:** 11 October 2026
**Review basis:** Repository inventory, supplied source excerpts, JSON schemas, example request, and test source files
**Status:** Initial source inspection; test execution not independently verified

### 17.1 Verified request contract

The current request schema requires:

- `request_id`
- `framework_capability_id`

It optionally defines:

- `environment`
- `execution_mode`
- `implementation_version`
- `required_resources`

The schema disallows additional properties.

### 17.2 Verified evaluator responsibilities

The inspected compatibility evaluator checks declared support for environment, execution mode, implementation version, and required resources.

It distinguishes:

- `COMPATIBLE`
- `INCOMPATIBLE`
- `INSUFFICIENT_INFORMATION`

A known incompatibility takes precedence over unknown compatibility dimensions for an individual candidate. The overall result is compatible when at least one candidate is compatible; otherwise, unresolved candidate information may result in an insufficient-information outcome.

These behaviors are based on the inspected source. Broader correctness and edge-case coverage remain subject to test execution and review.

### 17.3 Adapter responsibilities

The inspected adapter:

1. Validates required request fields.
2. Loads the resolver, compatibility evaluator, and evidence evaluator.
3. Performs capability-based registry lookup.
4. Evaluates candidate compatibility.
5. Assesses required evidence separately from metadata compatibility.
6. Returns a combined resolution result.

The adapter is not evidence that deployment, physical resource provisioning, or quantum workload execution has been implemented.

### 17.4 Contract mismatches requiring review

**RV-01 — Evidence request fields**

The adapter source accepts `evidence_records` and `required_evidence_types`, but the inspected request schema does not declare these properties and prohibits additional properties.

Decision required: either formally extend the request schema or define a separate, validated evidence-assessment input contract.

**RV-02 — Result schema completeness**

The adapter returns `candidate_results`, `lookup_findings`, and `evidence_assessment` in addition to the fields declared in the inspected result schema.

Decision required: determine whether these fields belong in a revised result schema or whether the adapter should return a different documented contract.

**RV-03 — Evidence reference semantics**

The basic resolver records the registry path as an evidence reference, while the compatibility evaluator collects binding identifiers and the adapter separately evaluates evidence records.

Decision required: clarify the meaning and type of each evidence reference so that a registry location, a binding identifier, and a validation artifact are not treated as interchangeable.

### 17.5 Test status

The repository contains contract, compatibility, adapter, and evidence-related test files.

The inspected contract test distinguishes current-behavior checks from future-contract documentation checks. Its future-case checks verify that scenarios appear in a test matrix; they do not prove that those scenarios pass in the implementation.

The supplied adapter test source contains synthetic assertions for compatible candidates, environment mismatches, and missing capability matches. Actual test execution results must be recorded separately.

**Current verification status:** Source inspected; test execution and complete schema validation remain unverified.

### 17.6 Resource backend status

The GPU, HPC, QPU, TPU, and virtual-compute manifests identify their entries as candidate reference implementations. Their capability, connector, adapter, runtime, backend, resource, execution-mode, configuration, and evidence arrays are empty in the inspected files.

These manifests establish a common registration structure, not operational resource availability or a verified execution pathway.

### 17.7 LabaaS integration decision

The Registry Resolver is a candidate integration point for LabaaS capability-resolution requests, subject to the following prerequisites:

1. Reconcile the request and result schemas with the adapter's actual input and output.
2. Verify compatibility and evidence behavior through the existing tests.
3. Establish a stable, documented invocation contract.
4. Confirm how LabaaS experiment requirements map to Framework capability identifiers and Factory bindings.
5. Keep registry resolution separate from resource provisioning and execution authorization.
6. Preserve the distinction between candidate resource registrations and operational backends.

No direct integration or implementation change is authorized by this review.

### 17.8 Next review gate

Before integration work begins, the relevant schemas and adapter behavior should agree, required tests should execute successfully, and the remaining resource and deployment boundaries should be documented.

Until then, the Registry Resolver remains a promising, bounded reference implementation rather than a verified end-to-end LabaaS execution service.

# QAI Deployment Contract Specification

**Status:** Draft
**Phase:** 2 — Declarative Contracts
**Implementation status:** Not implemented

## 1. Purpose

Define a product-agnostic representation of a deployment request. The contract describes intent and references; it does not perform deployment, provisioning, configuration, or reconciliation.

## 2. Design Principles

- Separate declarative intent from implementation logic.
- Separate planning, approval, execution, and validation.
- Do not assume that a registered resource is owned or managed by QAI.
- Do not mutate client resources without explicit authorization and applicable policy.
- Keep credentials and secret values outside the contract and source control.
- Report unsupported capabilities explicitly.
- Keep provider-specific behavior behind adapters.

## 3. Proposed Contract Structure

The deployment request uses a metadata section for identity and a specification section for requested intent. This is a proposed structure; the formal schema and field constraints remain to be defined.

### 3.1 API and Object Identity

| Field | Requirement | Description |
|---|---|---|
| `api_version` | Required | Proposed API group and version |
| `kind` | Required | Fixed discriminator: `Deployment` |
| `metadata.namespace` | Required | Hierarchical logical namespace |
| `metadata.name` | Required | Human-readable object name |
| `metadata.stable_id` | Required | Stable identifier within the agreed uniqueness scope |
| `metadata.version` | Required | Definition version |

### 3.2 Deployment Specification

| Field | Requirement | Description |
|---|---|---|
| `spec.target_environment_ref` | Required | Logical reference to the intended environment |
| `spec.workload_ref` | Required | Logical reference to the workload |
| `spec.requested_operation` | Required | Requested deployment operation |
| `spec.configuration_refs` | Optional | References to configuration definitions, excluding secret values |
| `spec.execution_mode` | Required | Proposed values: `plan` or `execute` |
| `spec.policy_ref` | Required | Logical reference to the applicable policy |

### 3.3 Metadata and Extension Rules

The proposed examples use metadata for identity fields and descriptive information. The permitted metadata fields and extension rules must be defined by the formal schema.

Credentials, private keys, tokens, and other secret values must not be embedded in metadata, configuration references, or the deployment specification.

### 3.4 Contract Status

All fields and conventions in this section remain proposed. Namespace grammar, stable-ID allocation, versioning, reference syntax, operation enumeration, and execution authorization rules must be reviewed before the schema is finalized.

## 4. Validation Rules

### 4.1 Structural Validation

1. Required fields must be present and non-empty.
2. `kind` must equal `Deployment`.
3. `api_version` must match an explicitly supported contract version.
4. `metadata.namespace`, `metadata.name`, `metadata.stable_id`, and `metadata.version` must satisfy the agreed format constraints.
5. `spec.execution_mode` must use an allowed value. The proposed values are `plan` and `execute`.
6. The request must conform to the finalized machine-readable schema.

### 4.2 Identity and Reference Validation

1. `metadata.stable_id` must be unique within its agreed uniqueness scope.
2. References in `spec.target_environment_ref`, `spec.workload_ref`, `spec.configuration_refs`, and `spec.policy_ref` must be resolvable before a plan is considered ready.
3. Each resolved reference must identify an object of the expected category.
4. Missing, ambiguous, inaccessible, or incompatible references must produce explicit outcomes.
5. A resolver must not silently substitute a different object when a requested reference cannot be resolved.

### 4.3 Policy and Execution Validation

1. The requested operation must be compatible with declared capabilities and applicable policy.
2. `plan` mode must not mutate target resources.
3. `execute` mode expresses execution intent only; it does not grant authority or bypass approval.
4. If policy requires approval, execution must remain blocked until valid approval evidence is available.
5. Unsupported operations or capabilities must produce an explicit unsupported outcome.

### 4.4 Security Validation

1. Secret values, credentials, private keys, and access tokens must not appear in the deployment contract.
2. Configuration references may identify approved configuration sources but must not contain secret values.
3. Any future secret-detection and enforcement mechanism must be evaluated separately from structural schema validation.

### 4.5 Validation Boundary

Passing structural validation does not prove that references resolve, policies permit the operation, resources are available, or execution will succeed.

Schema validation, reference resolution, policy evaluation, approval, execution, and observed-state validation are separate stages. These stages are design requirements; their implementation remains pending.

## 5. Illustrative Valid Planning Request

```yaml
api_version: holdco.qai/v1alpha1
kind: Deployment

metadata:
  namespace: holdco.qai.deployments
  name: example-app-dev
  stable_id: DPL-000073
  version: "1.0.0"

spec:
  target_environment_ref: holdco.qai.devops.environments.development_local
  workload_ref: holdco.qai.workloads.example_workload
  requested_operation: deploy

  configuration_refs:
    - holdco.qai.devops.configurations.example_app_dev

  execution_mode: plan

  policy_ref: holdco.qai.devops.policies.default_deployment
```

**Expected result:** The request is structurally valid under the proposed conventions, subject to schema definition and validation. The logical references are illustrative and have not been registered or verified. No resources are created, modified, or deleted.

This example does not establish that the API group, namespace, stable ID, version, referenced objects, or deployment capability currently exist.

### Missing Required Reference

```yaml
api_version: holdco.qai/v1alpha1
kind: Deployment

metadata:
  namespace: holdco.qai.deployments
  name: invalid-missing-environment
  stable_id: DPL-000074
  version: "1.0.0"

spec:
  workload_ref: holdco.qai.workloads.example_workload
  requested_operation: deploy
  execution_mode: plan
  policy_ref: holdco.qai.devops.policies.default_deployment
```

**Expected result:** Reject the request because `spec.target_environment_ref` is missing. The request must not proceed to deployment planning until the required field is supplied.

The namespace, stable ID, and logical references are illustrative. They have not been registered or validated against an implemented schema.

### Unsupported Execution Mode

```yaml
api_version: holdco.qai/v1alpha1
kind: Deployment

metadata:
  namespace: holdco.qai.deployments
  name: invalid-unsupported-execution-mode
  stable_id: DPL-000075
  version: "1.0.0"

spec:
  target_environment_ref: holdco.qai.devops.environments.development_local
  workload_ref: holdco.qai.workloads.example_workload
  requested_operation: deploy
  execution_mode: immediate
  policy_ref: holdco.qai.devops.policies.default_deployment
```

**Expected result:** Reject the request because `immediate` is not an allowed value in the proposed `execution_mode` enumeration. The currently proposed values are `plan` and `execute`. Validation failure must prevent the request from proceeding to subsequent processing.

The namespace, stable ID, and logical references are illustrative and have not been registered or validated against an implemented schema.

### Secret Embedded in Configuration

```yaml
api_version: holdco.qai/v1alpha1
kind: Deployment

metadata:
  namespace: holdco.qai.deployments
  name: invalid-secret-in-metadata
  stable_id: DPL-000076
  version: "1.0.0"

spec:
  target_environment_ref: holdco.qai.devops.environments.development_local
  workload_ref: holdco.qai.workloads.example_workload
  requested_operation: deploy
  execution_mode: plan
  policy_ref: holdco.qai.devops.policies.default_deployment

  metadata:
    password: example-secret-value
```

**Expected result:** Reject the request under the proposed secret-handling rule because a secret-like field containing a credential value appears in the deployment document. The request must not proceed until the credential is removed and supplied through an approved secret-provider mechanism.

Secret detection and enforcement mechanisms are not yet implemented. The namespace, stable ID, and logical references are illustrative and have not been registered or validated against an implemented schema.

## 7. Processing Boundaries

The intended logical sequence is:

1. Parse the request.
2. Validate its structure and field constraints.
3. Resolve references and inspect declared capabilities.
4. Evaluate applicable policy.
5. Produce a plan and validation evidence.
6. Obtain explicit approval when required.
7. Execute only through an authorized implementation, if available.
8. Validate the observed result and record status and evidence.

Documenting this sequence does not establish that any of these processing capabilities currently exist.

## 8. Open Design Decisions

- Final schema format and versioning convention.
- Deployment ID uniqueness scope.
- Approved operation enumeration.
- Whether `execution_mode` belongs in the deployment contract or a separate execution request.
- Standard reference syntax and resolution rules.
- Approval evidence structure and policy evaluation interface.
- Formal schema and contract test framework.

## Relationship to QAI DevOps

QAI DevOps defines portable environment and deployment intent. The future QAI Deployment Operator is expected to consume these definitions and coordinate deployment lifecycle operations. The operator is not implemented by the existence of these documents.

### Five-Part Model

- **WHAT:** Environment definition.
- **WHY:** Environment type.
- **WHERE:** Deployment target.
- **HOW:** Deployment adapter.
- **WHAT RUNS:** QAI Runtime.

### Existing manifest conventions

The following QAI DevOps files are existing declarative examples or placeholders and must be reviewed before introducing competing representations:

- `qai_devops/manifests/deployment/deployment.yaml`
- `qai_devops/manifests/environment/environment.yaml`
- `qai_devops/manifests/workload.yaml`
- `qai_devops/manifests/resources/resource_profile.yaml`
- `qai_devops/manifests/runtime/execution_plan.yaml`

The Deployment Operator contract should reference or consume these definitions where appropriate rather than duplicating their responsibilities.

### Implementation boundary

The current repository contains scaffolds for environment definitions, environment types, resource profiles, adapters, and validation. Their existence does not establish that discovery, policy evaluation, provisioning, execution, or reconciliation is implemented.

Deployment planning must remain distinguishable from authorization and execution. Resource registration must not imply ownership. Client resources must not be mutated without explicit authorization and applicable policy. Unsupported capabilities must be reported explicitly.

### Open conventions

The following decisions remain unresolved:

- Deployment identifier format and uniqueness scope.
- Reference syntax for environments, workloads, resource profiles, execution plans, and policies.
- Supported deployment-operation enumeration.
- Whether execution intent belongs in the deployment contract or a separate execution request.
- Approval evidence representation.
- Policy evaluation and validation result formats.

## Logical Identifiers and Reference Resolution

### Design Objective

Deployment contracts use logical identifiers rather than repository-relative paths as their primary references. This allows definitions to be reorganized or supplied by different repositories, catalogs, registries, or approved resource sources without changing the deployment request.

Logical references identify intended objects. They do not, by themselves, prove that an object exists, is unique, is accessible, is compatible, or is authorized for use.

### Reference Categories

The contract may refer to the following logical objects:

- Environment definition.
- Environment type.
- Deployment target.
- Workload.
- Resource profile.
- Execution plan.
- Deployment adapter.
- Policy.
- Approval evidence, where required.

The exact field names and reference syntax remain subject to schema review.

### Resolution Requirements

1. Resolve each reference against an explicitly configured and authorized source.
2. Verify that the resolved object has the expected category or type.
3. Require a unique result within the applicable resolution scope.
4. Return an explicit unresolved result when no eligible match exists.
5. Return an explicit ambiguous result when multiple eligible matches exist.
6. Reject incompatible, inaccessible, or policy-prohibited results.
7. Record the logical identifier and the identity of the selected definition or resource in resolution evidence.
8. Do not silently substitute a different object when the requested reference cannot be resolved.
9. Do not infer resource ownership from discovery or registration.
10. Do not perform provisioning or mutation as a side effect of reference resolution.

### Source and Version Information

Repository paths, catalog locations, registry identifiers, provider identifiers, and other physical locators may be recorded as resolution metadata. They are not the primary identity expressed by the deployment request.

Where multiple definitions share a logical identifier, the resolver must use an explicit scope, namespace, version, or other agreed disambiguation rule. If the rules do not produce one eligible result, resolution must stop with an explicit outcome.

The identifier format, namespace rules, version-selection rules, source precedence, and resolution caching behavior remain open design decisions.

### Resolution Outcomes

The future resolver should distinguish at least these outcomes:

- Resolved: one eligible definition or resource was identified.
- Unresolved: no eligible match was found.
- Ambiguous: multiple eligible matches remain.
- Incompatible: a candidate exists but does not satisfy the requested requirements.
- Inaccessible: the resolver cannot establish the required access.
- Prohibited: applicable policy disallows the requested use.

These are proposed contract semantics, not implemented status values.

### Safety Boundary

Successful resolution establishes a candidate binding, not permission to execute. Policy evaluation, approval, execution, observed-state validation, and evidence recording remain distinct stages.

## Hierarchical Namespaces, Names, and Stable IDs

### Design Objective

QAI contracts should use hierarchical namespaces, human-readable names, and stable unique identifiers to establish clear logical boundaries and support reliable resolution across repositories, catalogs, registries, products, and deployment environments.

This model supports the transition from draft and boilerplate code toward post-pilot development without making physical file paths the primary identity of an object.

### Identity Components

Each registered or catalogued object should distinguish the following concepts:

- **Namespace:** Identifies the logical organizational and functional scope of an object.
- **Name:** Provides a human-readable identifier for the object.
- **Stable ID:** Identifies the object independently of its display name or physical location.
- **Version:** Identifies a particular revision of the object's definition.

These components serve different purposes and must not be treated as interchangeable.

### Hierarchical Namespace

Namespaces should support a hierarchy that reflects organizational, product, domain, and functional boundaries.

Illustrative namespace:

`holdco.qai.devops.templates`

Illustrative namespace categories include:

- `holdco.qai.devops.templates`
- `holdco.qai.devops.environments`
- `holdco.qai.workloads`
- `holdco.qai.resources.profiles`
- `holdco.qai.runtime.execution_plans`
- `holdco.qai.deployments`

These examples are proposed naming conventions, not existing registry entries or implemented namespaces.

The namespace grammar, allowed characters, case-sensitivity rules, and maximum hierarchy depth remain open design decisions.

### Human-Readable Names and Boilerplate Conventions

Existing numbered boilerplate conventions, such as `00_template1`, may be retained as human-readable names or ordering conventions.

For example:

- Name: `00_local_environment`
- Namespace: `holdco.qai.devops.templates`
- Stable ID: `TPL-000001`
- Version: `1.0.0`

The numeric prefix may express ordering or category. It must not be assumed to provide global uniqueness.

Renaming an object must not silently create a different identity when the underlying registered object remains the same.

### Stable Identifier Conventions

Illustrative identifier prefixes include:

| Object category | Proposed prefix | Illustrative ID |
|---|---|---|
| Template | `TPL` | `TPL-000001` |
| Environment | `ENV` | `ENV-000042` |
| Workload | `WRK` | `WRK-000108` |
| Resource profile | `RPF` | `RPF-000021` |
| Execution plan | `EXP` | `EXP-000014` |
| Deployment request | `DPL` | `DPL-000073` |

These identifiers are examples only. Their formats, allocation authority, uniqueness scope, and lifecycle rules have not yet been approved.

Stable IDs should remain unchanged when an object's display name or physical file location changes, provided that the logical identity of the object has not changed.

The creation of a new object should not reuse an existing object's stable ID.

### Versioning

Object identity and definition version must be represented separately.

An update to an existing object may retain its stable ID while receiving a new definition version. A distinct object should receive a distinct stable ID.

When reproducibility or deployment safety requires a specific definition revision, the request or resolution record should identify that version or an equivalent immutable revision.

Version syntax, compatibility rules, version-selection policy, and behavior when a requested version is unavailable remain open design decisions.

### Resolution Rules

The future resolver should apply the following principles:

1. Validate the expected object category and namespace.
2. Resolve a supplied stable ID within its declared uniqueness scope.
3. When resolving by name, use only the explicitly permitted namespace and search scope.
4. If multiple eligible candidates remain, return an explicit ambiguous outcome.
5. If no eligible candidate exists, return an explicit unresolved outcome.
6. If a requested version is unavailable, report the failure rather than silently selecting a different version.
7. Verify object type, compatibility, accessibility, and applicable policy before allowing downstream processing.
8. Record the resolved logical identity, selected version, source, and relevant resolution evidence.
9. Keep physical paths, registry locations, and provider-specific identifiers as resolution metadata rather than primary logical identity.
10. Do not treat successful resolution as authorization to provision, execute, or mutate resources.

### Registry and Allocation Authority

The authority responsible for allocating stable IDs has not yet been selected.

Potential approaches include a central QAI registry or controlled allocation by domain-specific registries. Any future implementation must define uniqueness, collision prevention, identity retention, and migration behavior explicitly.

This specification does not establish that a registry or ID-allocation service currently exists.

### Open Design Decisions

- Namespace grammar, hierarchy, and case-sensitivity rules.
- Whether names must be unique within a namespace.
- Stable ID format and uniqueness scope.
- Central versus domain-level ID allocation.
- Version syntax and compatibility policy.
- Rules for renaming, deprecating, replacing, and migrating objects.
- Search scope and precedence when resolving names.
- Required resolution metadata and evidence format.

### Implementation Boundary

This section defines a proposed contract convention. It does not implement a namespace registry, ID allocator, resolver, version manager, or deployment capability.

The convention should be reviewed against existing QAI DevOps manifests and related QAI contracts before being adopted as a repository-wide standard.

## 9. Acceptance Criteria

- Required and optional fields are documented.
- Field types, enumerations, and constraints are agreed.
- Valid and invalid examples have defined expected outcomes.
- Cross-contract references are specified.
- Schema validation and contract tests are defined.
- Planning is demonstrably non-mutating before any execution implementation is introduced.
- The specification is reviewed against the QAI Deployment Operator development plan.

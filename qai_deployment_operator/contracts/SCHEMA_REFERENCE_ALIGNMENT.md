# QAI Schema-to-Reference Alignment

**Status:** Draft for review
**Scope:** Alignment of Deployment and Environment JSON Schemas with the reference conventions proposal and mapping inventory
**Implementation status:** Analysis only; no schema or runtime changes

## 1. Purpose

Document which reference-related fields are structurally enforced by the current Deployment and Environment JSON Schemas and which relationships remain unresolved.

This document records schema behavior and design gaps. It does not establish a canonical reference grammar, register referenced objects, or implement reference resolution.

## 2. Deployment Schema

The Deployment schema requires:

- `metadata.namespace`
- `metadata.name`
- `metadata.stable_id`
- `metadata.version`
- `spec.target_environment_ref`
- `spec.workload_ref`
- `spec.requested_operation`
- `spec.execution_mode`
- `spec.policy_ref`

The stable ID must match the pattern `DPL-` followed by six digits. The requested operation is restricted to `deploy`; execution mode is restricted to `plan` or `execute`.

When supplied, `spec.configuration_refs` must be an array of unique, non-empty strings.

The schema validates field structure and selected constraints. It does not verify that referenced environments, workloads, configurations, or policies exist or are authorized.

## 3. Environment Schema

The Environment schema requires:

- `metadata.namespace`
- `metadata.name`
- `metadata.stable_id`
- `metadata.version`
- `spec.environment_type`
- `spec.target_ref`
- `spec.runtime.mode`

The stable ID must match the pattern `ENV-` followed by six digits. The environment type is restricted to `dev`, `test`, `prod`, or `other`.

When supplied, `spec.configuration_refs` is an object with optional `project`, `resource_profile`, `storage_profile`, and `database_profile` string properties. `spec.constraints`, when supplied, must contain unique, non-empty strings.

The schema does not resolve the target or configuration references.

## 4. Cross-Schema Differences

| Concern | Deployment schema | Environment schema | Alignment status |
|---|---|---|---|
| Environment selection | `spec.target_environment_ref` | Not applicable as a selection field | Mapping to the Environment object is proposed; resolution is unimplemented |
| Deployment target | No separate `target_ref` field in the current Deployment schema | `spec.target_ref` | Target identity and resolution convention undecided |
| Workload reference | Required `spec.workload_ref` | Not defined | Workload identity and catalog convention undecided |
| Policy reference | Required `spec.policy_ref` | Not defined | Policy identity and catalog convention undecided |
| Configuration references | Optional array of strings | Optional object of named profile fields | Structures differ; compatibility rule undecided |
| Stable IDs | `DPL-######` pattern | `ENV-######` pattern | Formats differ by object category; registry and allocation rules undecided |
| Version | Required non-empty string | Required non-empty string | Version-selection and compatibility behavior undecided |

## 5. Existing Manifest Compatibility

The existing manifests use labels such as `dev`, `local`, `default`, `development`, `example-workload`, and `example-plan`.

The current schemas do not define a conversion from these labels to registered logical references. They also do not define an automatic conversion from manifest field names to contract fields.

In particular:

- `deployment.environment: dev` is not itself a verified `target_environment_ref`.
- `deployment.target: local` does not establish the identity of a target object.
- `environment.target: local` is a candidate input to a future mapping for `spec.target_ref`.
- `environment.type: development` is not a permitted value for the current `spec.environment_type` enumeration.
- Workload, resource-profile, and execution-plan names do not establish registered contract references.

No manifest migration or schema change is proposed by this analysis.

## 6. Design Decisions Required

1. Define the logical-reference grammar and namespace conventions.
2. Decide how manifest labels map to logical references and contract metadata.
3. Define the target object category, representation, and resolution scope.
4. Decide how Deployment and Environment configuration references relate despite their different structures.
5. Define workload, resource-profile, execution-plan, and policy identity conventions.
6. Specify version-selection and compatibility rules.
7. Define reference-resolution failure behavior and its separation from authorization and execution.

## 7. Implementation Boundaries

The current schemas provide structural validation only.

Reference resolution, catalog lookup, authorization, policy evaluation, provider validation, runtime binding, provisioning, and deployment execution remain separate capabilities and are not implemented by this document.

## 8. Acceptance Criteria

- Schema requirements are described without claiming runtime behavior.
- Differences between Deployment and Environment configuration structures are explicit.
- Existing manifest labels are preserved.
- Proposed mappings remain distinguishable from confirmed schema behavior.
- No schema, manifest, or runtime implementation is changed by this analysis.

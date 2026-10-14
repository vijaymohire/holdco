# QAI Contract Reference Mapping Inventory

**Status:** Draft for review
**Scope:** Mapping existing QAI DevOps manifests to declarative Deployment and Environment contracts
**Implementation status:** Documentation only; no mapping or resolver implemented

## 1. Purpose

Record the relationships between existing QAI DevOps manifest fields and the proposed logical-reference model.

This inventory distinguishes confirmed manifest values, contract-level fields, and proposed mappings. It does not authorize automatic conversion or modification of existing manifests.

## 2. Deployment and Environment Mapping

| Existing manifest field | Current example value | Related contract field | Mapping status |
|---|---|---|---|
| `deployment.environment` | `dev` | `Deployment.spec.target_environment_ref` | Proposed mapping; resolution rule undecided |
| `deployment.target` | `local` | Deployment-target selection | Relationship to the environment's target selection is undecided |
| `environment.target` | `local` | `Environment.spec.target_ref` | Candidate mapping; target definition and resolution rule undecided |
| `environment.name` | `dev` | Environment metadata name or logical reference | Identity mapping rule undecided |
| `environment.type` | `development` | `Environment.spec.environment_type` | Requires an explicit value-mapping decision |
| `runtime.mode` | `development` | Environment runtime configuration | Relationship to environment type requires clarification |

The current manifest values are labels, not verified logical references. No automatic conversion is implemented.

## 3. Workload and Configuration Mapping

| Existing manifest field | Current example value | Intended concept | Mapping status |
|---|---|---|---|
| `workload.name` | `example-workload` | Workload definition identity | Reference field and identity rule undecided |
| `workload.type` | `generic` | Workload classification | Classification semantics require contract alignment |
| `workload.execution_profile` | `default` | Workload execution configuration | Whether this identifies a configuration object is undecided |
| `resource_profile.name` | `default` | Resource profile identity | Profile reference and catalog conventions undecided |
| `execution_plan.name` | `example-plan` | Execution plan identity | Execution-plan contract and reference field require review |
| `routing.policy` | `default` | Routing policy selection | Relationship to `policy_ref` requires review |

## 4. Confirmed Existing Manifest Structure

The inspected manifests currently contain:

- Deployment intent: name, environment label, target label, and runtime version.
- Environment definition: name, type, target label, and runtime mode.
- Workload definition: name, type, execution profile, requirements, constraints, and evidence requirement.
- Resource profile: name, capability flags, and constraints.
- Execution plan: name, stages, routing policy, and evidence requirement.

These structures describe the existing files. They do not establish that corresponding contract objects, registries, or runtime services exist.

## 5. Reference Categories Requiring Decisions

Before implementing resolution, the contract design must clarify:

1. How `deployment.environment` maps to `target_environment_ref`.
2. How the environment's `target` value identifies a deployment-target definition.
3. How manifest names map to contract metadata names and stable IDs.
4. Whether execution profiles, resource profiles, and routing policies are independent configuration objects.
5. How execution plans are represented and referenced by deployment requests.
6. How `development` in existing manifests maps, if at all, to the canonical environment type `dev`.
7. How versions and namespaces participate in reference resolution.

## 6. Compatibility Requirements

- Preserve existing manifest values until an explicit migration rule is approved.
- Do not treat names such as `dev`, `local`, and `default` as globally unique identifiers.
- Do not assume illustrative logical references identify registered objects.
- Keep environment selection separate from deployment-target selection.
- Keep structural schema validation separate from reference resolution and authorization.
- Do not introduce automatic provisioning or execution through this mapping work.

## 7. Acceptance Criteria

- Existing manifest fields and example values are recorded accurately.
- Confirmed facts are distinguished from proposed mappings.
- Unresolved relationships are explicitly documented.
- No existing manifest or schema is modified by this inventory.
- The inventory does not claim that reference resolution is implemented.

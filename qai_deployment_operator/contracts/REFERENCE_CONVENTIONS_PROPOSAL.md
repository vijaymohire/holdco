# QAI Contract Reference Conventions — Proposal

**Status:** Proposed for review
**Scope:** Logical references across declarative QAI contracts
**Implementation status:** Not implemented

## 1. Purpose

Establish provisional conventions for identifying environments, deployment targets, workloads, configuration definitions, resource profiles, storage profiles, execution plans, and policies.

These conventions must support portable logical references without making repository paths, provider-specific names, or human-readable labels the primary identity of an object.

## 2. Reference Categories

| Contract field or concept | Intended object or meaning |
|---|---|
| `target_environment_ref` | Environment definition selected by a deployment request |
| `target_ref` | Deployment target declared by an environment definition |
| `workload_ref` | Workload definition referenced by a deployment request |
| `configuration_refs` | Collection of references to configuration definitions |
| Resource profile | Configuration category for resource capabilities and constraints |
| Storage profile | Configuration category for storage settings |
| Database profile | Configuration category for database settings |
| `policy_ref` | Policy definition referenced by a deployment request |
| Execution plan | Definition of execution stages, routing, and evidence requirements |

The profile categories above describe intended configuration objects. They do not establish independent top-level schema fields or prove that corresponding profile definitions or registries exist.

These categories describe intended relationships. They do not prove that referenced objects exist, are accessible, or are authorized for use.

## 3. Proposed Logical Reference Shape

Use a hierarchical, human-readable logical identifier as the initial proposal.

Illustrative examples using a provisional namespace pattern:

- `holdco.qai.devops.environments.development_local`
- `holdco.qai.targets.example_local`
- `holdco.qai.workloads.example_workload`
- `holdco.qai.resources.profiles.default`
- `holdco.qai.storage.profiles.default`
- `holdco.qai.devops.policies.default_deployment`
- `holdco.qai.devops.execution_plans.example_plan`

These strings are illustrative only. They are not registered objects, verified references, or approved canonical identifiers. Their consistency does not establish that the proposed namespace hierarchy or grammar has been adopted.

The exact grammar, case-sensitivity rules, namespace ownership, category rules, and version-selection behavior remain open decisions.

## 4. Names, References, and Stable IDs

Keep these concepts distinct:

- **Name:** A human-readable label, such as `dev`, `local`, or `default`.
- **Logical reference:** A structured identifier used to refer to an object within an agreed namespace and resolution scope.
- **Stable ID:** An identifier intended to remain associated with an object when its name or physical location changes.
- **Version:** The revision of an object's definition.

A name must not be treated as globally unique unless a separate naming rule guarantees that property. A logical reference must not be treated as a stable ID unless that equivalence is explicitly adopted.

## 5. Relationship to Existing Manifests

Existing manifests use simple values, including:

- `deployment.environment: dev`
- `deployment.target: local`
- `environment.name: dev`
- `environment.type: development`
- `resource_profile.name: default`
- `workload.name: example-workload`
- `execution_plan.name: example-plan`

These values must not be silently rewritten as logical references. A future mapping or migration rule must define how each value corresponds to a contract object.

The proposed mapping from environment type `development` to canonical contract type `dev` remains a mapping decision, not an automatic conversion.

## 6. Reference Resolution Requirements

Any future resolver should:

1. Identify the expected object category.
2. Resolve references only within an explicitly defined and authorized scope.
3. Report unresolved and ambiguous references explicitly.
4. Verify the selected object's category and requested version where applicable.
5. Avoid silently substituting another object when resolution fails.
6. Keep reference resolution separate from policy evaluation, approval, provisioning, and execution.

These are design requirements, not implemented capabilities.

A syntactically valid logical reference is not evidence that its target exists, is unique, is compatible with the requesting contract, or is authorized for use. Those properties require separate resolution and validation steps. The reference format alone must not trigger provisioning or execution.

## 7. Open Decisions

1. Final logical-reference grammar and allowed characters.
2. Whether namespace segments are case-sensitive.
3. Whether references must include an object category.
4. How versions are specified or selected.
5. How logical references map to stable IDs and registry entries.
6. Whether targets, configurations, and policies require separate catalogs.
7. How existing manifest labels are mapped without breaking current consumers.

## 8. Acceptance Criteria

- Each reference category has a documented meaning.
- Environment references and deployment-target references remain distinct.
- Examples are explicitly identified as illustrative.
- Existing manifest values are preserved until a migration rule is agreed.
- No reference convention implies implemented resolution, authorization, provisioning, or execution.

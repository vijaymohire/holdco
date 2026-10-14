# QAI Deployment Operator — Environment Contract Specification

**Status:** Draft
**Contract area:** Environment
**Implementation status:** Declarative specification only; runtime binding and validation implementation pending

## 1. Purpose

The Environment Contract describes a logical environment in which a QAI workload may be intended to operate.

It records environment identity, classification, target, runtime configuration, profile references, and relevant constraints. It provides a product-neutral representation that can be referenced by a deployment request.

The contract separates environment intent from provider-specific implementation and operational execution.

## 2. Scope and boundaries

The contract may describe:

- Environment identity and classification.
- Deployment target and runtime mode.
- Project and configuration references.
- Resource, storage, and database profile references.
- Adapter selections.
- Evidence and artifact location references.
- Secret-provider references and declared constraints.

The contract does not, by itself:

- Provision, configure, or modify infrastructure.
- Establish ownership of discovered or registered resources.
- Prove that referenced environments, profiles, adapters, or providers exist.
- Authorize an operation or establish approval.
- Validate credentials, access permissions, or provider availability.
- Execute a workload or deployment.
- Guarantee that declared capabilities are supported by the target.

These responsibilities belong to separately defined validation, policy, resource, execution, lifecycle, and runtime mechanisms.

## 3. Conceptual structure

An environment definition consists of the following logical sections:

| Section | Purpose |
|---|---|
| Identity | Identifies the environment and its definition version. |
| Classification | Declares the environment type. |
| Target | Identifies the intended deployment target. |
| Runtime | Declares the intended runtime mode and relevant runtime requirements. |
| Configuration references | References project and configuration definitions. |
| Profile references | References resource, storage, and database profiles. |
| Adapter references | Declares the intended adapter selections. |
| Evidence and artifacts | Identifies the applicable evidence and artifact locations or references. |
| Secret provider | References an approved provider without storing secret values. |
| Constraints | Declares environment-specific restrictions and requirements. |

This structure is conceptual. The final serialized field names and schema remain subject to review.

## 4. Relationship to existing QAI DevOps definitions

The contract must be reviewed against these existing repository artifacts:

- `qai_devops/manifests/environment/environment.yaml`
- `qai_devops/.env.example`
- `qai_devops/docs/ENVIRONMENT_VARIABLE_BINDING_MODEL.md`
- `qai_devops/catalog/environment_definitions/dev/`
- `qai_devops/catalog/environment_definitions/test/`
- `qai_devops/catalog/environment_definitions/prod/`

The current environment manifest represents environment name, type, target, and runtime mode.

The environment-variable binding model represents selection of environment, project, runtime mode, resource, storage, database, adapters, deployment target, evidence path, artifact path, and secret provider.

The Environment Contract should define the logical meaning of these properties and how references are expressed. It must not introduce a competing definition without documenting the relationship to the existing model.

## 5. Identity and classification

The contract must define:

- A human-readable environment name.
- A stable identifier.
- A definition version.
- An environment type.
- A deployment target reference or identifier.

The existing environment catalog uses `dev`, `test`, and `prod` as directory names. The Environment Contract adopts `dev`, `test`, and `prod` as its proposed canonical environment types, with `other` available for other declared environment categories.

Environment type is distinct from runtime mode. Descriptive values such as `development` and `production` may be used in runtime configuration or human-readable names, but they are not accepted as `environment_type` values by the current schema.

These values must not be treated as interchangeable until the naming convention is agreed.

The following decisions remain open:

- Stable-identifier grammar and uniqueness scope.
- Whether definition versions follow semantic versioning.
- Whether the target is a free-form value or a reference to a separately defined target.
- How environment aliases and renames are handled.

## 6. Configuration and profile references

An environment may reference:

- A project configuration.
- A resource profile.
- A storage profile.
- A database profile.
- Runtime and adapter configurations.
- Evidence and artifact locations.
- An approved secret provider.

References identify declared configuration; they do not establish that the referenced object exists or is usable.

Reference resolution must be distinguishable from structural schema validation.

Possible resolution outcomes include:

- `Resolved`
- `Unresolved`
- `Ambiguous`
- `Incompatible`
- `Inaccessible`
- `Prohibited`

These outcomes are proposed vocabulary and require alignment with the other contract specifications before adoption.

## 7. Environment types and runtime modes

Environment type and runtime mode are separate concepts.

Environment type classifies the intended environment using the canonical values `dev`, `test`, `prod`, or `other`, as defined by the current Environment Contract schema.

Runtime mode selects the intended runtime behavior, such as `development` or `production` mode. Runtime-mode values are distinct from environment-type values and are not governed by the environment-type enumeration.

A valid environment definition must not assume that its environment type determines every runtime setting. Compatibility rules between environment type, runtime mode, deployment target, and applicable policy must be specified separately.

The canonical environment-type values do not, by themselves, establish that an environment has been provisioned, that its runtime configuration is valid, or that deployment is authorized.

## 8. Security and governance

- Secret values must not be stored in the environment definition or committed to source control.
- Secret-provider references must use an approved configuration mechanism.
- Evidence and artifact locations must satisfy applicable client approval and access requirements.
- Adapter selection must not imply adapter availability or authorization.
- A declared deployment target must not imply ownership or permission to modify that target.
- Production environments may require additional policy and approval constraints, which must be defined by the policy contract.
- Unsupported capabilities must be reported explicitly rather than silently simulated.

## 9. Validation requirements

Validation must distinguish the following stages:

1. **Structural validation:** verifies required fields, types, allowed values, and schema constraints.
2. **Reference resolution:** checks whether referenced definitions can be resolved unambiguously.
3. **Compatibility validation:** checks declared relationships between environment type, runtime mode, target, profiles, adapters, and workload requirements.
4. **Policy evaluation:** determines whether the requested use is permitted and whether approval is required.
5. **Operational verification:** checks applicable target, provider, adapter, and access conditions before any authorized operation.

The existence of this contract does not implement these stages.

## 10. Illustrative example

The following is a conceptual example, not an approved schema or a deployable configuration:

```yaml
api_version: holdco.qai/v1alpha1
kind: Environment

metadata:
  namespace: holdco.qai.devops.environments
  name: example-development
  stable_id: ENV-000042
  version: "1.0.0"

spec:
  environment_type: dev
  target_ref: holdco.qai.targets.example_local
  runtime:
    mode: development

  configuration_refs:
    project: holdco.qai.projects.example
    resource_profile: holdco.qai.resources.default
    storage_profile: holdco.qai.storage.example
    database_profile: holdco.qai.databases.example

  constraints: []
```

The identifier, namespace, field names, reference grammar, and referenced objects are illustrative only. This example must not be treated as a valid instance until the final schema and reference conventions are defined.

## 11. Acceptance criteria

The Environment Contract is ready for review when:

- Identity, environment type, target, and runtime concepts are defined.
- Required and optional fields are identified.
- Configuration and profile reference relationships are documented.
- Environment type is distinguished from runtime mode.
- Validation stages and failure outcomes are documented.
- Valid and invalid examples are provided.
- A schema and automated contract tests verify the agreed rules.
- Relationships to existing QAI DevOps manifests and environment-variable bindings are documented.
- The contract does not enable provisioning, mutation, or execution merely by existing.

## 12. Open decisions

1. Final identity and versioning conventions.
2. Canonical target-reference format.
3. Whether adapter selections belong directly in the environment definition or in referenced configuration.
4. How the contract maps to existing environment manifests and environment variables.
5. Cross-contract reference-resolution vocabulary.
6. Schema versioning and compatibility policy.
7. Whether a separate environment registry or catalog is required.

The environment-type enumeration is defined provisionally by the current schema as `dev`, `test`, `prod`, and `other`. The stable-ID format and namespace conventions remain provisional pending cross-contract review.

## 13. Implementation status

This document defines proposed declarative contract semantics. It does not claim that a schema, registry, resolver, validator, provisioning mechanism, or runtime binding implementation exists.

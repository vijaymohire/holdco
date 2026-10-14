# QAI Reference Resolution Design

**Status:** Proposed for review
**Scope:** Design of reference resolution for declarative QAI Deployment and Environment contracts
**Implementation status:** Design only; no resolver or runtime behavior implemented

## 1. Purpose

Define the behavior expected of a future reference resolver for QAI declarative contracts.

The resolver will determine whether a logical reference identifies exactly one resource definition of the expected category within an explicitly defined lookup scope.

This document does not authorize changes to existing manifests, automatic reference conversion, provisioning, or deployment execution.

## 2. Separation of Validation Layers

The reference-validation workflow is divided into distinct stages:

1. **Structural validation:** Validate the contract against its JSON Schema.
2. **Reference syntax validation:** Validate the reference against an approved grammar, once finalized.
3. **Reference resolution:** Determine whether the reference identifies exactly one registered resource.
4. **Category compatibility:** Verify that the resolved resource has the expected category.
5. **Version compatibility:** Apply approved version-selection and compatibility rules.
6. **Authorization:** Evaluate whether the requested operation is permitted.
7. **Execution:** Remains outside the resolver's responsibility.

Passing one stage does not imply passing subsequent stages.

## 3. Resolver Inputs

The proposed resolver input consists of:

- Logical reference.
- Expected resource category.
- Explicit lookup scope or catalog.
- Optional version constraint, once version semantics are approved.

The resolver must not infer a reference from a human-readable label when no mapping rule exists.

## 4. Resolution Outcomes

| Outcome | Meaning |
|---|---|
| `resolved` | Exactly one matching resource was found and passed the applicable resolution checks. |
| `unresolved` | No matching resource was found. |
| `ambiguous` | More than one resource matched the reference within the permitted scope. |
| `incompatible` | A matching resource exists, but its category is incorrect. |
| `version_incompatible` | The resource does not satisfy an applicable, approved version constraint. |
| `invalid_reference` | The reference violates the approved syntax rules. |

These are proposed outcome labels, not implemented API values. Their final representation and precedence rules remain subject to review.

Authorization failures must remain distinguishable from reference-resolution failures.

## 5. Resource Catalog

Resolution must use an explicit catalog or registry whose entries identify resource definitions and their categories.

The catalog representation, registration process, namespace ownership, uniqueness constraints, and relationship between logical references and stable IDs remain open design decisions.

Test fixtures must register their resources explicitly. Illustrative references in documentation must not be treated as registered resources.

## 6. Compatibility With Existing Manifests

Existing manifest labels include:

- `dev`
- `local`
- `default`
- `example-workload`
- `example-plan`

These values must retain their current meaning until explicit mapping or migration rules are approved.

In particular:

- Environment selection must remain distinct from deployment-target selection.
- Environment type `development` must not be silently converted to `dev`.
- Workload names and execution-profile labels must not automatically become logical references.
- A resource profile named `default` must not automatically be treated as a registered configuration object.
- A routing policy label must not automatically be treated as a resolved policy definition.

## 7. Safety and Execution Boundaries

The resolver must be a validation component, not a provisioning engine.

It must not:

- Create or modify resources.
- Execute deployment operations.
- Silently substitute another resource when resolution fails.
- Treat successful resolution as proof of authorization.
- Treat a syntactically valid reference as proof that its target exists.

Resolver tests must operate on isolated fixtures and must not invoke infrastructure operations.

## 8. Proposed Test Coverage

Future resolver tests should cover:

1. A registered reference resolves to exactly one compatible resource.
2. An unknown reference returns `unresolved`.
3. Duplicate matching entries return `ambiguous`.
4. A reference to the wrong resource category returns `incompatible`.
5. Invalid syntax is rejected after the reference grammar is approved.
6. Version mismatches are reported once version rules are approved.
7. Labels without explicit mapping rules are not implicitly resolved.
8. Resolution failure does not trigger execution or silent substitution.

## 9. Open Decisions

1. Canonical reference grammar and case-sensitivity rules.
2. Catalog representation and resource registration.
3. Namespace and lookup-scope boundaries.
4. Logical-reference and stable-ID relationship.
5. Version-selection and compatibility behavior.
6. Final outcome and error representation.
7. Mapping or migration rules for existing manifest labels.

## 10. Acceptance Criteria

- Structural validation remains separate from reference resolution.
- Resolution outcomes distinguish missing, ambiguous, and incompatible resources.
- Test fixtures explicitly register their resource definitions.
- Existing manifests and schemas remain unchanged by this design document.
- No implementation, authorization, provisioning, or execution capability is claimed.

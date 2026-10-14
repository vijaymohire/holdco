# QAI Resource Catalog Design

**Status:** Proposed for review
**Scope:** Catalog entries used by declarative contract reference resolution
**Implementation status:** Design only; no persistent catalog or registry implemented

## 1. Purpose

Define the proposed representation of registered resource definitions used by the QAI reference resolver.

The catalog will provide an explicit lookup source for resolving logical references to resource definitions. It will not provision resources, execute deployments, or grant authorization.

## 2. Proposed Catalog Entry

Each catalog entry should represent one registered resource definition.

| Field | Purpose | Status |
|---|---|---|
| `reference` | Logical identifier used for lookup | Proposed |
| `category` | Resource type, such as `environment`, `workload`, `target`, `policy`, or `configuration` | Proposed |
| `stable_id` | Persistent identity assigned to the resource definition | Proposed |
| `version` | Definition revision used for compatibility checks | Proposed |
| `namespace` | Scope used to organize and constrain lookup | Proposed |

The exact field requirements, identifier grammar, namespace rules, and version semantics remain open for review.

## 3. Identity and Uniqueness

The catalog must distinguish human-readable names, logical references, stable IDs, and versions.

A name must not be assumed globally unique. A logical reference must not be assumed equivalent to a stable ID.

The catalog's uniqueness rules must be defined explicitly. Duplicate logical references within the same lookup scope should not be silently resolved by selecting the first entry.

## 4. Lookup Behavior

The proposed resolver should:

1. Validate the reference input.
2. Search within an explicit catalog and lookup scope.
3. Identify matching entries.
4. Return `unresolved` if no entry matches.
5. Return `ambiguous` if multiple entries match.
6. Check the expected resource category.
7. Apply version compatibility rules once those rules are approved.

The final precedence of ambiguity, category, and version checks remains to be specified.

## 5. Catalog Lifecycle

The initial test catalog should be in memory and explicitly populated by each test fixture.

Persistent storage, catalog synchronization, registration workflows, updates, deletion, and concurrent access are outside the initial implementation scope.

## 6. Compatibility With Existing QAI Manifests

Existing values such as `dev`, `local`, `default`, `example-workload`, and `example-plan` remain labels until explicit mapping rules are approved.

The catalog must not treat illustrative references from documentation as registered resources.

## 7. Safety Boundaries

Catalog lookup must remain separate from:

- Authorization and policy evaluation.
- Approval workflows.
- Infrastructure provisioning.
- Deployment execution.
- Automatic migration of existing manifests.

Successful reference resolution establishes only that a matching catalog entry was found and passed the applicable resolution checks.

## 8. Proposed Test Coverage

Future catalog tests should cover:

1. Registration of a valid entry.
2. Lookup of a registered reference.
3. Duplicate-reference handling within a lookup scope.
4. Category compatibility.
5. Stable-ID validation after its format is defined.
6. Version compatibility after version rules are defined.
7. Namespace isolation after scope rules are defined.
8. Rejection of invalid catalog entries.

## 9. Open Decisions

1. Canonical logical-reference grammar.
2. Required catalog fields.
3. Stable-ID format and uniqueness scope.
4. Namespace and lookup-scope rules.
5. Version-selection and compatibility semantics.
6. Catalog registration and update lifecycle.
7. Error representation and validation precedence.

## 10. Acceptance Criteria

- Catalog identity fields are distinct and documented.
- Duplicate handling is explicit.
- Lookup uses a defined scope.
- Existing manifests and schemas remain unchanged.
- No persistent registry, authorization, provisioning, or execution capability is claimed.

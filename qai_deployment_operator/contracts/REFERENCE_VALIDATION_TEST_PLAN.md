# QAI Reference Validation Test Plan

**Status:** Draft for review
**Scope:** Test design for logical-reference validation across declarative QAI contracts
**Implementation status:** Test plan only; no resolver or runtime changes

## 1. Purpose

Define expected test scenarios for logical references used by Deployment and Environment contracts.

The plan separates structural schema validation from reference resolution, object compatibility, version selection, and authorization.

## 2. Test Layers

| Layer | Purpose | Current status |
|---|---|---|
| Structural validation | Validate required fields, types, enumerations, and patterns | Existing standalone schema tests pass |
| Reference syntax | Validate a proposed reference grammar | Grammar not finalized |
| Reference resolution | Determine whether a referenced object exists | Not implemented |
| Object compatibility | Verify that the resolved object has the expected category | Not implemented |
| Version compatibility | Verify the selected object version | Rules undecided |
| Authorization | Determine whether the requested operation is permitted | Not implemented |
| Execution | Provision or execute a deployment | Outside this test plan's implementation scope |

## 3. Proposed Test Scenarios

| ID | Scenario | Expected outcome | Status |
|---|---|---|---|
| RV-001 | Missing `target_environment_ref` | Structural validation rejects the Deployment | Existing behavior tested |
| RV-002 | Missing `workload_ref` | Structural validation rejects the Deployment | Requires confirmation in existing test cases |
| RV-003 | Missing `policy_ref` | Structural validation rejects the Deployment | Requires confirmation in existing test cases |
| RV-004 | Empty `Environment.spec.target_ref` | Structural validation rejects the Environment | Existing behavior tested |
| RV-005 | Reference points to no registered object | Resolution reports an unresolved reference | Not implemented |
| RV-006 | Reference resolves to multiple objects | Resolution reports ambiguity | Not implemented |
| RV-007 | Environment reference resolves to a non-environment object | Compatibility validation rejects the reference | Not implemented |
| RV-008 | Target reference resolves to a non-target object | Compatibility validation rejects the reference | Not implemented |
| RV-009 | Referenced object has an incompatible version | Version validation reports incompatibility | Version rules undecided |
| RV-010 | Manifest label `dev` is supplied without a mapping rule | No implicit conversion is performed | Policy requirement; implementation not tested |
| RV-011 | Manifest label `local` is supplied without a target mapping | No implicit target resolution is assumed | Policy requirement; implementation not tested |
| RV-012 | Reference exists but requested operation is unauthorized | Authorization rejects the operation | Not implemented |
| RV-013 | Resolution fails | No silent substitution or execution occurs | Not implemented |
| RV-014 | Structurally valid references are supplied | Schema validation does not claim that the references exist | Existing schema boundary |

## 4. Test Fixture Requirements

Future resolution tests should use isolated, explicit fixtures containing:

- A known Environment definition.
- A known deployment-target definition, once its contract is defined.
- A known Workload definition.
- A known configuration definition.
- A known Policy definition.
- Distinct versions where version-selection behavior is tested.
- Deliberate missing and ambiguous references.

Fixture identifiers must be explicitly registered within the test fixture. Illustrative identifiers alone must not be treated as existing objects.

## 5. Test Boundaries

- Existing JSON Schema tests remain independent of resolver tests.
- Resolver tests must not provision resources or execute deployments.
- Authorization tests must remain separate from structural validation.
- Missing, ambiguous, incompatible, and unauthorized references must produce distinguishable outcomes.
- Tests must not assume a canonical reference grammar until it is approved.

## 6. Open Decisions

1. Final logical-reference grammar and namespace rules.
2. Registry or catalog representation.
3. Stable-ID and logical-reference relationship.
4. Version-selection and compatibility rules.
5. Target object contract and identity model.
6. Error representation for unresolved, ambiguous, and incompatible references.
7. Authorization interface and execution boundary.

## 7. Acceptance Criteria

- Each test scenario has an identifiable expected outcome.
- Existing schema behavior is distinguished from proposed future behavior.
- Test fixtures explicitly identify registered objects.
- No resolver, schema, manifest, provisioning, or execution implementation is introduced by this document.

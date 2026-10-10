# Registry Resolver Evidence Contract

## 1. Purpose

This contract defines how the Registry Resolver reference implementation
assesses evidence associated with compatibility and validation decisions.

Evidence assessment is separate from metadata compatibility assessment.
A compatible candidate is not automatically verified or deployment-ready.

## 2. Scope and isolation

This contract applies to the isolated reference implementation:

`reference_implementations/registry_resolver/`

It does not modify or redefine the production registry, existing Bootstrapper,
or other production components.

The evidence evaluator assesses supplied records. It does not independently
retrieve URLs, authenticate documents, execute tests, or validate live
infrastructure.

## 3. Evidence record

Each evidence record must contain the following non-empty fields:

| Field | Meaning |
|---|---|
| evidence_id | Unique identifier for the evidence record within an evaluation |
| evidence_type | Category of evidence, such as test_report or configuration |
| reference | Location or identifier associated with the evidence |
| validation_status | Recorded outcome: PASS, FAIL, or NOT_RUN |

Evidence identifiers must be unique within one evaluation.

References may be repository paths, document identifiers, URLs, or other
locators. A locator alone does not establish authenticity or validity.

## 4. Required evidence types

The caller supplies the evidence types required for a particular evaluation.

Each required type must have at least one record with a passing validation
status for the assessment to be VERIFIED, subject to the failure policy below.

The evaluator does not impose a universal list of evidence types. Requirements
should be defined according to the capability and validation objective.

## 5. Evidence assessment statuses

| Status | Meaning |
|---|---|
| VERIFIED | Every required evidence type has at least one record with PASS, and no required type is missing or unresolved under the implemented policy |
| INSUFFICIENT_INFORMATION | Required evidence is missing, has not passed validation, or no evidence types were required |
| FAILED | A required evidence type has a recorded FAIL result and has no passing record for that type |

Malformed records, duplicate evidence IDs, and unsupported validation statuses
are rejected with errors rather than silently accepted.

## 6. Current multiple-record policy

The evaluator uses a strict fail-closed policy for required evidence types.

If any record for a required evidence type has FAIL, that type fails even when
another record of the same type has PASS. A passing record cannot override a
failed record.

A required type with no failed records is satisfied when at least one record
has PASS. If no record passes and none fails, the type remains unresolved and
the overall result is INSUFFICIENT_INFORMATION unless another required type
has failed.

This policy is intentionally conservative: conflicting validation outcomes
remain visible rather than being hidden by a passing record.

## 7. Compatibility and evidence are separate

Compatibility evaluation answers whether a candidate's declared metadata
satisfies the requested constraints.

Evidence evaluation answers whether supplied evidence records satisfy the
defined evidence requirements according to their recorded validation statuses.

The outcomes must remain separate:

- COMPATIBLE does not imply VERIFIED.
- VERIFIED does not imply COMPATIBLE.
- FAILED evidence must not be hidden by a compatible metadata result.
- Neither result alone proves deployment readiness.

A future integration layer may report both statuses, but must not collapse them
into a single ambiguous status.

## 8. Traceability requirements

A result should preserve:

- Required evidence types.
- Evaluated evidence identifiers and types.
- Evidence references.
- Recorded validation statuses.
- Missing evidence types.
- Unvalidated evidence identifiers.
- Failed evidence identifiers.
- Human-readable findings.

The current evaluator returns these fields for traceability. The references
are carried through from supplied records; their destinations are not
independently checked.

## 9. Validation boundaries

The current implementation does not establish:

- That a referenced document exists.
- That its contents are authentic or untampered.
- That a referenced test was actually executed.
- That a test environment matches the target deployment environment.
- That live infrastructure is operational.
- That a compatible candidate can be deployed successfully.

Those require additional evidence-source validation and, where applicable,
execution-level tests.

## 10. Synthetic test coverage

The evidence test suite exercises:

- Complete passing evidence.
- Missing required evidence.
- Unvalidated evidence.
- Failed evidence.
- Multiple records for one evidence type.
- Empty evidence collections.
- Empty required-evidence requirements.
- Malformed records.
- Duplicate evidence identifiers.
- Unsupported validation statuses.

These tests establish behavior against synthetic records only.

## 11. Integration policy

Before evidence assessment is integrated into the permanent adapter:

1. Preserve the existing compatibility status and findings.
2. Add evidence assessment as a distinct result.
3. Preserve the evidence references and findings.
4. Test compatible candidates with missing or failed evidence.
5. Test incompatible candidates with passing evidence.
6. Confirm that evidence cannot override an incompatible result.
7. Keep the production registry and Bootstrapper unchanged.

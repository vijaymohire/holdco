# Registry Resolver Evidence Reference Validation

## 1. Purpose

This document describes the isolated reference validator used to inspect
evidence references without modifying the referenced resources.

## 2. Scope

Implementation:

`src/Test-RegistryEvidenceReference.ps1`

Tests:

`tests/Test-RegistryEvidenceReference.ps1`

The validator is not yet integrated into the permanent Registry Resolver
adapter.

## 3. Supported reference types

| Reference type | Behavior |
|---|---|
| `file` | Checks whether a local file exists within the declared base directory |
| `http` / `https` | Validates absolute URL syntax only; does not fetch the URL |
| `synthetic` | Accepts synthetic references for testing but does not verify a real resource |
| Other schemes | Returns `INVALID` |

## 4. Result statuses

| Status | Meaning |
|---|---|
| `EXISTS` | Local file exists; if a hash was requested, it matched |
| `MISSING` | Referenced local file does not exist |
| `OUTSIDE_BASE_DIRECTORY` | Normalized file path is outside the declared base directory |
| `INTEGRITY_MISMATCH` | Actual SHA-256 differs from the supplied expected hash |
| `UNVERIFIED` | Reference syntax was accepted, but the remote or synthetic resource was not verified |
| `INVALID` | Reference format or scheme is unsupported or invalid |

Invalid base directories and malformed expected hashes raise errors.

## 5. SHA-256 validation

An optional expected SHA-256 value must contain exactly 64 hexadecimal
characters. When supplied for an existing local file, the validator calculates
the file's SHA-256 and compares it with the expected value.

A matching hash demonstrates agreement with the supplied expected hash. It does
not independently establish who produced the evidence or whether its claims
are true.

## 6. Path containment

The validator normalizes the candidate path and checks that it is inside the
declared base directory before checking file existence or calculating a hash.

Directory traversal using ordinary normalized paths is rejected.

The validator also checks existing path components for the filesystem
`ReparsePoint` attribute. References traversing symbolic links, directory
junctions, or other reparse points are rejected with status
`LINK_NOT_ALLOWED`.

The symbolic-link test successfully created a link to an external file and
confirmed that the validator rejected it. The reference-validation test suite
reported **12 passed and 0 failed**.

This is a defensive path-validation measure, not a complete filesystem
security boundary. Filesystem changes between validation and subsequent file
access may still create time-of-check/time-of-use risks. The validator does
not claim to eliminate those risks.

## 7. Network and mutation boundaries

The validator does not retrieve URLs, execute evidence, or modify evidence
files. File hashes are read-only integrity checks.

## 8. Current test evidence

The local test run reported:

- 11 passed.
- 0 failed.
- Symbolic-link test skipped because of Windows permissions.

The results cover synthetic test fixtures and do not establish deployment
readiness, evidence authenticity, or live infrastructure correctness.

## 9. Integration policy

Before integrating this validator into the permanent adapter:

1. Preserve compatibility and evidence assessment as independent results.
2. Keep the existing evidence evaluator's status policy unchanged.
3. Define how reference-validation results affect evidence reporting.
4. Resolve or explicitly constrain symbolic-link and junction handling.
5. Add adapter integration tests for valid, missing, invalid, and hash-mismatched references.
6. Run the full existing regression suite.
7. Keep the production registry and Bootstrapper unchanged.

# General Factory Registry Resolver — Compatibility Test Matrix

These cases define future expectations. They are not claims that the current
lookup-only resolver passes compatibility evaluation.

| ID | Scenario | Candidate expectation | Request-level expectation |
|---|---|---|---|
| CT-01 | Capability and all constraints match | Compatible | COMPATIBLE |
| CT-02 | No capability candidate in valid registry | No candidate | INCOMPATIBLE |
| CT-03 | Environment explicitly unsupported | Incompatible | INCOMPATIBLE if all candidates fail |
| CT-04 | Requested environment metadata missing | Insufficient information | INSUFFICIENT_INFORMATION if no other candidate passes |
| CT-05 | Execution mode explicitly unsupported | Incompatible | INCOMPATIBLE if all candidates fail |
| CT-06 | Execution mode metadata missing | Insufficient information | INSUFFICIENT_INFORMATION if no other candidate passes |
| CT-07 | Requested version matches | Potentially compatible | Evaluate remaining constraints |
| CT-08 | Version definitively mismatches | Incompatible | INCOMPATIBLE if all candidates fail |
| CT-09 | Required version metadata missing | Insufficient information | INSUFFICIENT_INFORMATION if no other candidate passes |
| CT-10 | All required resources supported | Potentially compatible | Evaluate remaining constraints |
| CT-11 | Required resource explicitly unsupported | Incompatible | INCOMPATIBLE if all candidates fail |
| CT-12 | Resource support metadata missing | Insufficient information | INSUFFICIENT_INFORMATION if no other candidate passes |
| CT-13 | One candidate incompatible, another compatible | Mixed results | COMPATIBLE |
| CT-14 | One candidate incompatible, another unresolved | Mixed results | INSUFFICIENT_INFORMATION |
| CT-15 | All candidates incompatible | All incompatible | INCOMPATIBLE |
| CT-16 | Registry JSON malformed | Processing error | No compatibility status fabricated |
| CT-17 | Registry lacks bindings collection | Processing error | No compatibility status fabricated |
| CT-18 | Optional request constraint omitted | Not requested | Evaluate remaining mandatory constraints |
| CT-19 | CPU supported but required GPU explicitly unsupported | Incompatible | INCOMPATIBLE if all candidates fail |
| CT-20 | Candidate metadata conflicting or ambiguous | Unresolved or validation error | Define policy before implementation |

## Execution policy

1. Use synthetic registry fixtures only.
2. Do not write to the production registry.
3. Do not modify the resolver while defining expected outcomes.
4. Compare actual behavior with the adopted contract.
5. Keep metadata compatibility separate from live deployment validation.

## Current implementation limitation

The current baseline resolver filters candidates by capability and returns
INSUFFICIENT_INFORMATION. It does not evaluate environment, execution mode,
implementation version, or required resources.

CT-01 through CT-20 are specifications for future implementation, not tests
that should all pass against the current resolver.

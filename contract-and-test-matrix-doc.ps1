
$ErrorActionPreference = "Stop"

$Root = "E:\Bhadale IT\github\holdco"
$Docs = Join-Path $Root "general_factory\reference_implementations\registry_resolver\docs"

if (-not (Test-Path -LiteralPath $Root -PathType Container)) {
    throw "Repository root not found: $Root"
}
if (-not (Test-Path -LiteralPath $Docs -PathType Container)) {
    throw "Documentation directory not found: $Docs"
}

$ContractPath = Join-Path $Docs "compatibility-contract.md"
$MatrixPath = Join-Path $Docs "compatibility-test-matrix.md"

if (-not (Test-Path -LiteralPath $ContractPath -PathType Leaf)) {
@'
# General Factory Registry Resolver — Compatibility Contract

## 1. Purpose

Define the intended compatibility-evaluation rules for the isolated Registry
Resolver reference implementation. This is a proposed contract, not evidence
that the current resolver implements these rules.

## 2. Resolution outcomes

### COMPATIBLE
At least one candidate matches the requested capability, all mandatory
constraints are evaluated, and every mandatory constraint passes.

### INCOMPATIBLE
A valid registry establishes that no candidate matches the capability, or
all matching candidates demonstrably fail at least one mandatory constraint.

Missing information alone is not proof of incompatibility.

### INSUFFICIENT_INFORMATION
A candidate exists, but one or more mandatory checks cannot be evaluated
because relevant information is missing, ambiguous, or undefined.

Invalid JSON or a malformed registry should produce a processing or
validation error, not a fabricated compatibility decision.

## 3. Request attributes

The current request schema defines:
- request_id
- framework_capability_id
- environment
- execution_mode
- implementation_version
- required_resources

Only request_id and framework_capability_id are currently required by that
schema. Optional request attributes should constrain resolution when supplied.
The treatment of missing registry metadata must be defined explicitly.

## 4. Compatibility dimensions

### Capability
Candidates must match framework_capability_id.

### Environment
If an environment is requested, candidate support must be established.
Explicitly unsupported environments are incompatible. Missing support
metadata yields insufficient information.

### Execution mode
If an execution mode is requested, candidate support must be established.
Do not infer support for virtual, simulation, emulation, or physical execution
from another mode unless the registry contract explicitly permits it.

### Implementation version
Define version comparison rules before implementation. Distinguish a match,
a definite mismatch, missing version metadata, and an invalid version value.
Version ranges and prerelease rules remain open decisions.

### Required resources
Every requested resource must be supported by the candidate or by a documented
resource-resolution mechanism. Missing resource metadata is insufficient
information unless a different interpretation is explicitly adopted.

## 5. Candidate aggregation

For each candidate:
- Any proven mandatory constraint failure means incompatible.
- No proven failure but at least one unevaluated mandatory constraint means
  insufficient information.
- All mandatory constraints passing means compatible.

For the overall request:
- Any compatible candidate means COMPATIBLE.
- No compatible candidate, but at least one unresolved candidate, means
  INSUFFICIENT_INFORMATION.
- All candidates proven incompatible, or no matching candidate in a valid
  registry, means INCOMPATIBLE.

The empty-registry outcome is a proposed future contract change: the current
lookup-only resolver may still report INSUFFICIENT_INFORMATION.

## 6. Evidence and diagnostics

Results should explain the requested capability, candidates considered,
constraint outcomes, missing information, and supporting registry evidence.
Diagnostics must distinguish missing evidence from evidence of failure.

## 7. Scope and safeguards

This contract applies to the isolated reference implementation only.
It does not authorize changes to the production registry or Bootstrapper.
A metadata compatibility result does not prove that an external service is
live, deployed, or operationally ready.

## 8. Open decisions

Before implementation, define:
1. Allowed environment values and their semantics.
2. Allowed execution modes and their semantics.
3. Version comparison policy.
4. Resource names and resource-provider semantics.
5. Treatment of omitted optional request attributes.
6. Handling of duplicate or conflicting candidates.
7. Overall outcome when multiple candidates have different results.
8. Mandatory evidence references and processing-error representation.
'@ | Set-Content -LiteralPath $ContractPath -Encoding UTF8
    Write-Host "CREATED: $ContractPath"
}
else {
    Write-Host "PRESERVED existing file: $ContractPath"
}

if (-not (Test-Path -LiteralPath $MatrixPath -PathType Leaf)) {
@'
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
'@ | Set-Content -LiteralPath $MatrixPath -Encoding UTF8
    Write-Host "CREATED: $MatrixPath"
}
else {
    Write-Host "PRESERVED existing file: $MatrixPath"
}

Write-Host ""
Write-Host "=== Verification ==="
Get-Item -LiteralPath $ContractPath, $MatrixPath |
    Select-Object Name, Length |
    Format-Table -AutoSize

Write-Host "No resolver source, production registry, or Bootstrapper was modified."

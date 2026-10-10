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

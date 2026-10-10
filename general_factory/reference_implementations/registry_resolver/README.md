# General Factory Registry Resolver

## Purpose

An isolated reference implementation for resolving deployment
requirements against registered Factory implementation bindings.

## Architectural boundary

- General Framework defines WHAT.
- General Factory implements HOW.
- Registry records implementation bindings.
- Resolver evaluates compatibility and binding availability.
- Bootstrapper composes and prepares deployments.

## Initial scope

1. Read a runtime binding registry.
2. Accept a requested capability.
3. Evaluate whether a matching binding is registered.
4. Return a structured resolution result.
5. Preserve unresolved requirements as explicit findings.

## Resolution statuses

- COMPATIBLE: required checks pass.
- INCOMPATIBLE: a defined constraint is violated.
- INSUFFICIENT_INFORMATION: required information or a binding is missing.

## Safety boundary

This reference implementation is read-only with respect to its inputs.
It does not invoke runners, deploy resources, access credentials,
contact external services, or execute quantum workloads.

## Initial limitations

The first implementation does not yet resolve Framework contracts,
profile compatibility, package dependencies, resource availability,
or execution backends.

An empty registry must result in an unresolved binding, not an
invented implementation.

## Existing sources

The existing General Factory registry remains authoritative for its
registered bindings. This reference implementation does not replace it.

## Development sequence

1. Define request and result contracts.
2. Implement read-only registry loading.
3. Resolve registered capability bindings.
4. Add deterministic tests.
5. Expand compatibility checks.
6. Propose integration with the Bootstrapper separately.

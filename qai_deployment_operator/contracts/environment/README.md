# Environment Contract

This directory contains the initial declarative environment contract and its structural validation assets.

## Files

- `ENVIRONMENT_CONTRACT_SPEC.md` — proposed contract semantics, validation boundaries, illustrative example, and open design decisions.
- `environment.schema.json` — JSON Schema Draft 2020-12 definition for structural validation.
- `test_environment_schema.py` — standalone tests for schema validity and representative valid and invalid environment definitions.

## Run Validation Tests

From the HoldCo repository root:

```powershell
python ".\qai_deployment_operator\contracts\environment\test_environment_schema.py"
```

Validate JSON syntax:

```powershell
python -m json.tool ".\qai_deployment_operator\contracts\environment\environment.schema.json" > $null
```

## Scope and Limitations

The schema validates environment-definition structure and selected field constraints. It does not implement logical-reference resolution, authorization, policy evaluation, provider validation, environment provisioning, or runtime binding.

Environment identifiers, namespaces, types, and references in examples are illustrative. Passing structural validation does not establish that referenced objects exist, that the environment is available, or that an operation is authorized.

The environment-type enumeration and stable-identifier convention remain provisional pending cross-contract review.

## Implementation Status

Initial declarative specification, JSON Schema, and standalone structural tests are present. Runtime binding, reference resolution, and operational validation remain unimplemented.

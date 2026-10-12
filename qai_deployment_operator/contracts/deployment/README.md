# Deployment Contract

This directory contains the initial declarative deployment contract and its structural validation assets.

## Files

- `DEPLOYMENT_CONTRACT_SPEC.md` — proposed contract structure, validation rules, processing boundaries, and open design decisions.
- `deployment.schema.json` — JSON Schema Draft 2020-12 definition for structural validation.
- `test_deployment_schema.py` — tests schema validity and representative valid and invalid deployment requests.

## Run Validation Tests

From the HoldCo repository root:

```powershell
python ".\qai_deployment_operator\contracts\deployment\test_deployment_schema.py"
```

The test script checks the schema definition and six representative request cases.

## Scope and Limitations

The schema validates request structure and selected field constraints. It does not implement logical-reference resolution, authorization, policy evaluation, secret scanning, resource provisioning, or deployment execution.

The identifiers and references in test fixtures are illustrative; passing structural validation does not establish that referenced resources exist or that an operation is authorized.

This is an initial Phase 2 contract artifact, not a production deployment engine.

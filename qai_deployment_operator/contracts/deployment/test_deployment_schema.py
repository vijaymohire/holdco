import json
from pathlib import Path

from jsonschema import Draft202012Validator, FormatChecker

schema_path = Path(__file__).with_name("deployment.schema.json")

with schema_path.open("r", encoding="utf-8") as file:
    schema = json.load(file)

# Check that the schema itself uses valid Draft 2020-12 keywords.
Draft202012Validator.check_schema(schema)
validator = Draft202012Validator(schema, format_checker=FormatChecker())

valid_request = {
    "api_version": "holdco.qai/v1alpha1",
    "kind": "Deployment",
    "metadata": {
        "namespace": "holdco.qai.deployments",
        "name": "example_deployment",
        "stable_id": "DPL-000073",
        "version": "1.0.0"
    },
    "spec": {
        "target_environment_ref": "holdco.qai.devops.environments.development_local",
        "workload_ref": "holdco.qai.workloads.example_workload",
        "requested_operation": "deploy",
        "configuration_refs": [
            "holdco.qai.devops.configurations.example_app_dev"
        ],
        "execution_mode": "plan",
        "policy_ref": "holdco.qai.devops.policies.default_deployment"
    }
}

tests = [
    ("valid planning request", valid_request, True),
]

missing_reference = json.loads(json.dumps(valid_request))
del missing_reference["spec"]["target_environment_ref"]
tests.append(("missing required reference", missing_reference, False))

unsupported_mode = json.loads(json.dumps(valid_request))
unsupported_mode["spec"]["execution_mode"] = "immediate"
tests.append(("unsupported execution mode", unsupported_mode, False))

unexpected_field = json.loads(json.dumps(valid_request))
unexpected_field["spec"]["unexpected_field"] = "not_allowed"
tests.append(("unexpected field", unexpected_field, False))

duplicate_config_refs = json.loads(json.dumps(valid_request))
duplicate_config_refs["spec"]["configuration_refs"] = [
    "holdco.qai.devops.configurations.example_app_dev",
    "holdco.qai.devops.configurations.example_app_dev"
]
tests.append((
    "duplicate configuration references",
    duplicate_config_refs,
    False
))

invalid_stable_id = json.loads(json.dumps(valid_request))
invalid_stable_id["metadata"]["stable_id"] = "DPL-ABC123"
tests.append((
    "invalid stable ID",
    invalid_stable_id,
    False
))

failed = False

for name, request, should_pass in tests:
    errors = list(validator.iter_errors(request))
    passed = not errors
    outcome_matches = passed == should_pass

    print(f"[{'PASS' if outcome_matches else 'FAIL'}] {name}")

    if errors:
        for error in errors:
            print(f"       {error.message}")

    if not outcome_matches:
        failed = True

if failed:
    raise SystemExit("One or more schema tests failed.")

print("Schema structure and all test cases passed.")

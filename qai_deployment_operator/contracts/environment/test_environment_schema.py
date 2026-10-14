
import json
from copy import deepcopy
from pathlib import Path

from jsonschema import Draft202012Validator, FormatChecker

schema_path = Path(__file__).with_name("environment.schema.json")

with schema_path.open("r", encoding="utf-8") as file:
    schema = json.load(file)

Draft202012Validator.check_schema(schema)
validator = Draft202012Validator(schema, format_checker=FormatChecker())

valid_environment = {
    "api_version": "holdco.qai/v1alpha1",
    "kind": "Environment",
    "metadata": {
        "namespace": "holdco.qai.devops.environments",
        "name": "example-development",
        "stable_id": "ENV-000042",
        "version": "1.0.0"
    },
    "spec": {
        "environment_type": "dev",
        "target_ref": "holdco.qai.targets.example_local",
        "runtime": {
            "mode": "development"
        },
        "configuration_refs": {
            "project": "holdco.qai.projects.example",
            "resource_profile": "holdco.qai.resources.default",
            "storage_profile": "holdco.qai.storage.example",
            "database_profile": "holdco.qai.databases.example"
        },
        "constraints": []
    }
}

tests = [
    ("valid dev environment", valid_environment, True),
]

missing_target = deepcopy(valid_environment)
del missing_target["spec"]["target_ref"]
tests.append(("missing required target reference", missing_target, False))

unsupported_kind = deepcopy(valid_environment)
unsupported_kind["kind"] = "Deployment"
tests.append(("unsupported kind", unsupported_kind, False))

unsupported_environment_type = deepcopy(valid_environment)
unsupported_environment_type["spec"]["environment_type"] = "experimental-prod"
tests.append((
    "unsupported environment type",
    unsupported_environment_type,
    False
))

unexpected_field = deepcopy(valid_environment)
unexpected_field["spec"]["unexpected_field"] = "not_allowed"
tests.append(("unexpected specification field", unexpected_field, False))

invalid_stable_id = deepcopy(valid_environment)
invalid_stable_id["metadata"]["stable_id"] = "ENV-ABC123"
tests.append(("invalid stable ID format", invalid_stable_id, False))

missing_runtime_mode = deepcopy(valid_environment)
del missing_runtime_mode["spec"]["runtime"]["mode"]
tests.append(("missing runtime mode", missing_runtime_mode, False))

empty_target_reference = deepcopy(valid_environment)
empty_target_reference["spec"]["target_ref"] = ""
tests.append(("empty target reference", empty_target_reference, False))

failed = False

for name, environment, should_pass in tests:
    errors = list(validator.iter_errors(environment))
    passed = not errors
    outcome_matches = passed == should_pass

    print(f"[{'PASS' if outcome_matches else 'FAIL'}] {name}")

    if errors:
        for error in errors:
            print(f"       {error.message}")

    if not outcome_matches:
        failed = True

if failed:
    raise SystemExit("One or more environment schema tests failed.")

print("Environment schema structure and all test cases passed.")

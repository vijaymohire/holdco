"""Isolated tests for logical reference resolution.

This module does not load manifests, provision resources, authorize
operations, or execute deployments.
"""

from dataclasses import dataclass
from typing import Iterable


@dataclass(frozen=True)
class Resource:
    """A resource explicitly registered in the test catalog."""

    reference: str
    category: str
    stable_id: str
    version: str

def validate_resource_registration(resource: Resource) -> str | None:
    """Validate required catalog entry fields.

    Returns None for a valid entry or an error code for invalid input.
    This checks entry fields only, not catalog-wide uniqueness.
    """
    if not isinstance(resource, Resource):
        return "invalid_resource"

    for value in (
        resource.reference,
        resource.category,
        resource.stable_id,
        resource.version,
    ):
        if not isinstance(value, str) or not value.strip():
            return "invalid_resource"

    return None

@dataclass(frozen=True)
class ResolutionResult:
    """Result of a reference lookup."""

    status: str
    resource: Resource | None = None


def resolve_reference(
    reference: str,
    expected_category: str,
    catalog: Iterable[Resource],
) -> ResolutionResult:
    """Resolve an exact reference within an explicit catalog.

    Reject empty or incorrectly typed inputs. This function performs
    no I/O and has no execution side effects.
    """
    if not isinstance(reference, str) or not reference.strip():
        return ResolutionResult(status="invalid_reference")

    if not isinstance(expected_category, str) or not expected_category.strip():
        return ResolutionResult(status="invalid_reference")

    matches = [
        resource
        for resource in catalog
        if resource.reference == reference
    ]

    if not matches:
        return ResolutionResult(status="unresolved")

    if len(matches) > 1:
        return ResolutionResult(status="ambiguous")

    resource = matches[0]

    if resource.category != expected_category:
        return ResolutionResult(status="incompatible")

    return ResolutionResult(status="resolved", resource=resource)


def run_tests() -> None:
    environment = Resource(
        reference="test.environments.dev",
        category="environment",
        stable_id="ENV-TEST-001",
        version="1.0.0",
    )
    workload = Resource(
        reference="test.workloads.example",
        category="workload",
        stable_id="WRK-TEST-001",
        version="1.0.0",
    )

    registration_tests = [
        (
            "valid resource registration",
            Resource(
                reference="test.environments.dev",
                category="environment",
                stable_id="ENV-TEST-010",
                version="1.0.0",
            ),
            None,
        ),
        (
            "empty resource reference",
            Resource(
                reference="",
                category="environment",
                stable_id="ENV-TEST-011",
                version="1.0.0",
            ),
            "invalid_resource",
        ),
        (
            "empty resource category",
            Resource(
                reference="test.environments.test",
                category="",
                stable_id="ENV-TEST-012",
                version="1.0.0",
            ),
            "invalid_resource",
        ),
        (
            "empty stable ID",
            Resource(
                reference="test.environments.test",
                category="environment",
                stable_id="",
                version="1.0.0",
            ),
            "invalid_resource",
        ),
        (
            "empty version",
            Resource(
                reference="test.environments.test",
                category="environment",
                stable_id="ENV-TEST-013",
                version="",
            ),
            "invalid_resource",
        ),
    ]

    for name, resource, expected_error in registration_tests:
        actual_error = validate_resource_registration(resource)
        passed = actual_error == expected_error
        print(f"[{'PASS' if passed else 'FAIL'}] registration: {name}")

        if not passed:
            print(
                f"       Expected: {expected_error}; "
                f"actual: {actual_error}"
            )
            failed = True


    tests = [
        (
            "unique matching resource",
            "test.environments.dev",
            "environment",
            [environment],
            "resolved",
        ),
        (
            "unknown reference",
            "test.environments.missing",
            "environment",
            [environment],
            "unresolved",
        ),
        (
            "ambiguous reference",
            "test.environments.dev",
            "environment",
            [
                environment,
                Resource(
                    reference="test.environments.dev",
                    category="environment",
                    stable_id="ENV-TEST-002",
                    version="1.0.0",
                ),
            ],
            "ambiguous",
        ),
        (
            "wrong resource category",
            "test.workloads.example",
            "environment",
            [workload],
            "incompatible",
        ),
        (
            "empty reference",
            "",
            "environment",
            [environment],
            "invalid_reference",
        ),
        (
            "whitespace-only reference",
            "   ",
            "environment",
            [environment],
            "invalid_reference",
        ),
    ]

    failed = False

    for name, reference, category, catalog, expected_status in tests:
        result = resolve_reference(reference, category, catalog)
        passed = result.status == expected_status

        print(f"[{'PASS' if passed else 'FAIL'}] {name}")

        if not passed:
            print(
                f"       Expected: {expected_status}; "
                f"actual: {result.status}"
            )
            failed = True

    if failed:
        raise SystemExit("One or more resolver tests failed.")

    print("Reference resolution tests passed.")


if __name__ == "__main__":
    run_tests()

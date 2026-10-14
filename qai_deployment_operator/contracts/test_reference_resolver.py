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
    )
    workload = Resource(
        reference="test.workloads.example",
        category="workload",
    )

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

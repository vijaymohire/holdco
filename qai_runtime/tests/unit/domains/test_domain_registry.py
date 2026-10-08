from qai_runtime.domains.models import DomainDescriptor
from qai_runtime.domains.registry.registry import DomainRegistry


def test_domain_registry():
    registry = DomainRegistry()

    domain = DomainDescriptor(
        domain_id="hpc",
        name="High Performance Computing",
    )

    registry.register(domain)

    assert registry.get("hpc") == domain

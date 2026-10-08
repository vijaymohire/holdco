from typing import Dict, Iterable, Optional

from qai_runtime.domains.models import DomainDescriptor


class DomainRegistry:
    """In-memory registry for logical Runtime domains."""

    def __init__(self) -> None:
        self._domains: Dict[str, DomainDescriptor] = {}

    def register(self, domain: DomainDescriptor) -> None:
        self._domains[domain.domain_id] = domain

    def get(self, domain_id: str) -> Optional[DomainDescriptor]:
        return self._domains.get(domain_id)

    def list(self) -> Iterable[DomainDescriptor]:
        return self._domains.values()

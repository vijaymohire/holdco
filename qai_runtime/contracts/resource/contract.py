from typing import Protocol, Sequence

from qai_runtime.models.resource.models import (
    ResourceRequirement,
    ResourceProfile,
)


class ResourceContract(Protocol):
    def discover(self) -> Sequence[ResourceProfile]:
        ...

    def match(
        self,
        requirement: ResourceRequirement,
    ) -> Sequence[ResourceProfile]:
        ...

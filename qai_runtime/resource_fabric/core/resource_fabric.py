from typing import List

from qai_runtime.models.resource.models import (
    ResourceProfile,
    ResourceRequirement,
)


class QAIResourceFabric:
    """Initial provider-neutral resource discovery boundary."""

    def __init__(self) -> None:
        self._resources: List[ResourceProfile] = []

    def register(self, resource: ResourceProfile) -> None:
        self._resources.append(resource)

    def discover(self) -> List[ResourceProfile]:
        return list(self._resources)

    def match(
        self,
        requirement: ResourceRequirement,
    ) -> List[ResourceProfile]:

        return [
            resource
            for resource in self._resources
            if resource.resource_type == requirement.resource_type
            and all(
                capability in resource.capabilities
                for capability in requirement.capabilities
            )
        ]

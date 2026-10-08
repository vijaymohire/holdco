from qai_runtime.resource_fabric.core.resource_fabric import QAIResourceFabric
from qai_runtime.models.resource.models import (
    ResourceProfile,
    ResourceRequirement,
)


def test_resource_matching():
    fabric = QAIResourceFabric()

    fabric.register(
        ResourceProfile(
            profile_id="cpu-1",
            resource_type="cpu",
            capabilities=["python", "local"],
        )
    )

    requirement = ResourceRequirement(
        resource_type="cpu",
        capabilities=["python"],
    )

    matches = fabric.match(requirement)

    assert len(matches) == 1
    assert matches[0].profile_id == "cpu-1"

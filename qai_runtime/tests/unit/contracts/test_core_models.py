from qai_runtime.models.workload.models import Workload
from qai_runtime.models.execution.models import (
    ExecutionRequest,
    ExecutionMode,
)
from qai_runtime.models.resource.models import ResourceProfile
from qai_runtime.domains.models import DomainDescriptor


def test_workload_model():
    workload = Workload(
        workload_id="w1",
        name="Example",
        domain="example",
    )

    assert workload.workload_id == "w1"
    assert workload.domain == "example"


def test_execution_request():
    request = ExecutionRequest(
        workload_id="w1",
        mode=ExecutionMode.SIMULATION,
    )

    assert request.workload_id == "w1"
    assert request.mode == ExecutionMode.SIMULATION


def test_resource_profile():
    profile = ResourceProfile(
        profile_id="cpu-local",
        resource_type="cpu",
        capabilities=["python"],
    )

    assert "python" in profile.capabilities


def test_domain_descriptor():
    domain = DomainDescriptor(
        domain_id="quantum-computing",
        name="Quantum Computing",
    )

    assert domain.domain_id == "quantum-computing"

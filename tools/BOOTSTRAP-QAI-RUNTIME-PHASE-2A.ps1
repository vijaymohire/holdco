#requires -Version 5.1

<#
============================================================
 QAI Runtime Phase 2A - Runtime Core Contracts
============================================================

Purpose:
    Establish the first implementation skeleton for the
    native QAI Runtime Core.

Phase:
    2A - QAI Runtime Core Contracts

Creates:
    - Runtime domain models
    - Runtime contracts
    - Domain foundation
    - Runtime component implementation skeletons
    - Unit-test foundation
    - Contract documentation

Design principles:
    - Provider-neutral
    - Contract-first
    - Resource/backend separation
    - Domains separate from resources
    - Existing General Factory implementations are reused
      through interfaces rather than duplicated
    - No provider-specific execution implementation
    - No Deployment Operator implementation

Existing structures are preserved.
============================================================
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$Root = Get-Location

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " QAI Runtime Phase 2A - Runtime Core Contracts" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

function Ensure-Directory {
    param(
        [Parameter(Mandatory = $true)]
        [string]$RelativePath
    )

    $FullPath = Join-Path $Root $RelativePath

    if (-not (Test-Path -LiteralPath $FullPath)) {
        New-Item -ItemType Directory -Path $FullPath -Force | Out-Null
        Write-Host "[DIR+ ] $RelativePath" -ForegroundColor Green
    }
    else {
        Write-Host "[DIR= ] $RelativePath" -ForegroundColor DarkGray
    }
}

function Ensure-File {
    param(
        [Parameter(Mandatory = $true)]
        [string]$RelativePath,

        [AllowEmptyString()]
        [string]$Content = ""
    )

    $FullPath = Join-Path $Root $RelativePath
    $Parent = Split-Path -Parent $FullPath

    if (-not (Test-Path -LiteralPath $Parent)) {
        New-Item -ItemType Directory -Path $Parent -Force | Out-Null
    }

    if (-not (Test-Path -LiteralPath $FullPath)) {
        Set-Content -LiteralPath $FullPath -Value $Content -Encoding UTF8
        Write-Host "[FILE+] $RelativePath" -ForegroundColor Green
    }
    else {
        Write-Host "[FILE=] $RelativePath" -ForegroundColor DarkGray
    }
}

# ============================================================
# Phase 2A directory foundation
# ============================================================

$Directories = @(
    "qai_runtime\models",
    "qai_runtime\models\workload",
    "qai_runtime\models\execution",
    "qai_runtime\models\resource",
    "qai_runtime\models\routing",
    "qai_runtime\models\result",
    "qai_runtime\models\evidence",
    "qai_runtime\models\lifecycle",

    "qai_runtime\domains",
    "qai_runtime\domains\_templates",
    "qai_runtime\domains\registry",

    "qai_runtime\os\core",
    "qai_runtime\hub\registry",
    "qai_runtime\hub\discovery",
    "qai_runtime\router\core",
    "qai_runtime\planner\interfaces",
    "qai_runtime\optimiser\interfaces",
    "qai_runtime\gateway\core",
    "qai_runtime\resource_fabric\core",

    "qai_runtime\contracts\workload",
    "qai_runtime\contracts\execution",
    "qai_runtime\contracts\resource",
    "qai_runtime\contracts\routing",
    "qai_runtime\contracts\result",
    "qai_runtime\contracts\evidence",
    "qai_runtime\contracts\lifecycle",

    "qai_runtime\tests\unit\contracts",
    "qai_runtime\tests\unit\models",
    "qai_runtime\tests\unit\domains",
    "qai_runtime\tests\unit\core"
)

Write-Host ""
Write-Host "------------------------------------------------------------"
Write-Host " Phase 2A Directory Foundation"
Write-Host "------------------------------------------------------------"

foreach ($Directory in $Directories) {
    Ensure-Directory $Directory
}

# ============================================================
# Package initialization
# ============================================================

$InitFiles = @(
    "qai_runtime\models\__init__.py",
    "qai_runtime\models\workload\__init__.py",
    "qai_runtime\models\execution\__init__.py",
    "qai_runtime\models\resource\__init__.py",
    "qai_runtime\models\routing\__init__.py",
    "qai_runtime\models\result\__init__.py",
    "qai_runtime\models\evidence\__init__.py",
    "qai_runtime\models\lifecycle\__init__.py",

    "qai_runtime\domains\__init__.py",
    "qai_runtime\domains\registry\__init__.py",

    "qai_runtime\os\__init__.py",
    "qai_runtime\os\core\__init__.py",

    "qai_runtime\hub\__init__.py",
    "qai_runtime\hub\registry\__init__.py",
    "qai_runtime\hub\discovery\__init__.py",

    "qai_runtime\router\__init__.py",
    "qai_runtime\router\core\__init__.py",

    "qai_runtime\planner\__init__.py",
    "qai_runtime\planner\interfaces\__init__.py",

    "qai_runtime\optimiser\__init__.py",
    "qai_runtime\optimiser\interfaces\__init__.py",

    "qai_runtime\gateway\__init__.py",
    "qai_runtime\gateway\core\__init__.py",

    "qai_runtime\resource_fabric\__init__.py",
    "qai_runtime\resource_fabric\core\__init__.py"
)

Write-Host ""
Write-Host "------------------------------------------------------------"
Write-Host " Python Package Foundation"
Write-Host "------------------------------------------------------------"

foreach ($File in $InitFiles) {
    Ensure-File $File ""
}

# ============================================================
# Core domain models
# ============================================================

$WorkloadModel = @'
from dataclasses import dataclass, field
from typing import Any, Dict, Optional


@dataclass(frozen=True)
class Workload:
    """Logical workload submitted to the QAI Runtime."""

    workload_id: str
    name: str
    domain: str
    payload: Any = None
    metadata: Dict[str, Any] = field(default_factory=dict)
    priority: int = 0
    description: Optional[str] = None
'@

Ensure-File "qai_runtime\models\workload\models.py" $WorkloadModel

$ExecutionModel = @'
from dataclasses import dataclass, field
from enum import Enum
from typing import Any, Dict, Optional


class ExecutionMode(str, Enum):
    SIMULATION = "simulation"
    EMULATION = "emulation"
    PHYSICAL = "physical"


class ExecutionStatus(str, Enum):
    CREATED = "created"
    PLANNED = "planned"
    ROUTED = "routed"
    RUNNING = "running"
    COMPLETED = "completed"
    FAILED = "failed"
    CANCELLED = "cancelled"


@dataclass(frozen=True)
class ExecutionRequest:
    """Execution intent submitted to the Runtime."""

    workload_id: str
    mode: ExecutionMode = ExecutionMode.SIMULATION
    resource_profile: Optional[str] = None
    backend: Optional[str] = None
    parameters: Dict[str, Any] = field(default_factory=dict)


@dataclass(frozen=True)
class ExecutionPlan:
    """Provider-neutral execution plan."""

    plan_id: str
    workload_id: str
    steps: list
    metadata: Dict[str, Any] = field(default_factory=dict)


@dataclass
class ExecutionContext:
    """Runtime state associated with one execution."""

    execution_id: str
    workload_id: str
    status: ExecutionStatus = ExecutionStatus.CREATED
    metadata: Dict[str, Any] = field(default_factory=dict)
'@

Ensure-File "qai_runtime\models\execution\models.py" $ExecutionModel

$ResourceModel = @'
from dataclasses import dataclass, field
from typing import Dict, List, Optional


@dataclass(frozen=True)
class ResourceRequirement:
    """Logical resource requirements for a workload."""

    resource_type: str
    quantity: Optional[int] = None
    capabilities: List[str] = field(default_factory=list)
    constraints: Dict[str, str] = field(default_factory=dict)


@dataclass(frozen=True)
class ResourceProfile:
    """Provider-neutral description of a resource capability profile."""

    profile_id: str
    resource_type: str
    capabilities: List[str] = field(default_factory=list)
    capacity: Dict[str, float] = field(default_factory=dict)
    topology: Dict[str, str] = field(default_factory=dict)
    metadata: Dict[str, str] = field(default_factory=dict)
'@

Ensure-File "qai_runtime\models\resource\models.py" $ResourceModel

$RoutingModel = @'
from dataclasses import dataclass, field
from typing import Dict, Optional


@dataclass(frozen=True)
class BackendDescriptor:
    """Provider-neutral description of an execution backend."""

    backend_id: str
    name: str
    backend_type: str
    capabilities: list = field(default_factory=list)
    metadata: Dict[str, str] = field(default_factory=dict)


@dataclass(frozen=True)
class Route:
    """Runtime routing decision."""

    route_id: str
    backend_id: str
    resource_profile: Optional[str] = None
    rationale: Optional[str] = None
    metadata: Dict[str, str] = field(default_factory=dict)
'@

Ensure-File "qai_runtime\models\routing\models.py" $RoutingModel

$ResultModel = @'
from dataclasses import dataclass, field
from typing import Any, Dict, Optional


@dataclass
class ExecutionResult:
    """Normalized result returned by the Runtime."""

    execution_id: str
    status: str
    value: Any = None
    metrics: Dict[str, Any] = field(default_factory=dict)
    backend: Optional[str] = None
    metadata: Dict[str, Any] = field(default_factory=dict)
'@

Ensure-File "qai_runtime\models\result\models.py" $ResultModel

$EvidenceModel = @'
from dataclasses import dataclass, field
from datetime import datetime, timezone
from typing import Any, Dict


@dataclass
class EvidenceRecord:
    """Evidence generated during Runtime execution."""

    execution_id: str
    event_type: str
    timestamp: datetime = field(
        default_factory=lambda: datetime.now(timezone.utc)
    )
    data: Dict[str, Any] = field(default_factory=dict)
'@

Ensure-File "qai_runtime\models\evidence\models.py" $EvidenceModel

$LifecycleModel = @'
from enum import Enum


class RuntimeState(str, Enum):
    CREATED = "created"
    INITIALIZING = "initializing"
    READY = "ready"
    EXECUTING = "executing"
    DEGRADED = "degraded"
    STOPPING = "stopping"
    STOPPED = "stopped"
    FAILED = "failed"
'@

Ensure-File "qai_runtime\models\lifecycle\models.py" $LifecycleModel

# ============================================================
# Contract interfaces
# ============================================================

$WorkloadContract = @'
from typing import Protocol
from qai_runtime.models.workload.models import Workload


class WorkloadContract(Protocol):
    def validate(self, workload: Workload) -> bool:
        """Validate a logical workload."""
        ...
'@

Ensure-File "qai_runtime\contracts\workload\contract.py" $WorkloadContract

$ExecutionContract = @'
from typing import Protocol
from qai_runtime.models.execution.models import (
    ExecutionRequest,
    ExecutionPlan,
    ExecutionContext,
)


class ExecutionContract(Protocol):
    def plan(
        self,
        request: ExecutionRequest,
    ) -> ExecutionPlan:
        ...

    def execute(
        self,
        context: ExecutionContext,
    ):
        ...
'@

Ensure-File "qai_runtime\contracts\execution\contract.py" $ExecutionContract

$ResourceContract = @'
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
'@

Ensure-File "qai_runtime\contracts\resource\contract.py" $ResourceContract

$RoutingContract = @'
from typing import Protocol, Sequence

from qai_runtime.models.routing.models import (
    BackendDescriptor,
    Route,
)


class RoutingContract(Protocol):
    def route(
        self,
        backends: Sequence[BackendDescriptor],
    ) -> Route:
        ...
'@

Ensure-File "qai_runtime\contracts\routing\contract.py" $RoutingContract

$ResultContract = @'
from typing import Protocol

from qai_runtime.models.result.models import ExecutionResult


class ResultContract(Protocol):
    def normalize(
        self,
        result: ExecutionResult,
    ) -> ExecutionResult:
        ...
'@

Ensure-File "qai_runtime\contracts\result\contract.py" $ResultContract

$EvidenceContract = @'
from typing import Protocol

from qai_runtime.models.evidence.models import EvidenceRecord


class EvidenceContract(Protocol):
    def record(
        self,
        evidence: EvidenceRecord,
    ) -> None:
        ...
'@

Ensure-File "qai_runtime\contracts\evidence\contract.py" $EvidenceContract

$LifecycleContract = @'
from typing import Protocol

from qai_runtime.models.lifecycle.models import RuntimeState


class LifecycleContract(Protocol):
    @property
    def state(self) -> RuntimeState:
        ...

    def initialize(self) -> None:
        ...

    def shutdown(self) -> None:
        ...
'@

Ensure-File "qai_runtime\contracts\lifecycle\contract.py" $LifecycleContract

# ============================================================
# Domain foundation
# ============================================================

$DomainsReadme = @'
# QAI Runtime Domains

The `domains` layer identifies the logical problem or workload domain
being addressed by a Runtime workload.

Domains are intentionally separated from:

- resources
- execution backends
- infrastructure providers
- deployment targets

A domain describes WHAT the workload represents.

Examples may include:

- artificial intelligence / machine learning
- quantum computing
- quantum communication
- classical computing
- high-performance computing
- data engineering
- edge / IoT
- client or industry-specific workloads

The domain taxonomy remains extensible and should not be treated as
an infrastructure taxonomy.

Runtime domain descriptors should be resolved through contracts rather
than hard-coded provider implementations.
'@

Ensure-File "qai_runtime\domains\README.md" $DomainsReadme

$DomainModel = @'
from dataclasses import dataclass, field
from typing import Dict, List


@dataclass(frozen=True)
class DomainDescriptor:
    """Logical workload-domain descriptor."""

    domain_id: str
    name: str
    description: str = ""
    capabilities: List[str] = field(default_factory=list)
    metadata: Dict[str, str] = field(default_factory=dict)
'@

Ensure-File "qai_runtime\domains\models.py" $DomainModel

$DomainRegistry = @'
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
'@

Ensure-File "qai_runtime\domains\registry\registry.py" $DomainRegistry

$DomainTemplate = @'
# QAI Runtime Domain Template

Create a domain descriptor here when a logical workload domain
requires Runtime-level registration.

Keep domain definitions independent from:

- physical hardware
- cloud providers
- vendor SDKs
- deployment targets

Use resource profiles and backend adapters for infrastructure concerns.
'@

Ensure-File "qai_runtime\domains\_templates\README.md" $DomainTemplate

# ============================================================
# Runtime Core component skeletons
# ============================================================

$RuntimeCore = @'
from qai_runtime.models.lifecycle.models import RuntimeState


class QAIRuntime:
    """Initial native QAI Runtime lifecycle skeleton."""

    def __init__(self) -> None:
        self._state = RuntimeState.CREATED

    @property
    def state(self) -> RuntimeState:
        return self._state

    def initialize(self) -> None:
        self._state = RuntimeState.READY

    def shutdown(self) -> None:
        self._state = RuntimeState.STOPPED
'@

Ensure-File "qai_runtime\os\core\runtime.py" $RuntimeCore

$HubCore = @'
class QAIHub:
    """Initial Runtime registry/discovery boundary."""

    def __init__(self) -> None:
        self._registries = {}

    def register(self, category: str, identifier: str, value) -> None:
        self._registries.setdefault(category, {})[identifier] = value

    def get(self, category: str, identifier: str):
        return self._registries.get(category, {}).get(identifier)
'@

Ensure-File "qai_runtime\hub\registry\hub.py" $HubCore

$RouterCore = @'
from qai_runtime.models.routing.models import BackendDescriptor, Route


class QAIRouter:
    """Initial provider-neutral routing boundary."""

    def route(self, backend: BackendDescriptor) -> Route:
        return Route(
            route_id=f"route:{backend.backend_id}",
            backend_id=backend.backend_id,
            rationale="Initial contract-level route."
        )
'@

Ensure-File "qai_runtime\router\core\router.py" $RouterCore

$PlannerInterface = @'
from typing import Protocol

from qai_runtime.models.execution.models import (
    ExecutionPlan,
    ExecutionRequest,
)


class PlannerInterface(Protocol):
    """Runtime boundary for General Factory planning implementations."""

    def create_plan(
        self,
        request: ExecutionRequest,
    ) -> ExecutionPlan:
        ...
'@

Ensure-File "qai_runtime\planner\interfaces\planner.py" $PlannerInterface

$OptimiserInterface = @'
from typing import Protocol

from qai_runtime.models.execution.models import ExecutionPlan


class OptimiserInterface(Protocol):
    """Runtime boundary for execution-plan optimisation."""

    def optimise(
        self,
        plan: ExecutionPlan,
    ) -> ExecutionPlan:
        ...
'@

Ensure-File "qai_runtime\optimiser\interfaces\optimiser.py" $OptimiserInterface

$GatewayCore = @'
from typing import Protocol

from qai_runtime.models.execution.models import ExecutionContext


class GatewayInterface(Protocol):
    """Boundary between QAI Runtime and external execution environments."""

    def execute(
        self,
        context: ExecutionContext,
    ):
        ...
'@

Ensure-File "qai_runtime\gateway\core\gateway.py" $GatewayCore

$ResourceFabricCore = @'
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
'@

Ensure-File "qai_runtime\resource_fabric\core\resource_fabric.py" $ResourceFabricCore

# ============================================================
# Tests
# ============================================================

$ContractTests = @'
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
'@

Ensure-File "qai_runtime\tests\unit\contracts\test_core_models.py" $ContractTests

$RuntimeTests = @'
from qai_runtime.os.core.runtime import QAIRuntime
from qai_runtime.models.lifecycle.models import RuntimeState


def test_runtime_lifecycle():
    runtime = QAIRuntime()

    assert runtime.state == RuntimeState.CREATED

    runtime.initialize()

    assert runtime.state == RuntimeState.READY

    runtime.shutdown()

    assert runtime.state == RuntimeState.STOPPED
'@

Ensure-File "qai_runtime\tests\unit\core\test_runtime.py" $RuntimeTests

$ResourceTests = @'
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
'@

Ensure-File "qai_runtime\tests\unit\core\test_resource_fabric.py" $ResourceTests

$DomainTests = @'
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
'@

Ensure-File "qai_runtime\tests\unit\domains\test_domain_registry.py" $DomainTests

# ============================================================
# Documentation
# ============================================================

$PhaseDoc = @'
# Phase 2A — QAI Runtime Core Contracts

Phase 2A establishes the initial implementation vocabulary for the
native QAI Runtime.

## Core model groups

- Workload
- Execution
- Resource
- Routing
- Result
- Evidence
- Lifecycle

## Runtime domains

Domains identify the logical workload/problem area and remain separate
from resources, backends and deployment infrastructure.

## Boundaries

General Factory implementations are consumed through interfaces.

Provider-specific runtimes remain adapters.

The Runtime core remains provider-neutral.

## Current status

This phase establishes contract-level implementation foundations.
It does not yet provide production execution.

Next expected increments:

1. Runtime lifecycle
2. Hub registry/discovery
3. Resource Fabric discovery/allocation
4. Router policy
5. Planner integration
6. Optimiser integration
7. Gateway execution boundary
8. Evidence and result assembly
'@

Ensure-File "qai_runtime\docs\PHASE_2A_STATUS.md" $PhaseDoc

# ============================================================
# Verification
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " Phase 2A Verification" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan

$RequiredPaths = @(
    "qai_runtime\models",
    "qai_runtime\models\workload\models.py",
    "qai_runtime\models\execution\models.py",
    "qai_runtime\models\resource\models.py",
    "qai_runtime\models\routing\models.py",
    "qai_runtime\models\result\models.py",
    "qai_runtime\models\evidence\models.py",
    "qai_runtime\models\lifecycle\models.py",
    "qai_runtime\domains",
    "qai_runtime\domains\models.py",
    "qai_runtime\domains\registry\registry.py",
    "qai_runtime\contracts\workload\contract.py",
    "qai_runtime\contracts\execution\contract.py",
    "qai_runtime\contracts\resource\contract.py",
    "qai_runtime\contracts\routing\contract.py",
    "qai_runtime\contracts\result\contract.py",
    "qai_runtime\contracts\evidence\contract.py",
    "qai_runtime\contracts\lifecycle\contract.py",
    "qai_runtime\os\core\runtime.py",
    "qai_runtime\hub\registry\hub.py",
    "qai_runtime\router\core\router.py",
    "qai_runtime\planner\interfaces\planner.py",
    "qai_runtime\optimiser\interfaces\optimiser.py",
    "qai_runtime\gateway\core\gateway.py",
    "qai_runtime\resource_fabric\core\resource_fabric.py",
    "qai_runtime\tests\unit\contracts\test_core_models.py",
    "qai_runtime\tests\unit\core\test_runtime.py",
    "qai_runtime\tests\unit\core\test_resource_fabric.py",
    "qai_runtime\tests\unit\domains\test_domain_registry.py",
    "qai_runtime\docs\PHASE_2A_STATUS.md"
)

$Verified = 0
$Missing = 0

foreach ($Path in $RequiredPaths) {
    if (Test-Path -LiteralPath (Join-Path $Root $Path)) {
        Write-Host "[OK   ] $Path" -ForegroundColor Green
        $Verified++
    }
    else {
        Write-Host "[MISS ] $Path" -ForegroundColor Red
        $Missing++
    }
}

# ============================================================
# Existing structure preservation
# ============================================================

Write-Host ""
Write-Host "============================================================"
Write-Host " Existing Structure Preservation Check"
Write-Host "============================================================"

$ProtectedPaths = @(
    "workspaces\HoldCo.code-workspace",
    "workspaces\holdco_v1.0.code-workspace",
    "workspaces\QAI-Platform.code-workspace",
    "deployment",
    "qai_lab\communication",
    "qai_lab\computing",
    "general_factory\reference_implementations"
)

foreach ($Path in $ProtectedPaths) {
    if (Test-Path -LiteralPath (Join-Path $Root $Path)) {
        Write-Host "[PRESERVE] $Path" -ForegroundColor Yellow
    }
    else {
        Write-Host "[CHECK  ] $Path not found" -ForegroundColor DarkYellow
    }
}

Write-Host ""
Write-Host "============================================================"
Write-Host " Phase 2A Summary"
Write-Host "============================================================"

Write-Host ("Required paths verified : {0}" -f $Verified)
Write-Host ("Required paths missing  : {0}" -f $Missing)
Write-Host ""
Write-Host "Runtime model foundation : qai_runtime\models"
Write-Host "Runtime domain foundation: qai_runtime\domains"
Write-Host "Runtime contracts        : qai_runtime\contracts"
Write-Host "Runtime core skeleton    : qai_runtime\os"
Write-Host "Resource Fabric skeleton : qai_runtime\resource_fabric"
Write-Host "Planner interface        : qai_runtime\planner"
Write-Host "Optimiser interface      : qai_runtime\optimiser"
Write-Host "Gateway boundary         : qai_runtime\gateway"
Write-Host "Hub foundation           : qai_runtime\hub"
Write-Host "Router foundation        : qai_runtime\router"
Write-Host ""

if ($Missing -eq 0) {
    Write-Host "SUCCESS: QAI Runtime Phase 2A foundation is complete." -ForegroundColor Green
}
else {
    Write-Host "WARNING: Some required paths are missing." -ForegroundColor Red
}

Write-Host ""
Write-Host "Suggested Git commit:"
Write-Host "  feat(qai-runtime): establish runtime core contracts"
Write-Host ""
Write-Host "============================================================"
Write-Host " End Phase 2A"
Write-Host "============================================================"

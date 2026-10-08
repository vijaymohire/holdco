# =====================================================================
# BOOTSTRAP-QAI-RUNTIME-PHASE-2B.ps1
# QAI Runtime - Phase 2B Core Integration
#
# Execute from:
#   PS E:\Bhadale IT\github\holdco>
#
# Command:
#   .\BOOTSTRAP-QAI-RUNTIME-PHASE-2B.ps1
#
# No PowerShell here-strings are used in this script.
# Existing files are never overwritten.
# =====================================================================

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$RepoRoot = (Get-Location).Path

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " QAI RUNTIME - PHASE 2B CORE INTEGRATION" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Repository root: $RepoRoot" -ForegroundColor Gray
Write-Host ""

function Ensure-Directory {
    param([string]$RelativePath)

    $path = Join-Path $RepoRoot $RelativePath

    if (-not (Test-Path -LiteralPath $path)) {
        New-Item -ItemType Directory -Path $path -Force | Out-Null
        Write-Host "[DIR ] $RelativePath" -ForegroundColor Green
    }
    else {
        Write-Host "[KEEP] $RelativePath" -ForegroundColor DarkGray
    }
}

function Write-TextFileIfMissing {
    param(
        [string]$RelativePath,
        [string[]]$Lines
    )

    $path = Join-Path $RepoRoot $RelativePath
    $parent = Split-Path -Parent $path

    if (-not (Test-Path -LiteralPath $parent)) {
        New-Item -ItemType Directory -Path $parent -Force | Out-Null
    }

    if (-not (Test-Path -LiteralPath $path)) {
        [System.IO.File]::WriteAllLines(
            $path,
            $Lines,
            [System.Text.UTF8Encoding]::new($false)
        )

        Write-Host "[FILE] $RelativePath" -ForegroundColor Green
    }
    else {
        Write-Host "[KEEP] $RelativePath" -ForegroundColor DarkGray
    }
}

# ---------------------------------------------------------------------
# 1. Verify Phase 2A
# ---------------------------------------------------------------------

Write-Host "Checking Phase 2A foundation..." -ForegroundColor Yellow

$phase2A = @(
    "qai_runtime\models",
    "qai_runtime\domains",
    "qai_runtime\contracts",
    "qai_runtime\os\core",
    "qai_runtime\hub\registry",
    "qai_runtime\hub\discovery",
    "qai_runtime\router\core",
    "qai_runtime\planner\interfaces",
    "qai_runtime\optimiser\interfaces",
    "qai_runtime\gateway\core",
    "qai_runtime\resource_fabric\core",
    "qai_runtime\tests\unit"
)

$missingFoundation = @()

foreach ($item in $phase2A) {
    if (-not (Test-Path -LiteralPath (Join-Path $RepoRoot $item))) {
        $missingFoundation += $item
    }
}

if ($missingFoundation.Count -gt 0) {
    Write-Host ""
    Write-Host "ERROR: Phase 2A foundation is incomplete." -ForegroundColor Red

    foreach ($item in $missingFoundation) {
        Write-Host "  Missing: $item" -ForegroundColor Red
    }

    exit 1
}

Write-Host "Phase 2A foundation verified." -ForegroundColor Green
Write-Host ""

# ---------------------------------------------------------------------
# 2. Create directories
# ---------------------------------------------------------------------

Write-Host "Creating Phase 2B integration structure..." -ForegroundColor Yellow

$directories = @(
    "qai_runtime\integration",
    "qai_runtime\integration\orchestration",
    "qai_runtime\integration\services",
    "qai_runtime\integration\execution",
    "qai_runtime\integration\adapters",
    "qai_runtime\tests\integration"
)

foreach ($directory in $directories) {
    Ensure-Directory $directory
}

Write-Host ""

# ---------------------------------------------------------------------
# 3. Runtime service composition
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\integration\services\runtime_services.py" `
    @(
        '"""QAI Runtime Phase 2B service composition."""',
        '',
        'from dataclasses import dataclass',
        'from typing import Any, Optional',
        '',
        'from qai_runtime.models.execution.models import (',
        '    ExecutionContext,',
        '    ExecutionPlan,',
        '    ExecutionRequest,',
        ')',
        'from qai_runtime.models.evidence.models import EvidenceRecord',
        'from qai_runtime.models.result.models import ExecutionResult',
        '',
        '',
        '@dataclass',
        'class RuntimeServiceBundle:',
        '    """Container for integrated runtime services."""',
        '',
        '    hub: Any',
        '    planner: Any',
        '    optimiser: Any',
        '    resource_fabric: Any',
        '    router: Any',
        '    gateway: Any',
        '',
        '',
        'class RuntimeIntegrationError(RuntimeError):',
        '    """Raised when an integrated service is unavailable."""',
        '',
        '',
        'class RuntimeServices:',
        '    """Coordinate Phase 2B runtime services."""',
        '',
        '    def __init__(self, bundle: RuntimeServiceBundle):',
        '        self.bundle = bundle',
        '',
        '    def create_plan(self, request: ExecutionRequest, context: Optional[ExecutionContext] = None) -> ExecutionPlan:',
        '        if self.bundle.planner is None:',
        '            raise RuntimeIntegrationError("Planner service is not configured.")',
        '        return self.bundle.planner.plan(request, context)',
        '',
        '    def optimise_plan(self, plan: ExecutionPlan, context: Optional[ExecutionContext] = None) -> ExecutionPlan:',
        '        if self.bundle.optimiser is None:',
        '            raise RuntimeIntegrationError("Optimiser service is not configured.")',
        '        return self.bundle.optimiser.optimise(plan, context)',
        '',
        '    def allocate_resource(self, plan: ExecutionPlan, context: Optional[ExecutionContext] = None) -> Any:',
        '        if self.bundle.resource_fabric is None:',
        '            raise RuntimeIntegrationError("Resource Fabric service is not configured.")',
        '        return self.bundle.resource_fabric.allocate(plan, context)',
        '',
        '    def route(self, plan: ExecutionPlan, resource: Any, context: Optional[ExecutionContext] = None) -> Any:',
        '        if self.bundle.router is None:',
        '            raise RuntimeIntegrationError("Router service is not configured.")',
        '        return self.bundle.router.route(plan, resource, context)',
        '',
        '    def execute(self, route: Any, plan: ExecutionPlan, context: Optional[ExecutionContext] = None) -> ExecutionResult:',
        '        if self.bundle.gateway is None:',
        '            raise RuntimeIntegrationError("Gateway service is not configured.")',
        '        return self.bundle.gateway.execute(route, plan, context)',
        '',
        '    def create_evidence(self, result: ExecutionResult, context: Optional[ExecutionContext] = None) -> EvidenceRecord:',
        '        status = result.status.value if hasattr(result.status, "value") else str(result.status)',
        '        return EvidenceRecord(',
        '            evidence_id=f"evidence-{result.result_id}",',
        '            execution_id=result.execution_id,',
        '            evidence_type="runtime_execution",',
        '            payload={',
        '                "status": status,',
        '                "result_id": result.result_id,',
        '            },',
        '            metadata={',
        '                "phase": "2B",',
        '                "source": "qai_runtime",',
        '            },',
        '        )'
    )

# ---------------------------------------------------------------------
# 4. Execution orchestrator
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\integration\orchestration\execution_orchestrator.py" `
    @(
        '"""QAI Runtime Phase 2B execution orchestration."""',
        '',
        'from dataclasses import dataclass',
        'from typing import Any, Optional',
        '',
        'from qai_runtime.integration.services.runtime_services import RuntimeServiceBundle, RuntimeServices',
        'from qai_runtime.models.execution.models import ExecutionContext, ExecutionRequest',
        'from qai_runtime.models.result.models import ExecutionResult',
        '',
        '',
        '@dataclass',
        'class ExecutionOutcome:',
        '    """Complete Phase 2B execution outcome."""',
        '',
        '    request: ExecutionRequest',
        '    plan: Any',
        '    resource: Any',
        '    route: Any',
        '    result: ExecutionResult',
        '    evidence: Any',
        '',
        '',
        'class ExecutionOrchestrator:',
        '    """Execute a workload through the integrated runtime flow."""',
        '',
        '    def __init__(self, bundle: RuntimeServiceBundle):',
        '        self.services = RuntimeServices(bundle)',
        '',
        '    def run(self, request: ExecutionRequest, context: Optional[ExecutionContext] = None) -> ExecutionOutcome:',
        '        plan = self.services.create_plan(request, context)',
        '        plan = self.services.optimise_plan(plan, context)',
        '        resource = self.services.allocate_resource(plan, context)',
        '        route = self.services.route(plan, resource, context)',
        '        result = self.services.execute(route, plan, context)',
        '        evidence = self.services.create_evidence(result, context)',
        '',
        '        return ExecutionOutcome(',
        '            request=request,',
        '            plan=plan,',
        '            resource=resource,',
        '            route=route,',
        '            result=result,',
        '            evidence=evidence,',
        '        )'
    )

# ---------------------------------------------------------------------
# 5. Runtime facade
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\integration\runtime_integration.py" `
    @(
        '"""QAI Runtime Phase 2B execution facade."""',
        '',
        'from typing import Optional',
        '',
        'from qai_runtime.integration.orchestration.execution_orchestrator import ExecutionOrchestrator, ExecutionOutcome',
        'from qai_runtime.integration.services.runtime_services import RuntimeServiceBundle',
        'from qai_runtime.models.execution.models import ExecutionContext, ExecutionRequest',
        '',
        '',
        'class QAIExecutionEngine:',
        '    """Contract-oriented QAI Runtime execution engine."""',
        '',
        '    def __init__(self, services: RuntimeServiceBundle):',
        '        self.orchestrator = ExecutionOrchestrator(services)',
        '',
        '    def submit(self, request: ExecutionRequest, context: Optional[ExecutionContext] = None) -> ExecutionOutcome:',
        '        return self.orchestrator.run(request, context)'
    )

# ---------------------------------------------------------------------
# 6. Controlled mock execution boundary
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\integration\execution\mock_execution.py" `
    @(
        '"""Controlled Phase 2B mock execution boundary."""',
        '',
        'from qai_runtime.models.result.models import ExecutionResult',
        '',
        '',
        'class MockExecutionBoundary:',
        '    """Non-provider execution boundary for integration validation."""',
        '',
        '    def execute(self, route, plan, context=None):',
        '        execution_id = getattr(plan, "execution_id", "execution-unknown")',
        '        backend_id = getattr(route, "backend_id", "mock-backend")',
        '',
        '        return ExecutionResult(',
        '            result_id=f"result-{execution_id}",',
        '            execution_id=execution_id,',
        '            status="completed",',
        '            data={',
        '                "execution_mode": "mock",',
        '                "backend": backend_id,',
        '                "phase": "2B",',
        '            },',
        '            metadata={',
        '                "provider_execution": False,',
        '                "purpose": "contract_integration_validation",',
        '            },',
        '        )'
    )

# ---------------------------------------------------------------------
# 7. Package initialisers
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\integration\__init__.py" `
    @('"""QAI Runtime integration package."""')

Write-TextFileIfMissing `
    "qai_runtime\integration\orchestration\__init__.py" `
    @('"""QAI Runtime orchestration."""')

Write-TextFileIfMissing `
    "qai_runtime\integration\services\__init__.py" `
    @('"""QAI Runtime integration services."""')

Write-TextFileIfMissing `
    "qai_runtime\integration\execution\__init__.py" `
    @('"""QAI Runtime execution boundaries."""')

Write-TextFileIfMissing `
    "qai_runtime\integration\adapters\__init__.py" `
    @('"""Integration adapters reserved for later phases."""')

# ---------------------------------------------------------------------
# 8. Planner integration protocol
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\planner\interfaces\integration.py" `
    @(
        '"""Planner integration protocol."""',
        '',
        'from typing import Protocol, Optional',
        '',
        'from qai_runtime.models.execution.models import ExecutionContext, ExecutionPlan, ExecutionRequest',
        '',
        '',
        'class PlannerIntegration(Protocol):',
        '    def plan(',
        '        self,',
        '        request: ExecutionRequest,',
        '        context: Optional[ExecutionContext] = None,',
        '    ) -> ExecutionPlan:',
        '        ...'
    )

# ---------------------------------------------------------------------
# 9. Optimiser integration protocol
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\optimiser\interfaces\integration.py" `
    @(
        '"""Optimiser integration protocol."""',
        '',
        'from typing import Protocol, Optional',
        '',
        'from qai_runtime.models.execution.models import ExecutionContext, ExecutionPlan',
        '',
        '',
        'class OptimiserIntegration(Protocol):',
        '    def optimise(',
        '        self,',
        '        plan: ExecutionPlan,',
        '        context: Optional[ExecutionContext] = None,',
        '    ) -> ExecutionPlan:',
        '        ...'
    )

# ---------------------------------------------------------------------
# 10. Resource Fabric integration protocol
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\resource_fabric\core\integration.py" `
    @(
        '"""Resource Fabric integration protocol."""',
        '',
        'from typing import Any, Protocol, Optional',
        '',
        'from qai_runtime.models.execution.models import ExecutionContext, ExecutionPlan',
        '',
        '',
        'class ResourceFabricIntegration(Protocol):',
        '    def allocate(',
        '        self,',
        '        plan: ExecutionPlan,',
        '        context: Optional[ExecutionContext] = None,',
        '    ) -> Any:',
        '        ...'
    )

# ---------------------------------------------------------------------
# 11. Router integration protocol
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\router\core\integration.py" `
    @(
        '"""Router integration protocol."""',
        '',
        'from typing import Any, Protocol, Optional',
        '',
        'from qai_runtime.models.execution.models import ExecutionContext, ExecutionPlan',
        '',
        '',
        'class RouterIntegration(Protocol):',
        '    def route(',
        '        self,',
        '        plan: ExecutionPlan,',
        '        resource: Any,',
        '        context: Optional[ExecutionContext] = None,',
        '    ) -> Any:',
        '        ...'
    )

# ---------------------------------------------------------------------
# 12. Gateway integration protocol
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\gateway\core\integration.py" `
    @(
        '"""Gateway integration protocol."""',
        '',
        'from typing import Any, Protocol, Optional',
        '',
        'from qai_runtime.models.execution.models import ExecutionContext, ExecutionPlan',
        'from qai_runtime.models.result.models import ExecutionResult',
        '',
        '',
        'class GatewayIntegration(Protocol):',
        '    def execute(',
        '        self,',
        '        route: Any,',
        '        plan: ExecutionPlan,',
        '        context: Optional[ExecutionContext] = None,',
        '    ) -> ExecutionResult:',
        '        ...'
    )

# ---------------------------------------------------------------------
# 13. Integration tests
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\tests\integration\test_runtime_core_flow.py" `
    @(
        '"""Phase 2B QAI Runtime core integration tests."""',
        '',
        'from dataclasses import dataclass',
        '',
        'from qai_runtime.integration.runtime_integration import QAIExecutionEngine',
        'from qai_runtime.integration.services.runtime_services import RuntimeServiceBundle',
        'from qai_runtime.models.execution.models import ExecutionRequest',
        'from qai_runtime.models.result.models import ExecutionResult',
        '',
        '',
        '@dataclass',
        'class TestPlan:',
        '    execution_id: str',
        '    workload_id: str',
        '',
        '',
        'class TestPlanner:',
        '    def plan(self, request, context=None):',
        '        return TestPlan(request.execution_id, request.workload_id)',
        '',
        '',
        'class TestOptimiser:',
        '    def optimise(self, plan, context=None):',
        '        return plan',
        '',
        '',
        'class TestResourceFabric:',
        '    def allocate(self, plan, context=None):',
        '        return {',
        '            "resource_id": "resource-test-001",',
        '            "resource_type": "classical-test",',
        '        }',
        '',
        '',
        'class TestRouter:',
        '    def route(self, plan, resource, context=None):',
        '        return type(',
        '            "TestRoute",',
        '            (),',
        '            {',
        '                "backend_id": "backend-test-001",',
        '                "resource": resource,',
        '            },',
        '        )()',
        '',
        '',
        'class TestGateway:',
        '    def execute(self, route, plan, context=None):',
        '        return ExecutionResult(',
        '            result_id=f"result-{plan.execution_id}",',
        '            execution_id=plan.execution_id,',
        '            status="completed",',
        '            data={',
        '                "backend": route.backend_id,',
        '                "resource": route.resource,',
        '            },',
        '            metadata={',
        '                "integration_test": True,',
        '            },',
        '        )',
        '',
        '',
        'def build_test_engine():',
        '    bundle = RuntimeServiceBundle(',
        '        hub=None,',
        '        planner=TestPlanner(),',
        '        optimiser=TestOptimiser(),',
        '        resource_fabric=TestResourceFabric(),',
        '        router=TestRouter(),',
        '        gateway=TestGateway(),',
        '    )',
        '    return QAIExecutionEngine(bundle)',
        '',
        '',
        'def test_runtime_core_end_to_end_flow():',
        '    engine = build_test_engine()',
        '',
        '    request = ExecutionRequest(',
        '        execution_id="execution-001",',
        '        workload_id="workload-001",',
        '    )',
        '',
        '    outcome = engine.submit(request)',
        '',
        '    assert outcome.request.execution_id == "execution-001"',
        '    assert outcome.plan.execution_id == "execution-001"',
        '    assert outcome.resource["resource_id"] == "resource-test-001"',
        '    assert outcome.route.backend_id == "backend-test-001"',
        '    assert outcome.result.execution_id == "execution-001"',
        '    assert outcome.result.status == "completed"',
        '    assert outcome.evidence.execution_id == "execution-001"',
        '',
        '',
        'def test_runtime_result_and_evidence_are_connected():',
        '    engine = build_test_engine()',
        '',
        '    request = ExecutionRequest(',
        '        execution_id="execution-002",',
        '        workload_id="workload-002",',
        '    )',
        '',
        '    outcome = engine.submit(request)',
        '',
        '    assert outcome.result.result_id == "result-execution-002"',
        '    assert outcome.evidence.evidence_id == "evidence-result-execution-002"',
        '    assert outcome.evidence.execution_id == outcome.result.execution_id'
    )

# ---------------------------------------------------------------------
# 14. Documentation
# ---------------------------------------------------------------------

Write-TextFileIfMissing `
    "qai_runtime\integration\README.md" `
    @(
        "# QAI Runtime Integration",
        "",
        "Phase 2B integrates the Phase 2A QAI Runtime components through",
        "contracts and interfaces.",
        "",
        "## Core flow",
        "",
        "Workload -> Runtime -> Hub -> Planner -> Optimiser -> Resource Fabric -> Router -> Gateway",
        "",
        "The execution flow produces Result and Evidence.",
        "",
        "## Design principles",
        "",
        "- Contract-first integration",
        "- Provider-neutral runtime",
        "- Separation of concerns",
        "- No provider-specific execution in Phase 2B",
        "- No duplication of General Factory planning logic",
        "- Controlled execution boundary for integration testing",
        "",
        "Provider adapters are deferred to later phases."
    )

Write-TextFileIfMissing `
    "qai_runtime\docs\PHASE_2B_STATUS.md" `
    @(
        "# QAI Runtime - Phase 2B Status",
        "",
        "## Objective",
        "",
        "Integrate the Phase 2A runtime components into a coherent execution",
        "flow through their established contracts.",
        "",
        "## Integration path",
        "",
        "Workload -> Runtime -> Hub -> Planner -> Optimiser -> Resource Fabric -> Router -> Gateway -> Result / Evidence",
        "",
        "## Included",
        "",
        "- Runtime orchestration",
        "- Planner integration boundary",
        "- Optimiser integration boundary",
        "- Resource Fabric integration boundary",
        "- Router integration boundary",
        "- Gateway integration boundary",
        "- Result propagation",
        "- Evidence generation",
        "- End-to-end integration tests",
        "- Controlled mock execution boundary",
        "",
        "## Not included",
        "",
        "- IBM Quantum execution",
        "- Azure Quantum execution",
        "- Qiskit provider execution",
        "- Slurm integration",
        "- GPU provider integration",
        "- FPGA provider integration",
        "- Cloud provider deployment",
        "- Physical quantum execution",
        "- Duplication of General Factory planner logic",
        "",
        "## Verification",
        "",
        "python -m pytest qai_runtime\tests -q"
    )

# ---------------------------------------------------------------------
# 15. Verification
# ---------------------------------------------------------------------

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " PHASE 2B STRUCTURE VERIFICATION" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

$required = @(
    "qai_runtime\integration",
    "qai_runtime\integration\orchestration",
    "qai_runtime\integration\services",
    "qai_runtime\integration\execution",
    "qai_runtime\integration\adapters",
    "qai_runtime\integration\services\runtime_services.py",
    "qai_runtime\integration\orchestration\execution_orchestrator.py",
    "qai_runtime\integration\runtime_integration.py",
    "qai_runtime\integration\execution\mock_execution.py",
    "qai_runtime\planner\interfaces\integration.py",
    "qai_runtime\optimiser\interfaces\integration.py",
    "qai_runtime\resource_fabric\core\integration.py",
    "qai_runtime\router\core\integration.py",
    "qai_runtime\gateway\core\integration.py",
    "qai_runtime\tests\integration",
    "qai_runtime\tests\integration\test_runtime_core_flow.py",
    "qai_runtime\integration\README.md",
    "qai_runtime\docs\PHASE_2B_STATUS.md"
)

$missing = @()

foreach ($item in $required) {
    if (Test-Path -LiteralPath (Join-Path $RepoRoot $item)) {
        Write-Host "[ OK ] $item" -ForegroundColor Green
    }
    else {
        Write-Host "[MISS] $item" -ForegroundColor Red
        $missing += $item
    }
}

Write-Host ""
Write-Host "Required Phase 2B paths : $($required.Count)"
Write-Host "Missing                  : $($missing.Count)"

# ---------------------------------------------------------------------
# 16. Verify preserved structures
# ---------------------------------------------------------------------

Write-Host ""
Write-Host "Checking preserved structures..." -ForegroundColor Yellow

$preserved = @(
    "workspaces\HoldCo.code-workspace",
    "workspaces\holdco_v1.0.code-workspace",
    "workspaces\QAI-Platform.code-workspace",
    "deployment",
    "qai_lab\communication",
    "qai_lab\computing",
    "general_factory\reference_implementations"
)

$preservationFailures = @()

foreach ($item in $preserved) {
    if (Test-Path -LiteralPath (Join-Path $RepoRoot $item)) {
        Write-Host "[ OK ] $item" -ForegroundColor Green
    }
    else {
        Write-Host "[FAIL] $item" -ForegroundColor Red
        $preservationFailures += $item
    }
}

Write-Host ""
Write-Host "Preservation failures    : $($preservationFailures.Count)"

# ---------------------------------------------------------------------
# 17. Final result
# ---------------------------------------------------------------------

if (($missing.Count -eq 0) -and ($preservationFailures.Count -eq 0)) {

    Write-Host ""
    Write-Host "============================================================" -ForegroundColor Green
    Write-Host " PHASE 2B BOOTSTRAP COMPLETED SUCCESSFULLY" -ForegroundColor Green
    Write-Host "============================================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Next command:" -ForegroundColor Yellow
    Write-Host "python -m pytest qai_runtime\tests -q" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Do not commit yet. Review the test results first." -ForegroundColor Yellow
    Write-Host ""
}
else {

    Write-Host ""
    Write-Host "============================================================" -ForegroundColor Red
    Write-Host " PHASE 2B BOOTSTRAP COMPLETED WITH ERRORS" -ForegroundColor Red
    Write-Host "============================================================" -ForegroundColor Red
    Write-Host ""

    if ($missing.Count -gt 0) {
        Write-Host "Missing paths:" -ForegroundColor Red
        foreach ($item in $missing) {
            Write-Host "  $item" -ForegroundColor Red
        }
    }

    if ($preservationFailures.Count -gt 0) {
        Write-Host "Preservation failures:" -ForegroundColor Red
        foreach ($item in $preservationFailures) {
            Write-Host "  $item" -ForegroundColor Red
        }
    }

    exit 1
}

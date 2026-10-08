# ================================================================
# BOOTSTRAP-QAI-RUNTIME-PHASE-1B.ps1
# ================================================================
# QAI Runtime Phase 1B
# Portable VS Code Development Foundation
#
# Run from:
#   PS E:\Bhadale IT\github\holdco>
#
# Scope:
#   - QAI Runtime foundation
#   - QAI Runtime contracts
#   - QAI Runtime storage foundation
#   - QAI Runtime adapter boundaries
#   - QAI DevOps foundation
#   - Environment definitions
#   - Deployment manifests
#   - Environment-variable templates
#   - Root VS Code configuration
#   - QAI Platform focused workspace
#   - Deployment Operator compatibility
#   - FAEP / QAI LabaaS compatibility
#
# IMPORTANT:
#   - Non-destructive
#   - Existing files are never overwritten
#   - Existing HoldCo.code-workspace is preserved
#   - Existing holdco_v1.0.code-workspace is preserved
#   - Existing deployment/ is not modified
#   - Existing qai_lab/ is not modified
#   - No Runtime Python implementation is created
#   - No Deployment Operator implementation is created
#
# Suggested commit:
#   feat(qai-runtime): establish portable VS Code development foundation
# ================================================================

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " QAI Runtime Phase 1B Bootstrap" -ForegroundColor Cyan
Write-Host " Portable VS Code Development Foundation" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

# ---------------------------------------------------------------
# 1. Validate HoldCo root
# ---------------------------------------------------------------

$Root = (Get-Location).Path

if ((Split-Path -Leaf $Root) -ne "holdco") {

    Write-Warning "Current directory:"
    Write-Warning "  $Root"
    Write-Warning ""
    Write-Warning "Expected a HoldCo root ending in:"
    Write-Warning "  \holdco"
    Write-Warning ""

    $Continue = Read-Host "Continue anyway? (Y/N)"

    if ($Continue -notin @("Y","y")) {
        Write-Host "Bootstrap cancelled." -ForegroundColor Yellow
        exit 1
    }
}

# ---------------------------------------------------------------
# 2. Counters
# ---------------------------------------------------------------

$CreatedDirectories = 0
$ExistingDirectories = 0
$CreatedFiles = 0
$ExistingFiles = 0
$Failed = 0

# ---------------------------------------------------------------
# 3. Helper: create directory if missing
# ---------------------------------------------------------------

function Ensure-Directory {
    param(
        [Parameter(Mandatory = $true)]
        [string]$RelativePath
    )

    try {

        $FullPath = Join-Path $Root $RelativePath

        if (Test-Path -LiteralPath $FullPath -PathType Container) {
            $script:ExistingDirectories++
            return
        }

        New-Item -ItemType Directory -Path $FullPath -Force | Out-Null

        $script:CreatedDirectories++

        Write-Host "[DIR +] $RelativePath" -ForegroundColor Green
    }
    catch {

        $script:Failed++

        Write-Host "[FAIL ] $RelativePath" -ForegroundColor Red
        Write-Host "        $($_.Exception.Message)" -ForegroundColor Red
    }
}

# ---------------------------------------------------------------
# 4. Helper: create file only if missing
# ---------------------------------------------------------------

function Ensure-File {
    param(
        [Parameter(Mandatory = $true)]
        [string]$RelativePath,

        [Parameter(Mandatory = $true)]
        [string[]]$Lines
    )

    try {

        $FullPath = Join-Path $Root $RelativePath
        $Parent = Split-Path -Parent $FullPath

        if (-not (Test-Path -LiteralPath $Parent -PathType Container)) {
            New-Item -ItemType Directory -Path $Parent -Force | Out-Null
        }

        if (Test-Path -LiteralPath $FullPath -PathType Leaf) {
            $script:ExistingFiles++
            return
        }

        $Content = $Lines -join [Environment]::NewLine

        Set-Content `
            -LiteralPath $FullPath `
            -Value $Content `
            -Encoding UTF8

        $script:CreatedFiles++

        Write-Host "[FILE+] $RelativePath" -ForegroundColor Green
    }
    catch {

        $script:Failed++

        Write-Host "[FAIL ] $RelativePath" -ForegroundColor Red
        Write-Host "        $($_.Exception.Message)" -ForegroundColor Red
    }
}

# ================================================================
# 5. QAI RUNTIME DIRECTORY FOUNDATION
# ================================================================

$RuntimeDirectories = @(

    "qai_runtime",

    "qai_runtime\config",

    "qai_runtime\contracts",
    "qai_runtime\contracts\workload",
    "qai_runtime\contracts\execution",
    "qai_runtime\contracts\resource",
    "qai_runtime\contracts\routing",
    "qai_runtime\contracts\result",
    "qai_runtime\contracts\evidence",
    "qai_runtime\contracts\lifecycle",

    "qai_runtime\os",
    "qai_runtime\os\kernel",
    "qai_runtime\os\services",
    "qai_runtime\os\lifecycle",
    "qai_runtime\os\policies",
    "qai_runtime\os\state",

    "qai_runtime\hub",
    "qai_runtime\hub\assets",
    "qai_runtime\hub\services",
    "qai_runtime\hub\workloads",
    "qai_runtime\hub\resources",
    "qai_runtime\hub\registry",
    "qai_runtime\hub\discovery",

    "qai_runtime\router",
    "qai_runtime\router\routing",
    "qai_runtime\router\policies",
    "qai_runtime\router\backend_selection",
    "qai_runtime\router\failover",
    "qai_runtime\router\cost_quality",

    "qai_runtime\planner",
    "qai_runtime\planner\decomposition",
    "qai_runtime\planner\dependency_graph",
    "qai_runtime\planner\resource_planning",
    "qai_runtime\planner\scheduling",
    "qai_runtime\planner\mapping",
    "qai_runtime\planner\critical_path",
    "qai_runtime\planner\execution_plan",

    "qai_runtime\optimiser",
    "qai_runtime\optimiser\objectives",
    "qai_runtime\optimiser\constraints",
    "qai_runtime\optimiser\search",
    "qai_runtime\optimiser\scheduling",
    "qai_runtime\optimiser\resource_reduction",
    "qai_runtime\optimiser\cycle_time",
    "qai_runtime\optimiser\adaptive",

    "qai_runtime\gateway",
    "qai_runtime\gateway\api",
    "qai_runtime\gateway\execution",
    "qai_runtime\gateway\security",
    "qai_runtime\gateway\sessions",
    "qai_runtime\gateway\adapters",

    "qai_runtime\resource_fabric",
    "qai_runtime\resource_fabric\registry",
    "qai_runtime\resource_fabric\profiles",
    "qai_runtime\resource_fabric\discovery",
    "qai_runtime\resource_fabric\allocation",
    "qai_runtime\resource_fabric\capacity",
    "qai_runtime\resource_fabric\topology",
    "qai_runtime\resource_fabric\telemetry",

    "qai_runtime\memory",
    "qai_runtime\memory\state",
    "qai_runtime\memory\context",
    "qai_runtime\memory\metadata",
    "qai_runtime\memory\cache",
    "qai_runtime\memory\quantum_memory",

    "qai_runtime\execution",
    "qai_runtime\execution\classical",
    "qai_runtime\execution\hpc",
    "qai_runtime\execution\gpu",
    "qai_runtime\execution\fpga",
    "qai_runtime\execution\quantum",
    "qai_runtime\execution\communication",
    "qai_runtime\execution\hybrid",

    "qai_runtime\primitives",
    "qai_runtime\primitives\execute",
    "qai_runtime\primitives\estimate",
    "qai_runtime\primitives\sample",
    "qai_runtime\primitives\optimise",
    "qai_runtime\primitives\map",
    "qai_runtime\primitives\allocate",
    "qai_runtime\primitives\measure",
    "qai_runtime\primitives\validate",
    "qai_runtime\primitives\assemble",
    "qai_runtime\primitives\adapt",
    "qai_runtime\primitives\evidence",

    "qai_runtime\result_assembly",
    "qai_runtime\result_assembly\fusion",
    "qai_runtime\result_assembly\ensemble",
    "qai_runtime\result_assembly\validation",
    "qai_runtime\result_assembly\quality",
    "qai_runtime\result_assembly\provenance",

    "qai_runtime\evidence",
    "qai_runtime\evidence\events",
    "qai_runtime\evidence\metrics",
    "qai_runtime\evidence\traces",
    "qai_runtime\evidence\provenance",
    "qai_runtime\evidence\reports",

    "qai_runtime\workflow",
    "qai_runtime\workflow\model",
    "qai_runtime\workflow\schema",
    "qai_runtime\workflow\designer",
    "qai_runtime\workflow\designer\visual",
    "qai_runtime\workflow\designer\text",
    "qai_runtime\workflow\designer\notebook",
    "qai_runtime\workflow\compiler",
    "qai_runtime\workflow\validator",
    "qai_runtime\workflow\parser",
    "qai_runtime\workflow\graph",
    "qai_runtime\workflow\execution",
    "qai_runtime\workflow\examples",

    "qai_runtime\cli",
    "qai_runtime\api",
    "qai_runtime\sdk",

    # -----------------------------------------------------------
    # QAI Storage Foundation
    # -----------------------------------------------------------

    "qai_runtime\storage",
    "qai_runtime\storage\contracts",
    "qai_runtime\storage\models",
    "qai_runtime\storage\registry",
    "qai_runtime\storage\resolver",
    "qai_runtime\storage\factory",
    "qai_runtime\storage\capabilities",
    "qai_runtime\storage\namespaces",
    "qai_runtime\storage\sessions",
    "qai_runtime\storage\paths",

    "qai_runtime\storage\adapters",
    "qai_runtime\storage\adapters\local",
    "qai_runtime\storage\adapters\nfs",
    "qai_runtime\storage\adapters\smb",
    "qai_runtime\storage\adapters\sftp",
    "qai_runtime\storage\adapters\s3",
    "qai_runtime\storage\adapters\gcs",
    "qai_runtime\storage\adapters\azure_blob",
    "qai_runtime\storage\adapters\hpc",

    "qai_runtime\storage\persistence",
    "qai_runtime\storage\caching",
    "qai_runtime\storage\streaming",
    "qai_runtime\storage\security",

    # -----------------------------------------------------------
    # QAI Runtime Adapters
    # -----------------------------------------------------------

    "qai_runtime\adapters",

    "qai_runtime\adapters\classical",
    "qai_runtime\adapters\classical\local_python",
    "qai_runtime\adapters\classical\containers",

    "qai_runtime\adapters\hpc",
    "qai_runtime\adapters\hpc\slurm",
    "qai_runtime\adapters\hpc\generic_scheduler",

    "qai_runtime\adapters\gpu",
    "qai_runtime\adapters\gpu\generic_gpu",
    "qai_runtime\adapters\gpu\nvidia",

    "qai_runtime\adapters\fpga",
    "qai_runtime\adapters\fpga\generic_fpga",

    "qai_runtime\adapters\quantum",
    "qai_runtime\adapters\quantum\qiskit",
    "qai_runtime\adapters\quantum\ibm_quantum",
    "qai_runtime\adapters\quantum\azure_quantum",
    "qai_runtime\adapters\quantum\pennylane",
    "qai_runtime\adapters\quantum\d_wave",
    "qai_runtime\adapters\quantum\simulators",
    "qai_runtime\adapters\quantum\generic_qpu",

    "qai_runtime\adapters\communication",
    "qai_runtime\adapters\communication\network_emulator",
    "qai_runtime\adapters\communication\quantum_network_simulator",
    "qai_runtime\adapters\communication\generic_quantum_network",

    "qai_runtime\tests",
    "qai_runtime\tests\unit",
    "qai_runtime\tests\integration",
    "qai_runtime\tests\system",
    "qai_runtime\tests\acceptance"
)

foreach ($Path in $RuntimeDirectories) {
    Ensure-Directory $Path
}

# ================================================================
# 6. QAI DEVOPS DIRECTORY FOUNDATION
# ================================================================

$DevOpsDirectories = @(

    "qai_devops",

    "qai_devops\control_center",

    "qai_devops\catalog",
    "qai_devops\catalog\environment_definitions",
    "qai_devops\catalog\environment_definitions\dev",
    "qai_devops\catalog\environment_definitions\test",
    "qai_devops\catalog\environment_definitions\prod",
    "qai_devops\catalog\templates",

    "qai_devops\environment_types",
    "qai_devops\environment_types\development",
    "qai_devops\environment_types\test",
    "qai_devops\environment_types\production",

    "qai_devops\environments",
    "qai_devops\environments\local",
    "qai_devops\environments\cloud",
    "qai_devops\environments\colocation",
    "qai_devops\environments\client_dc",
    "qai_devops\environments\bare_metal",
    "qai_devops\environments\hpc",
    "qai_devops\environments\edge",
    "qai_devops\environments\iot",

    "qai_devops\projects",
    "qai_devops\projects\qai_lab",
    "qai_devops\projects\faep",
    "qai_devops\projects\client_projects",

    "qai_devops\deployment",
    "qai_devops\deployment\runners",
    "qai_devops\deployment\adapters",
    "qai_devops\deployment\validation",
    "qai_devops\deployment\promotion",
    "qai_devops\deployment\rollback",

    "qai_devops\manifests",
    "qai_devops\manifests\environment",
    "qai_devops\manifests\runtime",
    "qai_devops\manifests\resources",
    "qai_devops\manifests\deployment",
    "qai_devops\manifests\release",

    "qai_devops\iac",
    "qai_devops\iac\common",
    "qai_devops\iac\local",
    "qai_devops\iac\azure",
    "qai_devops\iac\colocation",
    "qai_devops\iac\bare_metal",
    "qai_devops\iac\edge",

    "qai_devops\scripts",
    "qai_devops\scripts\bootstrap",
    "qai_devops\scripts\build",
    "qai_devops\scripts\test",
    "qai_devops\scripts\deploy",
    "qai_devops\scripts\health",
    "qai_devops\scripts\rollback",

    "qai_devops\policies",
    "qai_devops\identities",
    "qai_devops\secrets",
    "qai_devops\evidence",
    "qai_devops\docs"
)

foreach ($Path in $DevOpsDirectories) {
    Ensure-Directory $Path
}

# ================================================================
# 7. SHARED CONFIGURATION
# ================================================================

Ensure-Directory "config"
Ensure-Directory "config\env"
Ensure-Directory ".vscode"

# ================================================================
# 8. QAI RUNTIME README
# ================================================================

Ensure-File "qai_runtime\README.md" @(
    "# QAI Runtime",
    "",
    "QAI Runtime is the native, product-neutral execution platform for the HoldCo QAI ecosystem.",
    "",
    "It provides the execution layer between logical QAI workloads and heterogeneous physical or virtual resources.",
    "",
    "## Architectural Position",
    "",
    "QAI Application",
    "      |",
    "QAI Workflow",
    "      |",
    "QAI Runtime",
    "      |",
    "QAI Resource Fabric",
    "      |",
    "CPU / GPU / FPGA / HPC / QPU / Storage / Communication",
    "",
    "## Core Components",
    "",
    "- QAI OS",
    "- QAI Hub",
    "- QAI Router",
    "- QAI Planner",
    "- QAI Optimiser",
    "- QAI Gateway",
    "- QAI Resource Fabric",
    "- QAI Memory",
    "- QAI Result Assembly",
    "- QAI Evidence",
    "- QAI Workflow",
    "- QAI Storage",
    "",
    "## Design Principles",
    "",
    "1. Provider-neutral",
    "2. Product-neutral",
    "3. Portable across deployment targets",
    "4. Contract-driven",
    "5. Evidence-led",
    "6. Adapter-based integration",
    "7. Separation of workload, execution and infrastructure",
    "8. Explicit client IP and data boundaries",
    "",
    "## Phase 1B Boundary",
    "",
    "Phase 1B establishes the development foundation only.",
    "",
    "Runtime implementation is intentionally deferred until the foundation is verified and committed.",
    "",
    "## Future Dependency Boundary",
    "",
    "FAEP",
    "  |",
    "QAI LabaaS",
    "  |",
    "Client / Project Workspace",
    "  |",
    "Deployment Operator",
    "  |",
    "QAI DevOps",
    "  |",
    "QAI Runtime",
    "  |",
    "Resource Fabric",
    "  |",
    "Physical / Virtual Resources",
    "",
    "The above is an architectural dependency direction, not a source-code coupling requirement.",
    "",
    "Provider-specific runtimes remain adapters and are not the QAI Runtime core."
)

# ================================================================
# 9. QAI DEVOPS README
# ================================================================

Ensure-File "qai_devops\README.md" @(
    "# QAI DevOps",
    "",
    "QAI DevOps defines portable environment and deployment intent for QAI workloads.",
    "",
    "## Five-Part Model",
    "",
    "WHAT  = Environment Definition",
    "WHY   = Environment Type",
    "WHERE = Deployment Target",
    "HOW   = Deployment Adapter",
    "WHAT RUNS = QAI Runtime",
    "",
    "## Scope",
    "",
    "- environment definitions",
    "- environment types",
    "- deployment manifests",
    "- resource profiles",
    "- deployment adapters",
    "- validation",
    "- promotion",
    "- rollback",
    "- infrastructure-as-code boundaries",
    "- evidence",
    "",
    "## Future Deployment Operator",
    "",
    "The future Deployment Operator is expected to consume QAI DevOps definitions and orchestrate environment realization and deployment lifecycle.",
    "",
    "Phase 1B does not implement the Deployment Operator.",
    "",
    "## Guardrail",
    "",
    "Environment definitions describe requirements and capabilities rather than hard-coding one cloud, scheduler, data centre or hardware vendor."
)

# ================================================================
# 10. CONTRACT READMES
# ================================================================

Ensure-File "qai_runtime\contracts\README.md" @(
    "# QAI Runtime Contracts",
    "",
    "Stable interfaces between logical workloads, runtime services, resources, routing, results, evidence and lifecycle.",
    "",
    "Contracts provide future integration boundaries for:",
    "",
    "- General Framework",
    "- General Factory",
    "- QAI Lab",
    "- Deployment Operator",
    "- FAEP",
    "- QAI LabaaS",
    "- Client project environments"
)

Ensure-File "qai_runtime\contracts\workload\README.md" @(
    "# Workload Contracts",
    "",
    "Defines workload intent, requirements, constraints and execution semantics."
)

Ensure-File "qai_runtime\contracts\execution\README.md" @(
    "# Execution Contracts",
    "",
    "Defines execution requests, execution plans and runtime invocation semantics."
)

Ensure-File "qai_runtime\contracts\resource\README.md" @(
    "# Resource Contracts",
    "",
    "Defines resource capabilities, profiles, allocation requirements and resource bindings."
)

Ensure-File "qai_runtime\contracts\routing\README.md" @(
    "# Routing Contracts",
    "",
    "Defines backend selection, routing policy, failover and execution-mode decisions."
)

Ensure-File "qai_runtime\contracts\result\README.md" @(
    "# Result Contracts",
    "",
    "Defines result structures, quality metadata and result assembly boundaries."
)

Ensure-File "qai_runtime\contracts\evidence\README.md" @(
    "# Evidence Contracts",
    "",
    "Defines provenance, measurements, traces, metrics and validation evidence."
)

Ensure-File "qai_runtime\contracts\lifecycle\README.md" @(
    "# Lifecycle Contracts",
    "",
    "Defines workload, session, execution and resource lifecycle states."
)

# ================================================================
# 11. COMPONENT READMES
# ================================================================

Ensure-File "qai_runtime\os\README.md" @(
    "# QAI OS",
    "",
    "Execution environment foundation and lifecycle services for QAI Runtime."
)

Ensure-File "qai_runtime\hub\README.md" @(
    "# QAI Hub",
    "",
    "Discovery and coordination layer for assets, services, workloads and resources."
)

Ensure-File "qai_runtime\router\README.md" @(
    "# QAI Router",
    "",
    "Routes workloads to suitable execution backends according to policy, capability, quality and cost."
)

Ensure-File "qai_runtime\planner\README.md" @(
    "# QAI Planner",
    "",
    "Plans workload decomposition, dependencies, resources, scheduling, mapping and execution."
)

Ensure-File "qai_runtime\optimiser\README.md" @(
    "# QAI Optimiser",
    "",
    "Optimises objectives, constraints, schedules, resource use and cycle time."
)

Ensure-File "qai_runtime\gateway\README.md" @(
    "# QAI Gateway",
    "",
    "Boundary for APIs, execution requests, sessions, security and adapters."
)

Ensure-File "qai_runtime\resource_fabric\README.md" @(
    "# QAI Resource Fabric",
    "",
    "Authoritative abstraction for resource discovery, capacity, allocation, topology and telemetry."
)

Ensure-File "qai_runtime\memory\README.md" @(
    "# QAI Memory",
    "",
    "Runtime state, context, metadata, cache and future quantum-memory interfaces."
)

Ensure-File "qai_runtime\execution\README.md" @(
    "# QAI Execution",
    "",
    "Execution domains for classical, HPC, GPU, FPGA, quantum, communication and hybrid workloads."
)

Ensure-File "qai_runtime\primitives\README.md" @(
    "# QAI Primitives",
    "",
    "Candidate product-neutral runtime primitives:",
    "",
    "Execute, Estimate, Sample, Optimise, Map, Allocate, Measure, Validate, Assemble, Adapt and Evidence."
)

Ensure-File "qai_runtime\result_assembly\README.md" @(
    "# Result Assembly",
    "",
    "Fusion, ensemble, validation, quality and provenance of compatible execution results."
)

Ensure-File "qai_runtime\evidence\README.md" @(
    "# QAI Evidence",
    "",
    "Runtime evidence, provenance, metrics, traces, events and reports."
)

Ensure-File "qai_runtime\workflow\README.md" @(
    "# QAI Workflow",
    "",
    "Defines WHAT should happen independently from HOW and WHERE it executes."
)

# ================================================================
# 12. QAI STORAGE READMES
# ================================================================

Ensure-File "qai_runtime\storage\README.md" @(
    "# QAI Storage",
    "",
    "Product-neutral logical filesystem and storage abstraction.",
    "",
    "## Architectural Position",
    "",
    "QAIFileSystem",
    "    -> Storage / Resource Registry",
    "    -> Deployment Variables / Profile",
    "    -> Backend Factory / Resolver",
    "    -> Storage Adapter",
    "",
    "## Logical Namespaces",
    "",
    "- qai://workspace/",
    "- qai://session/",
    "- qai://files/",
    "- qai://artifacts/",
    "- qai://evidence/",
    "- qai://cache/",
    "",
    "## Candidate Storage Classes",
    "",
    "- Local POSIX filesystem",
    "- NFS",
    "- SMB",
    "- SFTP",
    "- S3-compatible object storage",
    "- GCS",
    "- Azure Blob",
    "- HPC parallel filesystem",
    "",
    "Phase 1B establishes folder and contract boundaries only."
)

Ensure-File "qai_runtime\storage\contracts\README.md" @(
    "# Storage Contracts",
    "",
    "Common storage operations and backend capability contracts."
)

Ensure-File "qai_runtime\storage\models\README.md" @(
    "# Storage Models",
    "",
    "Logical storage objects, metadata and resource representations."
)

Ensure-File "qai_runtime\storage\registry\README.md" @(
    "# Storage Registry",
    "",
    "Registry boundary for logical storage resources and available storage backends."
)

Ensure-File "qai_runtime\storage\resolver\README.md" @(
    "# Storage Resolver",
    "",
    "Resolves logical storage requirements to compatible storage resources and adapters."
)

Ensure-File "qai_runtime\storage\factory\README.md" @(
    "# Storage Factory",
    "",
    "Factory boundary for creation of storage adapter instances."
)

Ensure-File "qai_runtime\storage\capabilities\README.md" @(
    "# Storage Capabilities",
    "",
    "Capability model for read, write, streaming, random access, atomic operations, locking, versioning, encryption and other storage properties."
)

Ensure-File "qai_runtime\storage\namespaces\README.md" @(
    "# Storage Namespaces",
    "",
    "Logical QAI storage namespaces such as workspace, session, files, artifacts, evidence and cache."
)

Ensure-File "qai_runtime\storage\sessions\README.md" @(
    "# Storage Sessions",
    "",
    "Persistent logical session storage boundary."
)

Ensure-File "qai_runtime\storage\paths\README.md" @(
    "# Storage Paths",
    "",
    "Logical path resolution and deployment-independent path semantics."
)

Ensure-File "qai_runtime\storage\adapters\README.md" @(
    "# Storage Adapters",
    "",
    "Provider and infrastructure storage adapters.",
    "",
    "Adapters remain outside the logical QAI Storage contract."
)

Ensure-File "qai_runtime\storage\persistence\README.md" @(
    "# Storage Persistence",
    "",
    "Persistence lifecycle boundary."
)

Ensure-File "qai_runtime\storage\caching\README.md" @(
    "# Storage Caching",
    "",
    "Caching boundary for runtime storage operations."
)

Ensure-File "qai_runtime\storage\streaming\README.md" @(
    "# Storage Streaming",
    "",
    "Streaming and large-object transfer boundary."
)

Ensure-File "qai_runtime\storage\security\README.md" @(
    "# Storage Security",
    "",
    "Storage access control, encryption and security-policy boundary."
)

# ================================================================
# 13. RUNTIME ADAPTER README
# ================================================================

Ensure-File "qai_runtime\adapters\README.md" @(
    "# QAI Runtime Adapters",
    "",
    "Provider and infrastructure integrations.",
    "",
    "Adapters are not the QAI Runtime core.",
    "",
    "Candidate domains:",
    "",
    "- classical",
    "- HPC",
    "- GPU",
    "- FPGA",
    "- quantum",
    "- communication"
)

# ================================================================
# 14. VERSION / PROJECT METADATA
# ================================================================

Ensure-File "qai_runtime\VERSION" @(
    "0.1.0-phase1b"
)

Ensure-File "qai_runtime\pyproject.toml" @(
    "[build-system]",
    "requires = [""setuptools>=68""]",
    "build-backend = ""setuptools.build_meta""",
    "",
    "[project]",
    "name = ""qai-runtime""",
    "version = ""0.1.0""",
    "description = ""Bhadale IT product-neutral QAI Runtime foundation""",
    "requires-python = "">=3.10""",
    "",
    "# Phase 1B:",
    "# Runtime implementation is intentionally not included."
)

# ================================================================
# 15. RUNTIME CONFIGURATION
# ================================================================

Ensure-File "qai_runtime\config\runtime.yaml" @(
    "# QAI Runtime configuration placeholder.",
    "",
    "runtime:",
    "  mode: development",
    "  provider_neutral: true",
    "",
    "evidence:",
    "  enabled: true",
    "",
    "secrets:",
    "  committed: false"
)

Ensure-File "qai_runtime\config\router.yaml" @(
    "# QAI Router configuration placeholder.",
    "",
    "routing:",
    "  provider_neutral: true",
    "  failover_enabled: false"
)

Ensure-File "qai_runtime\config\planner.yaml" @(
    "# QAI Planner configuration placeholder.",
    "",
    "planner:",
    "  decomposition: contract_driven",
    "  mapping: resource_aware"
)

Ensure-File "qai_runtime\config\optimiser.yaml" @(
    "# QAI Optimiser configuration placeholder.",
    "",
    "optimisation:",
    "  resource_reduction: true",
    "  cycle_time: true"
)

Ensure-File "qai_runtime\config\resource_fabric.yaml" @(
    "# QAI Resource Fabric configuration placeholder.",
    "",
    "resource_fabric:",
    "  discovery: enabled",
    "  allocation: contract_driven"
)

Ensure-File "qai_runtime\config\evidence.yaml" @(
    "# QAI Evidence configuration placeholder.",
    "",
    "evidence:",
    "  provenance: true",
    "  metrics: true",
    "  traces: true"
)

Ensure-File "qai_runtime\config\logging.yaml" @(
    "# QAI Runtime logging configuration placeholder.",
    "",
    "logging:",
    "  level: INFO"
)

# ================================================================
# 16. QAI DEVOPS READMES
# ================================================================

Ensure-File "qai_devops\catalog\README.md" @(
    "# Environment Catalog",
    "",
    "Reusable environment definitions and templates."
)

Ensure-File "qai_devops\environment_types\README.md" @(
    "# Environment Types",
    "",
    "Development, test and production environment semantics."
)

Ensure-File "qai_devops\environments\README.md" @(
    "# Deployment Environments",
    "",
    "Logical deployment targets including local, cloud, colocation, client DC, bare metal, HPC, edge and IoT."
)

Ensure-File "qai_devops\projects\README.md" @(
    "# QAI DevOps Projects",
    "",
    "Deployment support boundaries for QAI Lab, FAEP and client projects."
)

Ensure-File "qai_devops\deployment\README.md" @(
    "# QAI DevOps Deployment",
    "",
    "Deployment runners, adapters, validation, promotion and rollback foundations."
)

Ensure-File "qai_devops\manifests\README.md" @(
    "# QAI DevOps Manifests",
    "",
    "Declarative deployment intent and environment/resource requirements."
)

Ensure-File "qai_devops\iac\README.md" @(
    "# Infrastructure as Code",
    "",
    "Infrastructure realization adapters.",
    "",
    "Product-specific implementation is deferred to later phases."
)

Ensure-File "qai_devops\scripts\README.md" @(
    "# QAI DevOps Scripts",
    "",
    "Bootstrap, build, test, deployment, health and rollback script boundaries."
)

Ensure-File "qai_devops\policies\README.md" @(
    "# QAI DevOps Policies"
)

Ensure-File "qai_devops\identities\README.md" @(
    "# QAI DevOps Identities"
)

Ensure-File "qai_devops\secrets\README.md" @(
    "# QAI DevOps Secrets",
    "",
    "Secrets must not be committed to source control.",
    "",
    "Use approved secret providers in later implementation phases."
)

Ensure-File "qai_devops\evidence\README.md" @(
    "# QAI DevOps Evidence",
    "",
    "Deployment and environment evidence."
)

Ensure-File "qai_devops\docs\README.md" @(
    "# QAI DevOps Documentation"
)

# ================================================================
# 17. QAI DEVOPS MANIFESTS
# ================================================================

Ensure-File "qai_devops\manifests\workload.yaml" @(
    "# Logical workload manifest.",
    "# Describes WHAT is required, not a specific infrastructure product.",
    "",
    "workload:",
    "  name: example-workload",
    "  type: generic",
    "  execution_profile: default",
    "",
    "requirements:",
    "  capabilities: []",
    "  constraints: []",
    "",
    "evidence:",
    "  required: true"
)

Ensure-File "qai_devops\manifests\environment\environment.yaml" @(
    "# Environment definition.",
    "# WHAT = environment definition",
    "# WHY  = environment type",
    "# WHERE = deployment target",
    "# HOW = deployment adapter",
    "",
    "environment:",
    "  name: dev",
    "  type: development",
    "  target: local",
    "",
    "runtime:",
    "  mode: development"
)

Ensure-File "qai_devops\manifests\resources\resource_profile.yaml" @(
    "# Product-neutral resource profile.",
    "",
    "resource_profile:",
    "  name: default",
    "",
    "capabilities:",
    "  cpu: true",
    "  gpu: false",
    "  fpga: false",
    "  hpc: false",
    "  qpu: false",
    "  storage: true",
    "  communication: true",
    "",
    "constraints: []"
)

Ensure-File "qai_devops\manifests\runtime\execution_plan.yaml" @(
    "# Runtime execution plan placeholder.",
    "",
    "execution_plan:",
    "  name: example-plan",
    "  stages: []",
    "",
    "routing:",
    "  policy: default",
    "",
    "evidence:",
    "  required: true"
)

Ensure-File "qai_devops\manifests\deployment\deployment.yaml" @(
    "# Deployment intent.",
    "# This is NOT the future Deployment Operator implementation.",
    "",
    "deployment:",
    "  name: example-deployment",
    "  environment: dev",
    "  target: local",
    "",
    "runtime:",
    "  version: 0.1.0"
)

Ensure-File "qai_devops\manifests\release\release.yaml" @(
    "# Release metadata placeholder.",
    "",
    "release:",
    "  name: example-release",
    "  version: 0.1.0",
    "  promotion: manual",
    "  rollback: supported"
)

Ensure-File "qai_devops\manifests\experiment.yaml" @(
    "# Experiment manifest placeholder.",
    "",
    "experiment:",
    "  name: example-experiment",
    "  purpose: validation",
    "",
    "execution:",
    "  mode: simulation",
    "",
    "evidence:",
    "  required: true"
)

Ensure-File "qai_devops\manifests\backend.yaml" @(
    "# Backend declaration placeholder.",
    "",
    "backend:",
    "  name: example-backend",
    "  class: simulator",
    "  adapter: generic"
)

Ensure-File "qai_devops\manifests\evidence.yaml" @(
    "# Evidence manifest placeholder.",
    "",
    "evidence:",
    "  provenance: true",
    "  metrics: true",
    "  traces: true",
    "  artifacts: true"
)

# ================================================================
# 18. ENVIRONMENT VARIABLE TEMPLATES
# ================================================================

Ensure-File "config\env\.env.example" @(
    "# QAI Environment Variables - Example",
    "",
    "QAI_ENVIRONMENT=dev",
    "QAI_PROJECT=qai-platform",
    "QAI_RUNTIME_MODE=development",
    "QAI_LOG_LEVEL=INFO",
    "",
    "QAI_GATEWAY_HOST=127.0.0.1",
    "QAI_GATEWAY_PORT=8000",
    "",
    "QAI_RESOURCE_PROFILE=default",
    "QAI_EXECUTION_PROFILE=default",
    "",
    "QAI_HPC_ADAPTER=generic_scheduler",
    "QAI_QUANTUM_ADAPTER=simulators",
    "QAI_COMMUNICATION_ADAPTER=network_emulator",
    "",
    "QAI_EVIDENCE_PATH=qai://evidence/",
    "QAI_ARTIFACT_PATH=qai://artifacts/",
    "",
    "QAI_SECRET_PROVIDER=none",
    "QAI_DEPLOYMENT_TARGET=local",
    "",
    "# DO NOT place passwords, tokens, API keys or credentials here."
)

Ensure-File "config\env\dev.env.example" @(
    "QAI_ENVIRONMENT=dev",
    "QAI_PROJECT=qai-platform",
    "QAI_RUNTIME_MODE=development",
    "QAI_LOG_LEVEL=DEBUG",
    "QAI_DEPLOYMENT_TARGET=local",
    "QAI_SECRET_PROVIDER=none"
)

Ensure-File "config\env\test.env.example" @(
    "QAI_ENVIRONMENT=test",
    "QAI_PROJECT=qai-platform",
    "QAI_RUNTIME_MODE=test",
    "QAI_LOG_LEVEL=INFO",
    "QAI_DEPLOYMENT_TARGET=local",
    "QAI_SECRET_PROVIDER=external"
)

Ensure-File "config\env\prod.env.example" @(
    "QAI_ENVIRONMENT=prod",
    "QAI_PROJECT=qai-platform",
    "QAI_RUNTIME_MODE=production",
    "QAI_LOG_LEVEL=INFO",
    "QAI_DEPLOYMENT_TARGET=client_dc",
    "QAI_SECRET_PROVIDER=external"
)

# ================================================================
# 19. SECRETS PROTECTION
# ================================================================

Ensure-File "qai_devops\secrets\.gitignore" @(
    "# Never commit secret material.",
    "*",
    "!.gitignore",
    "!README.md"
)

# ================================================================
# 20. ROOT VS CODE CONFIGURATION
# ================================================================

Ensure-File ".vscode\settings.json" @(
    "{",
    '    "files.exclude": {',
    '        "**/__pycache__": true,',
    '        "**/.pytest_cache": true,',
    '        "**/.mypy_cache": true,',
    '        "**/.venv": true',
    "    },",
    '    "search.exclude": {',
    '        "**/.git": true,',
    '        "**/__pycache__": true,',
    '        "**/.pytest_cache": true,',
    '        "**/.venv": true',
    "    },",
    '    "files.trimTrailingWhitespace": true,',
    '    "files.insertFinalNewline": true',
    "}"
)

Ensure-File ".vscode\extensions.json" @(
    "{",
    '    "recommendations": [',
    '        "ms-python.python",',
    '        "ms-python.vscode-pylance",',
    '        "redhat.vscode-yaml",',
    '        "tamasfe.even-better-toml",',
    '        "eamodio.gitlens"',
    "    ]",
    "}"
)

Ensure-File ".vscode\tasks.json" @(
    "{",
    '    "version": "2.0.0",',
    '    "tasks": [',
    "        {",
    '            "label": "QAI: Verify Workspace Foundation",',
    '            "type": "shell",',
    '            "command": "Write-Host ''QAI Phase 1B workspace foundation present.''",',
    '            "problemMatcher": []',
    "        }",
    "    ]",
    "}"
)

Ensure-File ".vscode\launch.json" @(
    "{",
    '    "version": "0.2.0",',
    '    "configurations": []',
    "}"
)

Ensure-File ".vscode\README.md" @(
    "# HoldCo VS Code Configuration",
    "",
    "Phase 1B establishes common VS Code configuration at the HoldCo root.",
    "",
    "The existing workspaces\\HoldCo.code-workspace remains the current primary workspace.",
    "",
    "A separate workspaces\\QAI-Platform.code-workspace is created for focused QAI platform development.",
    "",
    "Phase 1B remains implementation-light."
)

# ================================================================
# 21. QAI PLATFORM WORKSPACE
# ================================================================
# IMPORTANT:
# Existing HoldCo.code-workspace is NOT modified.
# ================================================================

Ensure-File "workspaces\QAI-Platform.code-workspace" @(
    "{",
    '    "folders": [',
    "        {",
    '            "name": "HoldCo",',
    '            "path": ".."',
    "        },",
    "        {",
    '            "name": "QAI Runtime",',
    '            "path": "../qai_runtime"',
    "        },",
    "        {",
    '            "name": "QAI DevOps",',
    '            "path": "../qai_devops"',
    "        },",
    "        {",
    '            "name": "QAI Lab",',
    '            "path": "../qai_lab"',
    "        },",
    "        {",
    '            "name": "General Framework",',
    '            "path": "../general_framework"',
    "        },",
    "        {",
    '            "name": "General Factory",',
    '            "path": "../general_factory"',
    "        }",
    "    ],",
    '    "settings": {',
    '        "files.trimTrailingWhitespace": true,',
    '        "files.insertFinalNewline": true',
    "    }",
    "}"
)

# ================================================================
# 22. RUNTIME DEVELOPMENT DOCUMENTATION
# ================================================================

Ensure-Directory "qai_runtime\docs"

Ensure-File "qai_runtime\docs\README.md" @(
    "# QAI Runtime Development Documentation",
    "",
    "Phase 1B documentation covers:",
    "",
    "- architecture boundaries",
    "- contract boundaries",
    "- deployment compatibility",
    "- environment model",
    "- VS Code development model",
    "- storage architecture",
    "- future Deployment Operator integration",
    "- future FAEP / QAI LabaaS integration",
    "",
    "Implementation begins only after the foundation is verified and committed."
)

Ensure-File "qai_runtime\docs\architecture_boundaries.md" @(
    "# QAI Runtime Architecture Boundaries",
    "",
    "## Runtime",
    "",
    "Executes logical workloads.",
    "",
    "## Resource Fabric",
    "",
    "Discovers and allocates resources according to capabilities and policy.",
    "",
    "## QAI DevOps",
    "",
    "Defines environment and deployment intent.",
    "",
    "## Deployment Operator",
    "",
    "Future layer responsible for orchestrating environment realization and deployment lifecycle.",
    "",
    "It is intentionally NOT implemented in Phase 1B.",
    "",
    "## QAI Lab",
    "",
    "Experiments with and validates Runtime capabilities.",
    "",
    "## QAI LabaaS",
    "",
    "Future client-facing managed development ecosystem.",
    "",
    "## FAEP",
    "",
    "Future ecosystem-level federation and governance layer.",
    "",
    "These layers should integrate through stable contracts rather than direct implementation coupling."
)

Ensure-File "qai_runtime\docs\deployment_operator_compatibility.md" @(
    "# Deployment Operator Compatibility",
    "",
    "Phase 1B must remain compatible with a future Deployment Operator.",
    "",
    "Expected future direction:",
    "",
    "Deployment Operator",
    "        |",
    "        v",
    "    QAI DevOps",
    "        |",
    "        v",
    "   QAI Runtime",
    "        |",
    "        v",
    " Resource Fabric",
    "        |",
    "        v",
    "Physical / Virtual Resources",
    "",
    "Phase 1B therefore defines:",
    "",
    "- environment manifests",
    "- deployment manifests",
    "- resource profiles",
    "- release metadata",
    "- validation boundaries",
    "- rollback boundaries",
    "",
    "The future Deployment Operator is not implemented here.",
    "",
    "The existing HoldCo deployment/ tree is not modified by this bootstrap."
)

Ensure-File "qai_runtime\docs\faep_qai_labaas_compatibility.md" @(
    "# FAEP and QAI LabaaS Compatibility",
    "",
    "QAI Runtime is intended to remain underneath future FAEP and QAI LabaaS layers.",
    "",
    "Conceptual direction:",
    "",
    "FAEP",
    "  |",
    "QAI LabaaS",
    "  |",
    "Client / Project Workspace",
    "  |",
    "Deployment Operator",
    "  |",
    "QAI DevOps",
    "  |",
    "QAI Runtime",
    "  |",
    "Resource Fabric",
    "  |",
    "Physical / Virtual Resources",
    "",
    "QAI Runtime should expose stable contracts for:",
    "",
    "- workload submission",
    "- execution",
    "- resource requirements",
    "- routing",
    "- results",
    "- evidence",
    "- lifecycle",
    "",
    "Client-facing tenancy, ecosystem governance and higher-level orchestration are outside Phase 1B."
)

Ensure-File "qai_runtime\docs\storage_architecture.md" @(
    "# QAI Storage Architecture",
    "",
    "QAI Runtime uses a logical storage abstraction rather than binding applications to one filesystem or cloud storage product.",
    "",
    "## Conceptual Model",
    "",
    "QAI Application",
    "      |",
    "QAI Workflow",
    "      |",
    "QAI Runtime",
    "      |",
    "QAI Storage / Resource Fabric",
    "      |",
    "Storage Adapter",
    "      |",
    "Local / NFS / SMB / SFTP / S3 / GCS / Azure Blob / HPC Storage",
    "",
    "## Logical Namespaces",
    "",
    "- qai://workspace/",
    "- qai://session/",
    "- qai://files/",
    "- qai://artifacts/",
    "- qai://evidence/",
    "- qai://cache/",
    "",
    "Backend selection is determined by deployment requirements, resource capabilities and policy.",
    "",
    "Phase 1B establishes the directory and contract boundary only."
)

# ================================================================
# 23. DEVOPS DOCUMENTATION
# ================================================================

Ensure-File "qai_devops\docs\deployment_lifecycle.md" @(
    "# Deployment Lifecycle Boundary",
    "",
    "Future lifecycle:",
    "",
    "CREATE",
    "  |",
    "CONFIGURE",
    "  |",
    "VALIDATE",
    "  |",
    "PROVISION",
    "  |",
    "DEPLOY",
    "  |",
    "VERIFY",
    "  |",
    "OPERATE",
    "  |",
    "PROMOTE",
    "  |",
    "ROLLBACK",
    "  |",
    "RELEASE",
    "",
    "Phase 1B establishes manifests and folder boundaries only.",
    "",
    "The future Deployment Operator may consume these definitions without requiring QAI Runtime to become a deployment-management system."
)

Ensure-File "qai_devops\docs\environment_model.md" @(
    "# QAI Environment Model",
    "",
    "## Five-Part Model",
    "",
    "WHAT",
    "Environment Definition",
    "",
    "WHY",
    "Environment Type",
    "",
    "WHERE",
    "Deployment Target",
    "",
    "HOW",
    "Deployment Adapter",
    "",
    "WHAT RUNS",
    "QAI Runtime",
    "",
    "## Deployment Targets",
    "",
    "- local",
    "- cloud",
    "- colocation",
    "- client data centre",
    "- bare metal",
    "- HPC",
    "- edge",
    "- IoT",
    "- accelerator / FPGA",
    "- quantum execution environment",
    "",
    "Environment definitions should describe requirements and capabilities rather than hard-code vendor products."
)

# ================================================================
# 24. PHASE 1B STATUS
# ================================================================

Ensure-File "qai_runtime\docs\PHASE_1B_STATUS.md" @(
    "# QAI Runtime Phase 1B",
    "",
    "## Status",
    "",
    "Workspace foundation bootstrap.",
    "",
    "## Included",
    "",
    "- QAI Runtime directory foundation",
    "- QAI Runtime contracts",
    "- QAI Runtime configuration placeholders",
    "- QAI Runtime storage abstraction foundation",
    "- QAI Runtime adapters",
    "- QAI DevOps directory foundation",
    "- environment definitions",
    "- deployment manifests",
    "- resource profiles",
    "- release metadata",
    "- environment variable templates",
    "- VS Code configuration",
    "- focused QAI Platform workspace",
    "- Deployment Operator compatibility boundary",
    "- FAEP / QAI LabaaS compatibility boundary",
    "",
    "## Excluded",
    "",
    "- Runtime Python implementation",
    "- provider-specific Runtime implementation",
    "- cloud deployment automation",
    "- Deployment Operator implementation",
    "- FAEP implementation",
    "- QAI LabaaS tenant implementation",
    "- client production environments",
    "- secrets",
    "- production credentials",
    "",
    "## Suggested Commit",
    "",
    "feat(qai-runtime): establish portable VS Code development foundation"
)

# ================================================================
# 25. VERIFICATION
# ================================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " Phase 1B Verification" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan

$RequiredPaths = @(

    "qai_runtime",
    "qai_runtime\contracts",
    "qai_runtime\planner",
    "qai_runtime\resource_fabric",
    "qai_runtime\workflow",
    "qai_runtime\storage",
    "qai_runtime\storage\adapters",
    "qai_runtime\adapters",
    "qai_runtime\tests",

    "qai_devops",
    "qai_devops\catalog",
    "qai_devops\environment_types",
    "qai_devops\environments",
    "qai_devops\deployment",
    "qai_devops\manifests",
    "qai_devops\iac",
    "qai_devops\scripts",

    "config\env",
    ".vscode",

    "workspaces\HoldCo.code-workspace",
    "workspaces\QAI-Platform.code-workspace"
)

$Verified = 0
$Missing = 0

foreach ($RelativePath in $RequiredPaths) {

    $FullPath = Join-Path $Root $RelativePath

    if (Test-Path -LiteralPath $FullPath) {

        $Verified++

        Write-Host "[OK   ] $RelativePath" -ForegroundColor Green
    }
    else {

        $Missing++

        Write-Host "[MISS ] $RelativePath" -ForegroundColor Red
    }
}

# ================================================================
# 26. PROTECTED STRUCTURE CHECK
# ================================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " Existing Structure Preservation Check" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan

$ProtectedPaths = @(
    "workspaces\HoldCo.code-workspace",
    "workspaces\holdco_v1.0.code-workspace",
    "deployment",
    "qai_lab\communication",
    "qai_lab\computing"
)

foreach ($RelativePath in $ProtectedPaths) {

    $FullPath = Join-Path $Root $RelativePath

    if (Test-Path -LiteralPath $FullPath) {

        Write-Host "[PRESERVE] $RelativePath" -ForegroundColor Yellow
    }
    else {

        Write-Host "[CHECK   ] $RelativePath not found" -ForegroundColor DarkYellow
    }
}

# ================================================================
# 27. FINAL SUMMARY
# ================================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " Phase 1B Bootstrap Summary" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan

Write-Host "Root                   : $Root"
Write-Host "Directories created   : $CreatedDirectories"
Write-Host "Directories existing  : $ExistingDirectories"
Write-Host "Files created         : $CreatedFiles"
Write-Host "Files existing        : $ExistingFiles"
Write-Host "Required paths verified: $Verified"
Write-Host "Required paths missing : $Missing"
Write-Host "Failures              : $Failed"
Write-Host ""

if (($Failed -eq 0) -and ($Missing -eq 0)) {

    Write-Host "SUCCESS: QAI Runtime Phase 1B foundation is complete." -ForegroundColor Green
    Write-Host ""

    Write-Host "Current workspace preserved:" -ForegroundColor Yellow
    Write-Host "  workspaces\HoldCo.code-workspace"
    Write-Host ""

    Write-Host "Focused QAI Platform workspace created:" -ForegroundColor Yellow
    Write-Host "  workspaces\QAI-Platform.code-workspace"
    Write-Host ""

    Write-Host "QAI Storage foundation created:" -ForegroundColor Yellow
    Write-Host "  qai_runtime\storage"
    Write-Host ""

    Write-Host "No Runtime Python implementation was created." -ForegroundColor Yellow
    Write-Host "No existing deployment/ structure was modified." -ForegroundColor Yellow
    Write-Host "No existing qai_lab/ structure was modified." -ForegroundColor Yellow
    Write-Host ""

    Write-Host "Suggested Git commit:" -ForegroundColor Cyan
    Write-Host "  feat(qai-runtime): establish portable VS Code development foundation"
}
else {

    Write-Host "WARNING: Verification detected missing paths or failures." -ForegroundColor Red
    Write-Host "Review the output before committing." -ForegroundColor Red
}

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " End QAI Runtime Phase 1B Bootstrap" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

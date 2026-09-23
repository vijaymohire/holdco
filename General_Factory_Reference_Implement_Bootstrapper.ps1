# ============================================================
# General Factory — Reference Implementations Bootstrapper
# ============================================================
#
# Current execution:
# E:\Bhadale IT\github\holdco
#
# Target:
# E:\Bhadale IT\github\holdco\general_factory\reference_implementations
#
# Future:
# This script can later be moved to:
# E:\Bhadale IT\github\holdco\tools
#
# IMPORTANT:
# - Existing files are never overwritten.
# - Existing reference implementation assets are preserved.
# - This script creates the catalogue structure.
# - Actual implementation samples are added incrementally.
#
# ============================================================

$Root = "E:\Bhadale IT\github\holdco"

$ReferenceRoot = Join-Path `
    $Root `
    "general_factory\reference_implementations"

Write-Host ""
Write-Host "============================================================"
Write-Host " General Factory - Reference Implementations Bootstrapper"
Write-Host "============================================================"
Write-Host ""
Write-Host "HoldCo Root:"
Write-Host "  $Root"
Write-Host ""
Write-Host "Reference Implementations:"
Write-Host "  $ReferenceRoot"
Write-Host ""

# ============================================================
# Validate HoldCo Root
# ============================================================

if (-not (Test-Path -LiteralPath $Root)) {
    Write-Error "HoldCo root does not exist: $Root"
    exit 1
}

# ============================================================
# Helper Functions
# ============================================================

function New-FolderIfMissing {
    param (
        [Parameter(Mandatory = $true)]
        [string]$Path
    )

    if (-not (Test-Path -LiteralPath $Path)) {

        New-Item `
            -ItemType Directory `
            -Path $Path `
            -Force | Out-Null

        Write-Host "[CREATE] $Path"
    }
    else {
        Write-Host "[EXISTS] $Path"
    }
}

function New-FileIfMissing {
    param (
        [Parameter(Mandatory = $true)]
        [string]$Path,

        [Parameter(Mandatory = $true)]
        [string]$Content
    )

    if (-not (Test-Path -LiteralPath $Path)) {

        Set-Content `
            -LiteralPath $Path `
            -Value $Content `
            -Encoding UTF8

        Write-Host "[CREATE] $Path"
    }
    else {
        Write-Host "[EXISTS] $Path"
    }
}

# ============================================================
# Root
# ============================================================

New-FolderIfMissing $ReferenceRoot

# ============================================================
# Common Reference Structure
# ============================================================

$CommonFolders = @(
    "configuration",
    "samples",
    "workflows",
    "deployment",
    "execution",
    "results",
    "evidence"
)

# ============================================================
# Reference Implementation Function
# ============================================================

function New-ReferenceImplementation {

    param (
        [Parameter(Mandatory = $true)]
        [string]$RelativePath,

        [Parameter(Mandatory = $true)]
        [string]$ReferenceId,

        [Parameter(Mandatory = $true)]
        [string]$Name,

        [Parameter(Mandatory = $true)]
        [string]$Description
    )

    $Path = Join-Path `
        $ReferenceRoot `
        $RelativePath

    Write-Host ""
    Write-Host "------------------------------------------------------------"
    Write-Host "Reference: $Name"
    Write-Host "ID:        $ReferenceId"
    Write-Host "Path:      $Path"
    Write-Host "------------------------------------------------------------"

    New-FolderIfMissing $Path

    foreach ($Folder in $CommonFolders) {

        $FolderPath = Join-Path `
            $Path `
            $Folder

        New-FolderIfMissing $FolderPath
    }

    # --------------------------------------------------------
    # README
    # --------------------------------------------------------

    $Readme = @"
# $Name

Reference implementation for the General Factory.

## Reference ID

$ReferenceId

## Purpose

$Description

## Architectural Role

This reference implementation demonstrates how a technology,
sample, external system, development environment, resource,
workflow or execution capability can participate in the
General Factory.

The reference implementation does not redefine the General
Framework. It provides an implementation reference that can
be resolved through Factory capabilities, registries,
connectors, adapters and runtime services.

## Common Structure

- configuration/ — configuration and environment definitions.
- samples/ — sample implementation assets.
- workflows/ — workflow examples and execution definitions.
- deployment/ — deployment examples and profiles.
- execution/ — execution configuration and runtime examples.
- results/ — sample execution results.
- evidence/ — validation, provenance and evidence artifacts.

## Integration Pattern

Framework Capability
        ↓
Factory Registry
        ↓
Connector / Adapter
        ↓
Reference Implementation
        ↓
Execution
        ↓
Results
        ↓
Evidence

## Status

Reference structure established.

Actual implementation assets should be added only when
available and validated.

## Principles

1. Keep the Framework technology-neutral.
2. Do not duplicate existing repositories unnecessarily.
3. Preserve implementation identity.
4. Preserve provenance.
5. Use connectors for access and invocation.
6. Use adapters where contract translation is required.
7. Resolve resources through the Resource Fabric.
8. Capture meaningful results and evidence.
9. Keep simulation, emulation and physical execution distinct.
10. Promote validated samples incrementally.
"@

    New-FileIfMissing `
        (Join-Path $Path "README.md") `
        $Readme

    # --------------------------------------------------------
    # Manifest
    # --------------------------------------------------------

    $Manifest = @"
{
  "reference_id": "$ReferenceId",
  "name": "$Name",
  "description": "$Description",
  "status": "candidate",
  "implementation_type": "reference_implementation",
  "framework_capabilities": [],
  "factory_capabilities": [],
  "connectors": [],
  "adapters": [],
  "runtime": [],
  "backends": [],
  "resources": [],
  "execution_modes": [],
  "configuration": [],
  "workflows": [],
  "deployment": [],
  "results": [],
  "evidence": [],
  "source_references": [],
  "provenance": [],
  "notes": ""
}
"@

    New-FileIfMissing `
        (Join-Path $Path "manifest.json") `
        $Manifest
}

# ============================================================
# EXISTING REFERENCE IMPLEMENTATIONS
# ============================================================

New-ReferenceImplementation `
    "microsoft_fabric\dataflows_gen2" `
    "REF-MSFABRIC-DATAFLOWS-GEN2-001" `
    "Microsoft Fabric Dataflows Gen2" `
    "Reference implementation for Microsoft Fabric Dataflows Gen2 execution."

New-ReferenceImplementation `
    "qai_lab\pipeline_notebook" `
    "REF-QAILAB-GITLAB-GITHUB-NOTEBOOK-001" `
    "QAI Lab Pipeline Notebook" `
    "Reference implementation for QAI experiment execution through the pilot pipeline notebook."

# ============================================================
# WORKFLOW
# ============================================================

New-ReferenceImplementation `
    "workflow\visual_workflow" `
    "REF-WORKFLOW-VISUAL-001" `
    "Visual Workflow" `
    "Reference implementation for visual construction and representation of logical workflows."

New-ReferenceImplementation `
    "workflow\workflow_engine" `
    "REF-WORKFLOW-ENGINE-001" `
    "Workflow Engine" `
    "Reference implementation for workflow validation, orchestration and execution."

New-ReferenceImplementation `
    "workflow\workflow_patterns" `
    "REF-WORKFLOW-PATTERNS-001" `
    "Workflow Patterns" `
    "Reference collection for sequential, parallel, conditional, feedback, approval, open-loop and closed-loop workflows."

# ============================================================
# WORKFLOW DESIGNERS
# ============================================================

New-ReferenceImplementation `
    "workflow_designer\eclipse_glsp" `
    "REF-WORKFLOW-DESIGN-GLSP-001" `
    "Eclipse GLSP" `
    "Reference implementation for graphical workflow and model-based visual editing."

New-ReferenceImplementation `
    "workflow_designer\react_flow" `
    "REF-WORKFLOW-DESIGN-REACTFLOW-001" `
    "React Flow" `
    "Reference implementation for node-based visual workflow and graph editing."

New-ReferenceImplementation `
    "workflow_designer\bpmn" `
    "REF-WORKFLOW-DESIGN-BPMN-001" `
    "BPMN Workflow Designer" `
    "Reference implementation for business process and workflow visualization."

# ============================================================
# IDE / DEVELOPMENT WORKSPACE
# ============================================================

New-ReferenceImplementation `
    "ide\eclipse_che" `
    "REF-IDE-ECLIPSECHE-001" `
    "Eclipse Che" `
    "Reference implementation for cloud development workspaces and IDE-based PaaS engineering."

New-ReferenceImplementation `
    "ide\vscode" `
    "REF-IDE-VSCODE-001" `
    "Visual Studio Code" `
    "Reference implementation for code-centric development workspace integration."

New-ReferenceImplementation `
    "ide\eclipse_theia" `
    "REF-IDE-THEIA-001" `
    "Eclipse Theia" `
    "Reference implementation for extensible browser-based IDE and development workspace integration."

# ============================================================
# QUANTUM
# ============================================================

New-ReferenceImplementation `
    "quantum\qiskit" `
    "REF-QUANTUM-QISKIT-001" `
    "Qiskit" `
    "Reference implementation for quantum circuit and quantum computing workflows."

New-ReferenceImplementation `
    "quantum\qiskit_aer" `
    "REF-QUANTUM-QISKIT-AER-001" `
    "Qiskit Aer" `
    "Reference implementation for quantum circuit simulation and noisy simulation."

New-ReferenceImplementation `
    "quantum\cirq" `
    "REF-QUANTUM-CIRQ-001" `
    "Cirq" `
    "Reference implementation for quantum circuit construction and simulation."

New-ReferenceImplementation `
    "quantum\pennylane" `
    "REF-QUANTUM-PENNYLANE-001" `
    "PennyLane" `
    "Reference implementation for hybrid quantum-classical and quantum machine learning workflows."

New-ReferenceImplementation `
    "quantum\strawberry_fields" `
    "REF-QUANTUM-STRAWBERRYFIELDS-001" `
    "Strawberry Fields" `
    "Reference implementation for photonic quantum computing workflows."

# ============================================================
# AI / MACHINE LEARNING
# ============================================================

New-ReferenceImplementation `
    "ai_ml\mlflow" `
    "REF-AIML-MLFLOW-001" `
    "MLflow" `
    "Reference implementation for AI/ML experiment tracking, model lifecycle and serving integration."

New-ReferenceImplementation `
    "ai_ml\local_inference" `
    "REF-AIML-LOCAL-INFERENCE-001" `
    "Local AI Inference" `
    "Reference implementation for local AI model inference and service execution."

New-ReferenceImplementation `
    "ai_ml\ai_workflow" `
    "REF-AIML-WORKFLOW-001" `
    "AI Workflow" `
    "Reference implementation for AI model, inference, agent and service workflow integration."

# ============================================================
# EMULATION
# ============================================================

New-ReferenceImplementation `
    "emulation\quantum_emulation" `
    "REF-EMU-QUANTUM-001" `
    "Quantum Emulation" `
    "Reference implementation for device-like quantum emulation without physical QPU dependency."

New-ReferenceImplementation `
    "emulation\ai_emulation" `
    "REF-EMU-AI-001" `
    "AI Emulation" `
    "Reference implementation for virtualized AI execution and device/service behaviour."

New-ReferenceImplementation `
    "emulation\virtual_devices" `
    "REF-EMU-VIRTUAL-DEVICES-001" `
    "Virtual Devices" `
    "Reference implementation for virtual sensors, actuators and other executable virtual devices."

# ============================================================
# SIMULATION
# ============================================================

New-ReferenceImplementation `
    "simulation\quantum_simulation" `
    "REF-SIM-QUANTUM-001" `
    "Quantum Simulation" `
    "Reference implementation for quantum simulation backends."

New-ReferenceImplementation `
    "simulation\system_simulation" `
    "REF-SIM-SYSTEM-001" `
    "System Simulation" `
    "Reference implementation for system-level simulation and design-space exploration."

New-ReferenceImplementation `
    "simulation\digital_twin" `
    "REF-SIM-DIGITAL-TWIN-001" `
    "Digital Twin" `
    "Reference implementation for digital-twin-oriented virtual system representation and feedback."

# ============================================================
# RESOURCE BACKENDS
# ============================================================

New-ReferenceImplementation `
    "resource_backends\gpu" `
    "REF-RESOURCE-GPU-001" `
    "GPU Resource" `
    "Reference implementation for GPU computational resource integration."

New-ReferenceImplementation `
    "resource_backends\hpc" `
    "REF-RESOURCE-HPC-001" `
    "HPC Resource" `
    "Reference implementation for HPC computational resource integration."

New-ReferenceImplementation `
    "resource_backends\tpu" `
    "REF-RESOURCE-TPU-001" `
    "TPU Resource" `
    "Reference implementation for TPU computational resource integration."

New-ReferenceImplementation `
    "resource_backends\qpu" `
    "REF-RESOURCE-QPU-001" `
    "QPU Resource" `
    "Reference implementation for external or future physical quantum processing resource integration."

New-ReferenceImplementation `
    "resource_backends\virtual_compute" `
    "REF-RESOURCE-VIRTUAL-001" `
    "Virtual Compute" `
    "Reference implementation for virtual computational resources."

# ============================================================
# CLOUD / DEPLOYMENT
# ============================================================

New-ReferenceImplementation `
    "cloud\azure" `
    "REF-CLOUD-AZURE-001" `
    "Microsoft Azure" `
    "Reference implementation for Azure deployment, compute and resource integration."

New-ReferenceImplementation `
    "cloud\google_cloud" `
    "REF-CLOUD-GCP-001" `
    "Google Cloud" `
    "Reference implementation for Google Cloud deployment and computational resource integration."

New-ReferenceImplementation `
    "cloud\vps" `
    "REF-CLOUD-VPS-001" `
    "Virtual Private Server" `
    "Reference implementation for VPS-based deployment."

# ============================================================
# GIT / EXECUTION
# ============================================================

New-ReferenceImplementation `
    "git_execution\gitlab_runner" `
    "REF-GIT-GITLAB-RUNNER-001" `
    "GitLab Runner" `
    "Reference implementation for controlled notebook, experiment and pipeline execution."

New-ReferenceImplementation `
    "git_execution\github" `
    "REF-GIT-GITHUB-001" `
    "GitHub" `
    "Reference implementation for repository-based source and implementation integration."

# ============================================================
# MICRO-FRONTENDS / CLIENT EXPERIENCE
# ============================================================

New-ReferenceImplementation `
    "micro_frontends\client_views" `
    "REF-UI-CLIENT-VIEWS-001" `
    "Client Views" `
    "Reference implementation for client-specific PaaS/SaaS presentation views."

New-ReferenceImplementation `
    "micro_frontends\workflow_views" `
    "REF-UI-WORKFLOW-VIEWS-001" `
    "Workflow Views" `
    "Reference implementation for workflow visualization and interaction views."

New-ReferenceImplementation `
    "micro_frontends\resource_views" `
    "REF-UI-RESOURCE-VIEWS-001" `
    "Resource Views" `
    "Reference implementation for resource, backend and execution environment views."

# ============================================================
# NOTEBOOKS
# ============================================================

New-ReferenceImplementation `
    "notebooks\jupyter" `
    "REF-NOTEBOOK-JUPYTER-001" `
    "Jupyter Notebook" `
    "Reference implementation for notebook-based experiment and engineering workflows."

New-ReferenceImplementation `
    "notebooks\experiment_notebooks" `
    "REF-NOTEBOOK-EXPERIMENT-001" `
    "Experiment Notebooks" `
    "Reference collection for executable experiment notebooks and reproducible workflows."

# ============================================================
# ROOT README
# ============================================================

$RootReadme = @'
# General Factory — Reference Implementations

Reference implementations demonstrating how General Framework
capabilities can be realized through concrete technologies,
platforms, development environments, resources, workflows and
execution backends.

## Architectural Role

Reference Implementations are implementation references.

They do not redefine the semantic authority of the General
Framework.

They demonstrate how a Framework capability can be implemented,
integrated, executed and evidenced through the General Factory.

## Integration Pattern

Framework Capability
        ↓
Framework Contract
        ↓
Factory Registry
        ↓
Connector / Adapter
        ↓
Reference Implementation
        ↓
Runtime / Resource
        ↓
Execution
        ↓
Results
        ↓
Evidence

## Reference Categories

- microsoft_fabric/
- qai_lab/
- workflow/
- workflow_designer/
- ide/
- quantum/
- ai_ml/
- emulation/
- simulation/
- resource_backends/
- cloud/
- git_execution/
- micro_frontends/
- notebooks/

## Common Reference Structure

reference/
├── README.md
├── manifest.json
├── configuration/
├── samples/
├── workflows/
├── deployment/
├── execution/
├── results/
└── evidence/

## Reference Lifecycle

Candidate
    ↓
Sample Added
    ↓
Integrated
    ↓
Validated
    ↓
Registered
    ↓
Active Reference

## Principles

1. Do not duplicate existing repositories unnecessarily.
2. Reference existing implementations through connectors,
   adapters and bindings.
3. Keep Framework definitions technology-neutral.
4. Preserve implementation identity and provenance.
5. Promote validated samples incrementally.
6. Keep simulation, emulation and physical execution distinct.
7. Keep workflow design separate from workflow execution.
8. Resolve computational resources through the Resource Fabric.
9. Capture results and evidence for meaningful executions.
10. Use reference implementations to inform Factory development,
    not to redefine the Framework.
'@

New-FileIfMissing `
    (Join-Path $ReferenceRoot "README.md") `
    $RootReadme

# ============================================================
# COMPLETION
# ============================================================

Write-Host ""
Write-Host "============================================================"
Write-Host " Bootstrap Complete"
Write-Host "============================================================"
Write-Host ""
Write-Host "Reference Implementation Root:"
Write-Host "  $ReferenceRoot"
Write-Host ""
Write-Host "Existing files were preserved."
Write-Host "Missing folders and files were created."
Write-Host ""
Write-Host "Next step:"
Write-Host "Review the generated tree before adding implementation code."
Write-Host ""

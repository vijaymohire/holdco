# ============================================================
# General Framework + General Factory
# Integration Slice 0
#
# Purpose:
#   Create the new reusable architectural bases for the
#   General Digital Framework and General QAI Factory.
#
# Design principle:
#   Existing projects remain intact.
#   New structures reference and invoke existing assets
#   through registries, interfaces, connectors and adapters.
#
# Root:
#   E:\Bhadale IT\github\holdco
# ============================================================

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# ------------------------------------------------------------
# 1. Root location
# ------------------------------------------------------------

$Root = "E:\Bhadale IT\github\holdco"

if (-not (Test-Path $Root)) {
    throw "HoldCo workspace was not found: $Root"
}

$FrameworkRoot = Join-Path $Root "general_framework"
$FactoryRoot   = Join-Path $Root "general_factory"

Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host " General Framework + General Factory Setup" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Workspace : $Root"
Write-Host ""

# ------------------------------------------------------------
# 2. Helper functions
# ------------------------------------------------------------

function New-Dir {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path
    )

    if (-not (Test-Path $Path)) {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
        Write-Host "Created directory: $Path" -ForegroundColor Green
    }
    else {
        Write-Host "Exists          : $Path" -ForegroundColor DarkGray
    }
}

function New-TextFile {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path,

        [Parameter(Mandatory = $true)]
        [string]$Content
    )

    $Parent = Split-Path -Parent $Path

    if (-not (Test-Path $Parent)) {
        New-Item -ItemType Directory -Path $Parent -Force | Out-Null
    }

    if (-not (Test-Path $Path)) {
        Set-Content -Path $Path -Value $Content -Encoding UTF8
        Write-Host "Created file     : $Path" -ForegroundColor Green
    }
    else {
        Write-Host "File exists      : $Path" -ForegroundColor DarkGray
    }
}

# ------------------------------------------------------------
# 3. GENERAL FRAMEWORK
# ------------------------------------------------------------

$FrameworkDirs = @(
    "foundation",
    "abstractions",
    "architecture",
    "models",
    "problem_definition",
    "mathematics",
    "representations",
    "virtual_assets",
    "interfaces",
    "workflows",
    "fabrics",
    "lifecycle",
    "maturity",
    "governance",
    "security",
    "resources",
    "value",
    "domains",
    "standards",
    "registry"
)

Write-Host ""
Write-Host "Creating GENERAL FRAMEWORK..." -ForegroundColor Yellow

New-Dir $FrameworkRoot

foreach ($Dir in $FrameworkDirs) {
    New-Dir (Join-Path $FrameworkRoot $Dir)
}

# ------------------------------------------------------------
# 4. General Framework README
# ------------------------------------------------------------

$FrameworkReadme = @"
# General Digital / QAI Framework

## Purpose

This repository area defines the reusable architectural and semantic
foundation for the General Digital Framework.

The Framework is the design authority.

It defines:

- abstractions
- architecture
- models
- mathematical formulations
- representations
- virtual assets
- interfaces
- workflows
- Fabrics
- lifecycle
- maturity
- governance
- security
- resources
- value
- domain profiles
- standards alignment
- registries

## Architectural Boundary

The Framework defines WHAT a system, asset, capability, model,
interface or lifecycle element means.

It does not contain the implementation of every technology.

Implementation is provided by the General Factory and existing
repositories/projects.

## Core Principle

Technology implements the architecture rather than defining it.

## Reuse Principle

Existing projects remain independent.

The General Framework references logical capabilities and contracts
that may be implemented elsewhere.

## Realization Principle

A logical asset may have multiple realizations:

Virtual
Simulated
Emulated
HIL / Testbed
Physical
Hybrid

Changing implementation or realization does not automatically
change logical identity.

## General-to-Specific Flow

General Model
    ->
Domain Model
    ->
Target Model
    ->
Simulation / Emulation Configuration
    ->
Experiment Instance

## Relationship to General Factory

General Framework
    ->
defines abstractions and contracts
    ->
General Factory
    ->
binds, instantiates and executes implementations

## Initial Integration Candidates

The first Factory integration candidates are:

1. Microsoft Fabric Dataflows Gen2 working sample
2. QAI Lab / GitLab Runner / GitHub Notebook execution path

These are implementation references, not definitions of the Framework.
"@

New-TextFile `
    -Path (Join-Path $FrameworkRoot "README.md") `
    -Content $FrameworkReadme

# ------------------------------------------------------------
# 5. Framework registry files
# ------------------------------------------------------------

$AssetRegistry = @'
{
  "registry": "asset_registry",
  "version": "0.1.0",
  "purpose": "Canonical logical asset definitions.",
  "assets": []
}
'@

$CapabilityRegistry = @'
{
  "registry": "capability_registry",
  "version": "0.1.0",
  "purpose": "Reusable capability definitions.",
  "capabilities": []
}
'@

$InterfaceRegistry = @'
{
  "registry": "interface_registry",
  "version": "0.1.0",
  "purpose": "Logical interface contracts.",
  "interfaces": []
}
'@

$WorkflowRegistry = @'
{
  "registry": "workflow_registry",
  "version": "0.1.0",
  "purpose": "Logical workflow definitions.",
  "workflows": []
}
'@

$ImplementationRegistry = @'
{
  "registry": "implementation_registry",
  "version": "0.1.0",
  "purpose": "References to implementations provided by the Factory or existing projects.",
  "implementations": []
}
'@

New-TextFile `
    -Path (Join-Path $FrameworkRoot "registry\asset_registry.json") `
    -Content $AssetRegistry

New-TextFile `
    -Path (Join-Path $FrameworkRoot "registry\capability_registry.json") `
    -Content $CapabilityRegistry

New-TextFile `
    -Path (Join-Path $FrameworkRoot "registry\interface_registry.json") `
    -Content $InterfaceRegistry

New-TextFile `
    -Path (Join-Path $FrameworkRoot "registry\workflow_registry.json") `
    -Content $WorkflowRegistry

New-TextFile `
    -Path (Join-Path $FrameworkRoot "registry\implementation_registry.json") `
    -Content $ImplementationRegistry

# ------------------------------------------------------------
# 6. Framework directory README files
# ------------------------------------------------------------

$FrameworkReadmes = @{
    "foundation" = @"
# Foundation

Core principles, terminology, assumptions and design guardrails
for the General Framework.
"@
    "abstractions" = @"
# Abstractions

Reusable abstract entities such as:

Actor
Asset
Capability
Function
Process
Workflow
State
Event
Command
Relationship
Resource
Service
"@
    "architecture" = @"
# Architecture

Conceptual, logical, system, enterprise, solution and
system-of-systems architecture definitions and views.
"@
    "models" = @"
# Models

Reusable system, CPS, Digital Twin, behavioural, performance,
QAI and domain-independent models.
"@
    "problem_definition" = @"
# Problem Definition

Defines how real-world problems are represented before
technology or solver selection.
"@
    "mathematics" = @"
# Mathematics

Reusable mathematical formulations including analytical,
deterministic, stochastic, statistical, optimisation, graph,
nonlinear, tensor, manifold and quantum formulations.
"@
    "representations" = @"
# Representations

Problem and system representations including graphs,
tensors, vectors, embeddings, manifolds, quaternions,
feature spaces and quantum encodings.
"@
    "virtual_assets" = @"
# Virtual Assets

Definitions of reusable virtual assets and their possible
simulation, emulation, HIL and physical realizations.
"@
    "interfaces" = @"
# Interfaces

Logical interface contracts for data, control, software,
hardware, quantum, timing and protocols.
"@
    "workflows" = @"
# Workflows

Logical workflow semantics, task semantics, state transitions,
feedback, approval and orchestration patterns.
"@
    "fabrics" = @"
# Fabrics

General Fabric architecture including metadata, viewpoints,
governance, identity, authorization, approval, data/control
planes and intelligence.
"@
    "lifecycle" = @"
# Lifecycle

Reusable engineering, operational and product lifecycle definitions.
"@
    "maturity" = @"
# Maturity

Model, software, hardware, product and virtual-to-physical
maturity definitions.
"@
    "governance" = @"
# Governance

General governance, policy, decision, review and approval structures.
"@
    "security" = @"
# Security

Reusable security, privacy, safety, risk, sovereignty and audit concepts.
"@
    "resources" = @"
# Resources

Compute, memory, storage, network, energy, quantum and human resource models.
"@
    "value" = @"
# Value

Value models, KPIs, economic measures, sustainability and value gates.
"@
    "domains" = @"
# Domains

Domain profiles and reusable domain-specific adaptation mechanisms.
"@
    "standards" = @"
# Standards

Standards and methodology alignment references including systems
engineering, MBSE, UAF, Digital Twin, CPS, AI and quantum.
"@
    "registry" = @"
# Registry

Canonical registries connecting logical definitions to Factory
implementations, interfaces, versions and lifecycle state.
"@
}

foreach ($Key in $FrameworkReadmes.Keys) {
    New-TextFile `
        -Path (Join-Path $FrameworkRoot "$Key\README.md") `
        -Content $FrameworkReadmes[$Key]
}

# ------------------------------------------------------------
# 7. GENERAL FACTORY
# ------------------------------------------------------------

$FactoryDirs = @(
    "factory_core",
    "framework_runtime",
    "asset_runtime",
    "connectors",
    "adapters",
    "interfaces",
    "experimentation",
    "fabric_runtime",
    "reference_implementations",
    "evidence",
    "registry"
)

Write-Host ""
Write-Host "Creating GENERAL FACTORY..." -ForegroundColor Yellow

New-Dir $FactoryRoot

foreach ($Dir in $FactoryDirs) {
    New-Dir (Join-Path $FactoryRoot $Dir)
}

# ------------------------------------------------------------
# 8. Factory subdirectories
# ------------------------------------------------------------

$FactorySubDirs = @(
    "connectors\github",
    "connectors\gitlab",
    "connectors\local",
    "connectors\cloud",
    "adapters\github",
    "adapters\gitlab",
    "adapters\local",
    "adapters\technology",
    "experimentation\experiments",
    "experimentation\notebooks",
    "experimentation\scenarios",
    "experimentation\executions",
    "experimentation\results",
    "fabric_runtime\data_plane",
    "fabric_runtime\control_plane",
    "fabric_runtime\viewpoints",
    "reference_implementations\microsoft_fabric\dataflows_gen2",
    "reference_implementations\qai_lab\pipeline_notebook",
    "evidence\experiment_records",
    "evidence\provenance"
)

foreach ($Dir in $FactorySubDirs) {
    New-Dir (Join-Path $FactoryRoot $Dir)
}

# ------------------------------------------------------------
# 9. Factory README
# ------------------------------------------------------------

$FactoryReadme = @"
# General QAI Factory

## Purpose

The General Factory is the implementation and execution authority
for the reusable General Framework.

The Factory does not redefine the logical architecture.

It:

- loads Framework definitions
- resolves logical assets and capabilities
- binds implementations
- connects to existing repositories
- instantiates virtual assets
- invokes external implementations
- executes experiments
- integrates Fabrics
- captures evidence
- maintains implementation bindings

## Architectural Boundary

General Framework
    ->
defines WHAT
    ->
General Factory
    ->
implements HOW

## Existing Asset Reuse

Existing repositories remain independent.

Examples include:

- QAI Base
- QAI Governance
- QAI Lab
- QAI Foundry
- HoldCo Factory
- other GitHub / GitLab projects

The Factory should access these through:

- registries
- interfaces
- connectors
- adapters
- APIs
- execution contracts

Duplication is not the default strategy.

## Initial Integration Slice

The first two implementation candidates are:

1. Microsoft Fabric Dataflows Gen2
2. QAI Lab experiment / QAI pipeline / GitLab Runner / GitHub Notebook

## First Call Pattern

Framework Registry
    ->
Capability
    ->
Implementation Binding
    ->
Connector
    ->
Adapter
    ->
Existing Implementation
    ->
Execution
    ->
Result
    ->
Evidence / Provenance

## Future Expansion

Additional implementation bindings may later include:

- QAI Runtime
- QAI Compiler
- QAI Language
- QAI Processor
- QAI Memory
- QAI Hub
- QAI Router
- QAI Switch
- QAI Cloud
- simulation engines
- emulators
- Digital Twin platforms
- HPC
- QPU backends
- domain implementations
"@

New-TextFile `
    -Path (Join-Path $FactoryRoot "README.md") `
    -Content $FactoryReadme

# ------------------------------------------------------------
# 10. Factory registry
# ------------------------------------------------------------

$RuntimeBindings = @'
{
  "registry": "factory_runtime_bindings",
  "version": "0.1.0",
  "purpose": "Maps Framework capabilities to executable implementations.",
  "bindings": []
}
'@

New-TextFile `
    -Path (Join-Path $FactoryRoot "registry\runtime_bindings.json") `
    -Content $RuntimeBindings

# ------------------------------------------------------------
# 11. Factory core READMEs
# ------------------------------------------------------------

$FactoryReadmes = @{
    "factory_core" = @"
# Factory Core

Common configuration, lifecycle, orchestration, scheduling,
resource management and shared Factory services.
"@
    "framework_runtime" = @"
# Framework Runtime

Loads Framework definitions and resolves models, contracts,
policies and versions for execution.
"@
    "asset_runtime" = @"
# Asset Runtime

Instantiates and manages executable virtual assets,
relationships, state and lifecycle.
"@
    "connectors" = @"
# Connectors

Connectors provide access to existing repositories,
services, platforms or local implementations.

A connector should focus on access and invocation.
It should not redefine business logic.
"@
    "adapters" = @"
# Adapters

Adapters translate General Factory contracts to the interfaces
of existing implementation assets.

This protects the Framework from technology-specific interfaces.
"@
    "interfaces" = @"
# Runtime Interfaces

Executable implementations of logical interface contracts.
"@
    "experimentation" = @"
# Experimentation

Factory-managed experiment definitions, notebooks, scenarios,
executions and results.
"@
    "fabric_runtime" = @"
# Fabric Runtime

Implementation-side Fabric capabilities including:

- data plane
- control plane
- viewpoints
- metadata hooks
- governance hooks
- authorization / approval integration
"@
    "reference_implementations" = @"
# Reference Implementations

Technology-specific working examples used to test the General
Framework and General Factory architecture.

These remain references and do not become the architecture authority.
"@
    "evidence" = @"
# Evidence

Execution records, experiment evidence, provenance and
reproducibility records.
"@
    "registry" = @"
# Factory Registry

Implementation-oriented registries and runtime bindings.
"@
}

foreach ($Key in $FactoryReadmes.Keys) {
    New-TextFile `
        -Path (Join-Path $FactoryRoot "$Key\README.md") `
        -Content $FactoryReadmes[$Key]
}

# ------------------------------------------------------------
# 12. Connector READMEs
# ------------------------------------------------------------

New-TextFile `
    -Path (Join-Path $FactoryRoot "connectors\github\README.md") `
    -Content @"
# GitHub Connector

Purpose:
Access GitHub-hosted source repositories, notebooks, releases,
artifacts or other registered assets.

Initial role:
Reference the Phase 3-12 Digital Farm notebook implementation.

No repository contents are copied automatically.
"@

New-TextFile `
    -Path (Join-Path $FactoryRoot "connectors\gitlab\README.md") `
    -Content @"
# GitLab Connector

Purpose:
Access GitLab repositories, runners and registered execution assets.

Initial role:
Reference the QAI Lab pipeline / GitLab Runner execution path.
"@

New-TextFile `
    -Path (Join-Path $FactoryRoot "connectors\local\README.md") `
    -Content @"
# Local Connector

Access locally available implementation repositories and assets.

Use for controlled local development and testing.
"@

New-TextFile `
    -Path (Join-Path $FactoryRoot "connectors\cloud\README.md") `
    -Content @"
# Cloud Connector

Placeholder for future cloud service integrations.
"@

# ------------------------------------------------------------
# 13. Adapter READMEs
# ------------------------------------------------------------

New-TextFile `
    -Path (Join-Path $FactoryRoot "adapters\github\README.md") `
    -Content @"
# GitHub Adapter

Translates Factory execution and artifact contracts into
GitHub-hosted implementation access.
"@

New-TextFile `
    -Path (Join-Path $FactoryRoot "adapters\gitlab\README.md") `
    -Content @"
# GitLab Adapter

Translates Factory execution contracts into GitLab repository
and Runner operations.
"@

New-TextFile `
    -Path (Join-Path $FactoryRoot "adapters\local\README.md") `
    -Content @"
# Local Adapter

Maps Factory contracts to local implementations during the
initial integration and development stages.
"@

New-TextFile `
    -Path (Join-Path $FactoryRoot "adapters\technology\README.md") `
    -Content @"
# Technology Adapters

Technology-specific bindings belong here.

Examples:

- Microsoft Fabric
- Digital Twin platforms
- simulation platforms
- quantum platforms
- HPC
- cloud services

Technology must implement defined Factory contracts.
"@

# ------------------------------------------------------------
# 14. Microsoft Fabric reference implementation
# ------------------------------------------------------------

$FabricManifest = @'
{
  "implementation_id": "REF-MSFABRIC-DATAFLOWS-GEN2-001",
  "name": "Microsoft Fabric Dataflows Gen2 Reference",
  "category": "reference_implementation",
  "technology": "Microsoft Fabric",
  "capability": "FABRIC_DATAFLOW_EXECUTION",
  "scope": "Data ingestion, transformation and pipeline execution example",
  "status": "REFERENCE",
  "source_type": "existing_user_working_sample",
  "factory_role": "integration_candidate",
  "architecture_role": "implementation_reference",
  "copy_policy": "reference_only",
  "notes": [
    "Do not redefine General Fabric architecture from this sample.",
    "Use it to test connector, adapter and evidence patterns.",
    "Source working package remains outside this new architecture unless explicitly linked."
  ]
}
'@

New-TextFile `
    -Path (Join-Path $FactoryRoot "reference_implementations\microsoft_fabric\dataflows_gen2\manifest.json") `
    -Content $FabricManifest

New-TextFile `
    -Path (Join-Path $FactoryRoot "reference_implementations\microsoft_fabric\dataflows_gen2\README.md") `
    -Content @"
# Microsoft Fabric Dataflows Gen2 Reference

## Purpose

Working Microsoft Fabric example used as the first Factory
integration candidate for data/control implementation.

## Demonstrated Pattern

Source
  ->
Dataflow Gen2
  ->
Transformation
  ->
Lakehouse
  ->
Pipeline
  ->
Execution
  ->
Verification

## Factory Test

Framework capability:
FABRIC_DATAFLOW_EXECUTION

Factory integration:
connector -> adapter -> implementation

## Important Boundary

This sample is an implementation reference.

It does not define the complete QAI Fabric architecture,
metadata model, viewpoints, governance model, authorization
or approval model.

Those belong to the General Framework and Fabric Runtime design.
"@

# ------------------------------------------------------------
# 15. QAI Lab reference implementation
# ------------------------------------------------------------

$QaiLabManifest = @'
{
  "implementation_id": "REF-QAILAB-GITLAB-GITHUB-NOTEBOOK-001",
  "name": "QAI Lab Pipeline and Notebook Reference",
  "category": "reference_implementation",
  "technology": "GitLab Runner + GitHub Notebook",
  "capability": "QAI_EXPERIMENT_EXECUTION",
  "scope": "QAI Lab pipeline execution and notebook-based experiment",
  "status": "REFERENCE",
  "source_type": "existing_user_working_sample",
  "factory_role": "integration_candidate",
  "architecture_role": "implementation_reference",
  "execution_path": [
    "General Factory",
    "GitLab connector",
    "GitLab Runner",
    "QAI pipeline",
    "GitHub-hosted notebook",
    "Experiment result",
    "Evidence / provenance"
  ],
  "copy_policy": "reference_only",
  "notes": [
    "Notebook remains a pilot candidate.",
    "Do not copy the notebook source into the General Factory unless required.",
    "Factory should invoke the existing implementation through an interface."
  ]
}
'@

New-TextFile `
    -Path (Join-Path $FactoryRoot "reference_implementations\qai_lab\pipeline_notebook\manifest.json") `
    -Content $QaiLabManifest

New-TextFile `
    -Path (Join-Path $FactoryRoot "reference_implementations\qai_lab\pipeline_notebook\README.md") `
    -Content @"
# QAI Lab Pipeline / Notebook Reference

## Purpose

First computational integration candidate for the General Factory.

The existing QAI Lab experiment uses:

- QAI pipeline
- GitLab Runner
- GitHub-hosted notebook
- experiment execution
- results
- evidence

## Factory Test

Framework capability:
QAI_EXPERIMENT_EXECUTION

Expected path:

General Framework
    ->
Factory Registry
    ->
QAI Experiment Implementation
    ->
GitLab Connector
    ->
Runner
    ->
Notebook
    ->
Result
    ->
Evidence

## Pilot Relationship

The existing Phase 3-12 Digital Farm notebook remains a pilot
candidate and can be invoked as an implementation.

The notebook is not the definition of the General Factory.
"@

# ------------------------------------------------------------
# 16. Integration Slice 0 record
# ------------------------------------------------------------

$IntegrationSlice = @"
# Integration Slice 0

## Objective

Prove that the General Framework and General Factory can reference
and invoke existing implementation assets without copying their
architecture or source code.

## Candidate 1

Microsoft Fabric Dataflows Gen2

Capability:
FABRIC_DATAFLOW_EXECUTION

Expected:
Framework contract
  ->
Factory binding
  ->
Connector
  ->
Adapter
  ->
Fabric implementation
  ->
Result
  ->
Evidence

## Candidate 2

QAI Lab / GitLab Runner / GitHub Notebook

Capability:
QAI_EXPERIMENT_EXECUTION

Expected:
Framework contract
  ->
Factory binding
  ->
GitLab connector
  ->
Runner
  ->
Notebook
  ->
Experiment result
  ->
Evidence

## Success Condition

The General Factory can identify an existing implementation,
bind to it through a defined contract and retrieve a result.

## Non-Goals

- repository migration
- repository duplication
- redesign of existing projects
- full Factory implementation
- production deployment
- physical QAI hardware
"@

New-TextFile `
    -Path (Join-Path $FactoryRoot "integration_slice_0.md") `
    -Content $IntegrationSlice

# ------------------------------------------------------------
# 17. Final structure report
# ------------------------------------------------------------

Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host " Setup Complete" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "General Framework:" -ForegroundColor Yellow
Write-Host "  $FrameworkRoot"

Write-Host ""
Write-Host "General Factory:" -ForegroundColor Yellow
Write-Host "  $FactoryRoot"

Write-Host ""
Write-Host "Initial reference implementations:" -ForegroundColor Yellow
Write-Host "  Microsoft Fabric Dataflows Gen2"
Write-Host "  QAI Lab / GitLab Runner / GitHub Notebook"

Write-Host ""
Write-Host "Existing repositories were NOT modified or copied." -ForegroundColor Green
Write-Host ""

Write-Host "First validation command:" -ForegroundColor Yellow
Write-Host "  Get-ChildItem `"$FrameworkRoot`" -Recurse | Select-Object FullName"
Write-Host "  Get-ChildItem `"$FactoryRoot`" -Recurse | Select-Object FullName"
Write-Host ""

Write-Host "Next step: review the generated structure before adding connectors or API calls." -ForegroundColor Cyan

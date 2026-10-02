# ============================================================
# COMMON WEB PLATFORM MICRO-ARCHITECTURE
# Framework + Factory
#
# Purpose:
#   Create the common Web Platform architecture outside the
#   Pilot / Post-Pilot asset structures.
#
#   Pilot and Post-Pilot implementations may use this common
#   Web Platform architecture, but the architecture itself is
#   not owned by either lifecycle stage.
#
# Existing files are NOT deleted or overwritten.
# ============================================================

$HoldcoRoot = "E:\Bhadale IT\github\holdco"

$FrameworkRoot = Join-Path $HoldcoRoot "general_framework"
$FactoryRoot   = Join-Path $HoldcoRoot "general_factory"

$FrameworkWebRoot = Join-Path $FrameworkRoot "web_platform"
$FactoryWebRoot   = Join-Path $FactoryRoot "web_platform"

# ============================================================
# Helper Functions
# ============================================================

function New-FolderIfMissing {
    param (
        [string]$Path
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
        Write-Host "CREATED : $Path" -ForegroundColor Green
    }
    else {
        Write-Host "EXISTS  : $Path" -ForegroundColor DarkGray
    }
}

function New-FileIfMissing {
    param (
        [string]$Path,
        [string]$Content
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        Set-Content `
            -LiteralPath $Path `
            -Value $Content `
            -Encoding UTF8

        Write-Host "CREATED : $Path" -ForegroundColor Cyan
    }
    else {
        Write-Host "EXISTS  : $Path" -ForegroundColor DarkGray
    }
}

# ============================================================
# START
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Yellow
Write-Host "COMMON WEB PLATFORM MICRO-ARCHITECTURE" -ForegroundColor Yellow
Write-Host "============================================================" -ForegroundColor Yellow

# ============================================================
# 1. GENERAL FRAMEWORK - COMMON WEB PLATFORM
# ============================================================

$FrameworkFolders = @(
    "architecture",
    "access_model",
    "saas",
    "paas",
    "micro_frontends",
    "web_shell",
    "api_gateway",
    "services",
    "role_model",
    "workspace_model",
    "tenant_model",
    "security",
    "deployment"
)

Write-Host ""
Write-Host "GENERAL FRAMEWORK - WEB PLATFORM" -ForegroundColor Yellow

foreach ($Folder in $FrameworkFolders) {
    New-FolderIfMissing (
        Join-Path $FrameworkWebRoot $Folder
    )
}

# ------------------------------------------------------------
# Framework README
# ------------------------------------------------------------

$FrameworkReadme = @'
# General Framework - Common Web Platform

## Purpose

The Common Web Platform defines the technology-neutral
architecture and contracts through which users and external
systems interact with the General Framework and General Factory.

This Web Platform is common infrastructure.

It is intentionally located outside:

- pilot_assets
- post_pilot_assets

Pilot and post-pilot applications may consume this architecture
without duplicating it.

## Architectural Role

The Web Platform is the experience and access architecture.

It provides the logical structure for:

- Web Shell
- Micro-frontends
- API Gateway
- Services
- SaaS
- PaaS
- Access Model
- Roles
- Workspaces
- Tenancy
- Security
- Deployment

## SaaS

SaaS provides controlled consumption of platform capabilities.

Concept:

User
  |
  v
Web Shell
  |
  v
SaaS Experience
  |
  v
API Gateway
  |
  v
Platform Services
  |
  v
General Factory

SaaS is primarily oriented toward consuming existing
capabilities.

## PaaS

PaaS provides a controlled project environment in which
technical users can build new capabilities.

Concept:

User
  |
  v
Web Shell
  |
  v
PaaS Experience
  |
  v
Project Workspace
  |
  +-- Browser IDE
  +-- Source / Code
  +-- Workflow
  +-- Custom Functions
  +-- Interfaces
  +-- Virtual Assets
  +-- Data
  +-- Models
  +-- Simulation
  +-- Emulation
  +-- GPU
  +-- HPC
  +-- Quantum Simulator
  +-- QPU Connections

## Lifecycle Boundary

The Web Platform architecture is common.

Implementations using this architecture may be classified as:

- Pilot
- Post-Pilot

The lifecycle classification belongs to the consuming asset,
application or implementation, not to the common Web Platform
architecture itself.

## Framework Boundary

This directory defines:

- logical architecture
- contracts
- access models
- role models
- workspace models
- tenant models
- SaaS/PaaS concepts
- interface boundaries
- security requirements
- deployment concepts

Vendor-specific implementation belongs in the General Factory.

## Architectural Principle

Common Web Platform Architecture
        |
        +-- Pilot implementations
        |
        +-- Post-Pilot implementations

Do not duplicate the Web Platform architecture under
pilot_assets or post_pilot_assets.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "README.md") `
    $FrameworkReadme

# ============================================================
# 2. FRAMEWORK ARCHITECTURE README
# ============================================================

$FrameworkArchitectureReadme = @'
# Web Platform Architecture

## Logical Architecture

The Common Web Platform provides the external interaction
boundary for the General Framework and General Factory.

Conceptual structure:

                        WEB PLATFORM
                              |
              +---------------+---------------+
              |                               |
             SaaS                            PaaS
              |                               |
       Use the Platform              Build on the Platform
              |                               |
       API-driven Experience          Project Workspace
              |                               |
              +---------------+---------------+
                              |
                         API Gateway
                              |
                         Services
                              |
                       General Factory
                              |
                       General Framework

## Major Architectural Components

### Web Shell

Common entry point and navigation environment.

### Micro-frontends

Composable user experiences for independent platform
capabilities.

### API Gateway

Controlled service access boundary.

### Services

Business and platform services exposed through APIs.

### SaaS

Controlled consumption of platform capabilities.

### PaaS

Controlled engineering and development environment.

### Workspace

Logical project environment containing code, data, workflows,
models, virtual assets and execution resources.

### Tenant

Logical isolation boundary for organizations and clients.

### Roles

Defines access according to user responsibility.

### Security

Authentication, authorization, policy and security controls.

### Deployment

Logical deployment requirements and realization models.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "architecture\README.md") `
    $FrameworkArchitectureReadme

# ============================================================
# 3. FRAMEWORK SAAS README
# ============================================================

$SaasReadme = @'
# SaaS - Framework Definition

SaaS provides controlled consumption of QAI and General Factory
capabilities.

## Primary Users

Examples include:

- Executives
- Business Analysts
- Domain Experts
- Innovation Teams
- Researchers
- Data Scientists

## Characteristics

- API-driven interaction
- Controlled workflows
- Managed capabilities
- Role-based access
- Workspace/project context
- Evidence and result access
- No requirement to expose internal Factory implementation

SaaS is primarily:

"Use the platform."
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "saas\README.md") `
    $SaasReadme

# ============================================================
# 4. FRAMEWORK PAAS README
# ============================================================

$PaasReadme = @'
# PaaS - Framework Definition

PaaS provides a controlled engineering environment in which
technical users can build, test and deploy capabilities on top
of the QAI platform.

## Primary Users

Examples include:

- QAI Developers
- Data Scientists
- Software Engineers
- Systems Engineers
- Researchers
- Technical Architects

## PaaS Project Workspace

A project workspace may contain:

- Project Definition
- Source Code
- Custom Functions
- Workflow
- Virtual Assets
- Virtual CPS
- Data
- Models
- Interfaces
- Ports
- Network Definitions
- Software Profiles
- Hardware Profiles
- Experiments
- Simulation
- Emulation
- Quantum Resources
- GPU Resources
- HPC Resources
- Tests
- Evidence
- Deployment Configuration

## PaaS Principle

PaaS is not merely a richer SaaS interface.

PaaS provides a real project environment in which users can
build new capabilities.

PaaS is primarily:

"Build on the platform."
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "paas\README.md") `
    $PaasReadme

# ============================================================
# 5. FRAMEWORK MICRO-FRONTENDS README
# ============================================================

$MicroFrontendReadme = @'
# Micro-frontends - Framework Definition

Micro-frontends provide a composable user experience model.

Individual platform capabilities may expose independent
front-end modules while participating in a common Web Shell.

Examples may include:

- Dashboard
- Project Management
- Workflow Designer
- Experiment Manager
- Virtual Asset Manager
- Simulation Environment
- Resource Manager
- Evidence Viewer
- Deployment Manager
- Administration

Micro-frontends are an experience architecture.

They are not the implementation of the QAI runtime itself.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "micro_frontends\README.md") `
    $MicroFrontendReadme

# ============================================================
# 6. FRAMEWORK WEB SHELL README
# ============================================================

$WebShellReadme = @'
# Web Shell - Framework Definition

The Web Shell provides the common application container for
Web Platform experiences.

Responsibilities include:

- Navigation
- Identity context
- Tenant context
- Project context
- Role context
- Micro-frontend composition
- Common notifications
- Common session context

The Web Shell does not own the business logic of individual
platform capabilities.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "web_shell\README.md") `
    $WebShellReadme

# ============================================================
# 7. FRAMEWORK API GATEWAY README
# ============================================================

$ApiGatewayReadme = @'
# API Gateway - Framework Definition

The API Gateway is the controlled service boundary between Web
Platform experiences and platform services.

Logical responsibilities include:

- API routing
- Authentication context
- Authorization enforcement
- Rate control
- Request validation
- Service discovery
- Tenant context
- Project context
- Audit/evidence hooks

The Gateway does not replace the Factory runtime.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "api_gateway\README.md") `
    $ApiGatewayReadme

# ============================================================
# 8. FRAMEWORK SERVICES README
# ============================================================

$ServicesReadme = @'
# Services - Framework Definition

Defines logical platform service boundaries.

Potential service domains include:

- Identity
- Project Management
- Experiment Management
- Workflow
- Virtual Assets
- Resource Management
- Simulation
- Quantum Resources
- Evidence
- Deployment
- Administration

Specific implementation technologies belong in the Factory.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "services\README.md") `
    $ServicesReadme

# ============================================================
# 9. FRAMEWORK ACCESS MODEL
# ============================================================

$AccessReadme = @'
# Access Model - Framework Definition

Defines logical access patterns for the Web Platform.

Access should be controlled by:

- Identity
- Tenant
- Role
- Project
- Capability
- Policy
- Authorization
- Environment

The model supports separation between platform administration,
business consumption and technical engineering.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "access_model\README.md") `
    $AccessReadme

# ============================================================
# 10. FRAMEWORK ROLE MODEL
# ============================================================

$RoleReadme = @'
# Role Model - Framework Definition

Initial logical role categories include:

- Executive
- Business Analyst
- Domain Expert
- Innovation
- Data Scientist
- QAI Developer
- Software Engineer
- Systems Engineer
- Platform Administrator
- Operations

Roles define responsibility and access boundaries.

Actual authorization policies are implemented by the Factory.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "role_model\README.md") `
    $RoleReadme

# ============================================================
# 11. FRAMEWORK WORKSPACE MODEL
# ============================================================

$WorkspaceReadme = @'
# Workspace Model - Framework Definition

A workspace is a logical isolation and collaboration boundary.

A project workspace may contain:

- Code
- Data
- Models
- Workflows
- Virtual Assets
- Experiments
- Resources
- Interfaces
- Results
- Evidence
- Deployment configuration

The physical realization of the workspace belongs to the
General Factory.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "workspace_model\README.md") `
    $WorkspaceReadme

# ============================================================
# 12. FRAMEWORK TENANT MODEL
# ============================================================

$TenantReadme = @'
# Tenant Model - Framework Definition

Defines logical tenant isolation for organizations and clients.

Tenant context may apply to:

- Users
- Projects
- Workspaces
- Data
- Experiments
- Resources
- APIs
- Evidence
- Deployment

The model supports progression from shared hosted workspaces
to dedicated and private client deployments.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "tenant_model\README.md") `
    $TenantReadme

# ============================================================
# 13. FRAMEWORK SECURITY
# ============================================================

$SecurityReadme = @'
# Security - Framework Definition

Defines Web Platform security requirements.

Logical concerns include:

- Authentication
- Authorization
- Tenant isolation
- Project isolation
- Secrets management
- API security
- Data protection
- Audit
- Evidence
- Policy enforcement

Implementation technologies are selected by the Factory.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "security\README.md") `
    $SecurityReadme

# ============================================================
# 14. FRAMEWORK DEPLOYMENT
# ============================================================

$DeploymentReadme = @'
# Web Platform Deployment - Framework Definition

Defines logical deployment models for the Web Platform.

Potential realization levels include:

- Hosted shared platform
- Dedicated client workspace
- Private client deployment
- Hybrid cloud
- HPC-connected environment
- QPU-connected environment
- Enterprise / bare-metal deployment

The Framework defines requirements.

The Factory provides the realization.
'@

New-FileIfMissing `
    (Join-Path $FrameworkWebRoot "deployment\README.md") `
    $DeploymentReadme

# ============================================================
# 15. GENERAL FACTORY - COMMON WEB PLATFORM
# ============================================================

$FactoryFolders = @(
    "web_shell",
    "micro_frontends",
    "api_gateway",
    "services",
    "authentication",
    "authorization",
    "workspace_manager",
    "tenant_manager",
    "paas",
    "saas",
    "deployment"
)

Write-Host ""
Write-Host "GENERAL FACTORY - WEB PLATFORM" -ForegroundColor Yellow

foreach ($Folder in $FactoryFolders) {
    New-FolderIfMissing (
        Join-Path $FactoryWebRoot $Folder
    )
}

# ============================================================
# 16. FACTORY WEB PLATFORM README
# ============================================================

$FactoryReadme = @'
# General Factory - Common Web Platform

## Purpose

Contains the implementation side of the Common Web Platform.

This directory is common infrastructure and is intentionally
outside:

- pilot_assets
- post_pilot_assets

Individual pilot and post-pilot applications may use these
services and components.

## Factory Responsibilities

The Factory realizes the Framework Web Platform definitions.

Potential implementation areas include:

- Web Shell
- Micro-frontends
- API Gateway
- Authentication
- Authorization
- Platform Services
- Workspace Management
- Tenant Management
- SaaS
- PaaS
- Deployment

## Boundary

Framework:

Defines WHAT the Web Platform is.

Factory:

Implements HOW the Web Platform works.

Pilot/Post-Pilot:

Classifies the applications, products or deployment assets
that consume the common Web Platform.
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "README.md") `
    $FactoryReadme

# ============================================================
# 17. FACTORY WEB SHELL
# ============================================================

$FactoryWebShell = @'
# Web Shell - Factory Implementation

Implementation area for the common Web Shell.

The Web Shell provides:

- Navigation
- Identity context
- Tenant context
- Project context
- Role context
- Micro-frontend composition
- Common session management

Technology selection belongs to the Factory implementation.
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "web_shell\README.md") `
    $FactoryWebShell

# ============================================================
# 18. FACTORY MICRO-FRONTENDS
# ============================================================

$FactoryMicroFrontend = @'
# Micro-frontends - Factory Implementation

Implementation area for composable Web Platform front-end
modules.

Individual modules may later be implemented independently
while remaining integrated through the common Web Shell.
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "micro_frontends\README.md") `
    $FactoryMicroFrontend

# ============================================================
# 19. FACTORY API GATEWAY
# ============================================================

$FactoryApiGateway = @'
# API Gateway - Factory Implementation

Implementation area for the Web Platform API Gateway.

The implementation may provide:

- Routing
- Authentication integration
- Authorization integration
- Tenant context
- Project context
- API validation
- Service discovery
- Rate control
- Audit hooks
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "api_gateway\README.md") `
    $FactoryApiGateway

# ============================================================
# 20. FACTORY SERVICES
# ============================================================

$FactoryServices = @'
# Services - Factory Implementation

Implementation area for Web Platform services.

Services should remain modular and independently evolvable.

Potential services include:

- Identity
- Project Management
- Experiment Management
- Workflow
- Virtual Assets
- Resource Management
- Simulation
- Quantum Resources
- Evidence
- Deployment
- Administration
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "services\README.md") `
    $FactoryServices

# ============================================================
# 21. FACTORY AUTHENTICATION
# ============================================================

$FactoryAuthentication = @'
# Authentication - Factory Implementation

Implementation area for identity authentication.

The implementation should support the Framework access model
without binding the Framework itself to a specific identity
provider.
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "authentication\README.md") `
    $FactoryAuthentication

# ============================================================
# 22. FACTORY AUTHORIZATION
# ============================================================

$FactoryAuthorization = @'
# Authorization - Factory Implementation

Implementation area for role, tenant, project and capability
authorization.

Authorization policies should be traceable to the logical
Framework access and role model.
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "authorization\README.md") `
    $FactoryAuthorization

# ============================================================
# 23. FACTORY WORKSPACE MANAGER
# ============================================================

$FactoryWorkspace = @'
# Workspace Manager - Factory Implementation

Implementation area for project workspace lifecycle.

Potential responsibilities:

- Create workspace
- Configure workspace
- Provision workspace
- Manage storage
- Connect source
- Connect runtime
- Manage project resources
- Suspend/resume workspace
- Archive workspace

The workspace may eventually contain:

CPU
GPU
HPC
QAI Runtime
Quantum Simulator
Network
Storage
IDE
Workflow Runtime
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "workspace_manager\README.md") `
    $FactoryWorkspace

# ============================================================
# 24. FACTORY TENANT MANAGER
# ============================================================

$FactoryTenant = @'
# Tenant Manager - Factory Implementation

Implementation area for tenant lifecycle and isolation.

Potential responsibilities:

- Tenant creation
- Tenant configuration
- Tenant resource allocation
- Tenant isolation
- Tenant administration
- Tenant lifecycle
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "tenant_manager\README.md") `
    $FactoryTenant

# ============================================================
# 25. FACTORY PaaS
# ============================================================

$FactoryPaaS = @'
# PaaS - Factory Implementation

Implementation area for the real technical project environment.

Potential implementation components include:

- Project workspace manager
- Browser IDE integration
- Remote runtime
- Terminal
- Code execution
- Workflow runtime
- Custom function runtime
- Package management
- Interface management
- Resource provisioning
- Simulation runtime
- Quantum simulator runtime
- QPU connections
- GPU/HPC connections
- Persistent project storage

The PaaS environment is a controlled engineering workspace.

It is not simply a web page.
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "paas\README.md") `
    $FactoryPaaS

# ============================================================
# 26. FACTORY SaaS
# ============================================================

$FactorySaaS = @'
# SaaS - Factory Implementation

Implementation area for controlled platform consumption.

The SaaS layer may expose:

- Dashboards
- Project views
- Experiment management
- Workflow execution
- Results
- Evidence
- Reports
- Administration

Business logic remains in platform services rather than being
duplicated in the front-end.
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "saas\README.md") `
    $FactorySaaS

# ============================================================
# 27. FACTORY DEPLOYMENT
# ============================================================

$FactoryDeployment = @'
# Web Platform Deployment - Factory Implementation

Implementation area for realizing Web Platform deployment
profiles.

Potential deployment targets include:

- VPS
- Cloud
- Dedicated environment
- Private cloud
- Hybrid cloud
- Bare metal
- Enterprise environment

The implementation should preserve the Framework abstraction
while allowing technology-specific bindings.
'@

New-FileIfMissing `
    (Join-Path $FactoryWebRoot "deployment\README.md") `
    $FactoryDeployment

# ============================================================
# 28. FINAL STRUCTURE VERIFICATION
# ============================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Green
Write-Host "WEB PLATFORM STRUCTURE VERIFICATION" -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Green

Write-Host ""
Write-Host "GENERAL FRAMEWORK - WEB PLATFORM" -ForegroundColor Cyan

Get-ChildItem `
    -LiteralPath $FrameworkWebRoot `
    -Recurse |
    Select-Object FullName |
    ForEach-Object {
        Write-Host $_.FullName
    }

Write-Host ""
Write-Host "GENERAL FACTORY - WEB PLATFORM" -ForegroundColor Cyan

Get-ChildItem `
    -LiteralPath $FactoryWebRoot `
    -Recurse |
    Select-Object FullName |
    ForEach-Object {
        Write-Host $_.FullName
    }

Write-Host ""
Write-Host "============================================================" -ForegroundColor Green
Write-Host "COMMON WEB PLATFORM CREATION COMPLETE" -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Green

Write-Host ""
Write-Host "Important:" -ForegroundColor Yellow
Write-Host "The Web Platform is common architecture."
Write-Host "Pilot/Post-Pilot classification applies to consuming assets,"
Write-Host "not to this common Web Platform structure."
Write-Host ""

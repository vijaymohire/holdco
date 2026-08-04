# ==========================================================
# HoldCo Repository Bootstrap v1.0
# Creates the initial folder structure and documentation
# ==========================================================

Write-Host ""
Write-Host "==========================================="
Write-Host " HoldCo Repository Bootstrap"
Write-Host "==========================================="
Write-Host ""

# Root Path
$Root = "E:\Bhadale IT\github\holdco"

#------------------------------------------------------------
# Folder Structure
#------------------------------------------------------------

$Folders = @(

# Organization
"organization",
"organization/board",
"organization/executive",
"organization/policies",

# Subsidiaries
"subsidiaries",
"subsidiaries/academy",
"subsidiaries/research",
"subsidiaries/platform",
"subsidiaries/products",
"subsidiaries/operations",
"subsidiaries/shared_services",

# Enterprise Bootstrap
"enterprise_bootstrap",
"enterprise_bootstrap/profiles",
"enterprise_bootstrap/templates",
"enterprise_bootstrap/scripts",

# Blueprints
"blueprints",
"blueprints/startup",
"blueprints/research",
"blueprints/university",
"blueprints/enterprise",
"blueprints/holdco",

# Shared Services
"shared_services",
"shared_services/identity",
"shared_services/security",
"shared_services/knowledge",
"shared_services/governance",

# Operations
"operations",
"operations/deployment",
"operations/monitoring",
"operations/observability",
"operations/runbooks",

# Marketplace
"marketplace",
"marketplace/catalog",
"marketplace/offerings",
"marketplace/partners",

# Deployment
"deployment",
"deployment/cloud",
"deployment/edge",
"deployment/onprem",
"deployment/hybrid",

# Governance
"governance",
"governance/control_planes",
"governance/capability_fabrics",
"governance/policies",

# Enterprise OS
"enterprise_os",
"enterprise_os/coreos",
"enterprise_os/adaptive_overlay",
"enterprise_os/gateway_fabric",

# Workspaces
"workspaces",

# Documentation
"docs",
"docs/architecture",
"docs/operations",
"docs/reference_architecture",

# Examples
"examples",

# Assets
"assets",
"assets/images",
"assets/diagrams"
)

foreach($Folder in $Folders)
{
    New-Item `
        -ItemType Directory `
        -Force `
        -Path (Join-Path $Root $Folder) | Out-Null
}

#------------------------------------------------------------
# Root Files
#------------------------------------------------------------

$Files = @(
"README.md",
"START_HERE.md",
"ARCHITECTURE.md",
"ROADMAP.md",
"CHANGELOG.md",
"CONTRIBUTING.md",
"WORKSPACE.md",
"LICENSE"
)

foreach($File in $Files)
{
    New-Item `
        -ItemType File `
        -Force `
        -Path (Join-Path $Root $File) | Out-Null
}

#------------------------------------------------------------
# Create README placeholders
#------------------------------------------------------------

$Readmes = @(
"organization",
"subsidiaries",
"enterprise_bootstrap",
"blueprints",
"shared_services",
"operations",
"marketplace",
"deployment",
"governance",
"enterprise_os",
"docs",
"examples",
"assets"
)

foreach($Folder in $Readmes)
{
    $Path = Join-Path $Root $Folder
    New-Item `
        -ItemType File `
        -Force `
        -Path (Join-Path $Path "README.md") | Out-Null
}

Write-Host ""
Write-Host "HoldCo repository initialized successfully."
Write-Host ""
Write-Host "Root : $Root"
Write-Host ""
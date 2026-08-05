# ==========================================================
# HoldCo Blueprint & Organization Bootstrap
# Version : 2.0
# ==========================================================

$Root = "E:\Bhadale IT\github\holdco"

Write-Host ""
Write-Host "========================================"
Write-Host " HoldCo Enterprise Blueprint Generator"
Write-Host "========================================"
Write-Host ""

# ----------------------------------------------------------
# Blueprint Library
# ----------------------------------------------------------

$Folders = @(

# Blueprint Library

"blueprints",

"blueprints/holdco",
"blueprints/subsidiary",
"blueprints/startup",
"blueprints/university",
"blueprints/research",
"blueprints/platform",
"blueprints/products",
"blueprints/operations",
"blueprints/consulting",
"blueprints/managed_services",
"blueprints/marketplace",
"blueprints/customer",
"blueprints/regional",
"blueprints/factory",
"blueprints/smart_city",
"blueprints/digital_valley",
"blueprints/space_operations",

# Enterprise Hierarchy

"enterprise_hierarchy",

"enterprise_hierarchy/global",
"enterprise_hierarchy/region",
"enterprise_hierarchy/country",
"enterprise_hierarchy/holdco",
"enterprise_hierarchy/subsidiary",
"enterprise_hierarchy/city",
"enterprise_hierarchy/valley",
"enterprise_hierarchy/factory",
"enterprise_hierarchy/autonomous_zone",

# Organizational Domains

"organization/executive",
"organization/business_units",
"organization/shared_services",
"organization/innovation",

# Subsidiaries

"subsidiaries/academy",
"subsidiaries/research",
"subsidiaries/platform",
"subsidiaries/products",
"subsidiaries/operations",
"subsidiaries/consulting",
"subsidiaries/venture_studio",
"subsidiaries/marketplace",
"subsidiaries/shared_services",

# Deployment Domains

"deployment/space",
"deployment/region",
"deployment/country",
"deployment/valley",
"deployment/city",
"deployment/factory",
"deployment/autonomous_zone",
"deployment/datacenter",
"deployment/cloud",
"deployment/edge",

# Enterprise OS

"enterprise_os/control_planes",
"enterprise_os/capability_fabrics",
"enterprise_os/gateway_fabric",
"enterprise_os/adaptive_overlay",
"enterprise_os/coreos",

# Bootstrap

"enterprise_bootstrap/generators",
"enterprise_bootstrap/profiles",
"enterprise_bootstrap/templates",
"enterprise_bootstrap/examples",

# Documentation

"docs/reference_architecture",
"docs/blueprints",
"docs/deployment",
"docs/operations",

# Assets

"assets/diagrams",
"assets/images",
"assets/icons"

)

foreach($Folder in $Folders)
{
    New-Item `
        -ItemType Directory `
        -Force `
        -Path (Join-Path $Root $Folder) | Out-Null
}

# ----------------------------------------------------------
# README Files
# ----------------------------------------------------------

$ReadmeFolders = @(

"blueprints",
"enterprise_hierarchy",
"deployment",
"enterprise_bootstrap",
"enterprise_os",
"subsidiaries",
"organization",
"docs"

)

foreach($Folder in $ReadmeFolders)
{
    New-Item `
        -ItemType File `
        -Force `
        -Path (Join-Path $Root $Folder "README.md") | Out-Null
}

Write-Host ""
Write-Host "HoldCo Blueprint Library initialized successfully."
Write-Host ""
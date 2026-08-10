# ==========================================================
# HoldCo Enterprise Alignment Workspace Generator
# Version : 1.0
# Purpose : Create Enterprise Alignment folders/files
# ==========================================================

$Root = "E:\Bhadale IT\github\holdco"

$Folders = @(
    "enterprise_alignment",

    "enterprise_alignment\capability_architecture",
    "enterprise_alignment\repository_alignment",
    "enterprise_alignment\workspace_alignment",
    "enterprise_alignment\framework_alignment",
    "enterprise_alignment\product_alignment",
    "enterprise_alignment\operations_alignment",
    "enterprise_alignment\legacy_assets",
    "enterprise_alignment\gap_analysis",
    "enterprise_alignment\roadmap",

    "enterprise_alignment\capability_catalog",
    "enterprise_alignment\domain_models",
    "enterprise_alignment\repository_registry",
    "enterprise_alignment\workspace_registry",
    "enterprise_alignment\reference_models",
    "enterprise_alignment\diagrams",
    "enterprise_alignment\images",
    "enterprise_alignment\templates"
)

foreach ($folder in $Folders)
{
    New-Item -ItemType Directory -Force -Path (Join-Path $Root $folder) | Out-Null
}

$Files = @(

    "enterprise_alignment\README.md",

    "enterprise_alignment\ENTERPRISE_ALIGNMENT.md",

    "enterprise_alignment\ENTERPRISE_CAPABILITY_ARCHITECTURE.md",

    "enterprise_alignment\ENTERPRISE_CAPABILITY_CATALOG.md",

    "enterprise_alignment\ENTERPRISE_DOMAIN_MODEL.md",

    "enterprise_alignment\ENTERPRISE_REFERENCE_MODEL.md",

    "enterprise_alignment\ENTERPRISE_ALIGNMENT_ROADMAP.md",

    "enterprise_alignment\capability_architecture\README.md",
    "enterprise_alignment\capability_architecture\business_capabilities.md",
    "enterprise_alignment\capability_architecture\engineering_capabilities.md",
    "enterprise_alignment\capability_architecture\runtime_capabilities.md",
    "enterprise_alignment\capability_architecture\operations_capabilities.md",
    "enterprise_alignment\capability_architecture\knowledge_capabilities.md",
    "enterprise_alignment\capability_architecture\commercialization_capabilities.md",

    "enterprise_alignment\repository_alignment\README.md",
    "enterprise_alignment\repository_alignment\github_mapping.md",
    "enterprise_alignment\repository_alignment\gitlab_mapping.md",
    "enterprise_alignment\repository_alignment\repository_dependencies.md",
    "enterprise_alignment\repository_alignment\repository_interfaces.md",

    "enterprise_alignment\workspace_alignment\README.md",
    "enterprise_alignment\workspace_alignment\vscode_workspaces.md",
    "enterprise_alignment\workspace_alignment\workspace_dependencies.md",
    "enterprise_alignment\workspace_alignment\workspace_bootstrap.md",

    "enterprise_alignment\framework_alignment\README.md",
    "enterprise_alignment\framework_alignment\enterprise_frameworks.md",
    "enterprise_alignment\framework_alignment\engineering_frameworks.md",
    "enterprise_alignment\framework_alignment\runtime_frameworks.md",
    "enterprise_alignment\framework_alignment\governance_frameworks.md",

    "enterprise_alignment\product_alignment\README.md",
    "enterprise_alignment\product_alignment\products.md",
    "enterprise_alignment\product_alignment\services.md",
    "enterprise_alignment\product_alignment\product_foundry.md",
    "enterprise_alignment\product_alignment\marketplace.md",

    "enterprise_alignment\operations_alignment\README.md",
    "enterprise_alignment\operations_alignment\holdco.md",
    "enterprise_alignment\operations_alignment\subsidiaries.md",
    "enterprise_alignment\operations_alignment\factory.md",
    "enterprise_alignment\operations_alignment\city.md",
    "enterprise_alignment\operations_alignment\valley.md",
    "enterprise_alignment\operations_alignment\ecosystem.md",

    "enterprise_alignment\legacy_assets\README.md",
    "enterprise_alignment\legacy_assets\erp_mapping.md",
    "enterprise_alignment\legacy_assets\tto_mapping.md",
    "enterprise_alignment\legacy_assets\research_mapping.md",
    "enterprise_alignment\legacy_assets\existing_frameworks.md",

    "enterprise_alignment\gap_analysis\README.md",
    "enterprise_alignment\gap_analysis\identified_gaps.md",
    "enterprise_alignment\gap_analysis\future_work.md",

    "enterprise_alignment\roadmap\README.md",
    "enterprise_alignment\roadmap\sprint4_alignment.md",
    "enterprise_alignment\roadmap\future_alignment.md",

    "enterprise_alignment\repository_registry\README.md",
    "enterprise_alignment\workspace_registry\README.md",
    "enterprise_alignment\capability_catalog\README.md",
    "enterprise_alignment\domain_models\README.md",
    "enterprise_alignment\reference_models\README.md",

    "enterprise_alignment\templates\README.md"
)

foreach ($file in $Files)
{
    $path = Join-Path $Root $file

    if (!(Test-Path $path))
    {
        New-Item -ItemType File -Force -Path $path | Out-Null
    }
}

Write-Host ""
Write-Host "==============================================" -ForegroundColor Green
Write-Host " HoldCo Enterprise Alignment Workspace Ready" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Green
Write-Host ""
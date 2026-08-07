# ================================================================
# HoldCo Enterprise Knowledge Foundation Bootstrap v2.0
# Creates Enterprise Knowledge, Innovation and Discovery Structure
# Safe to run multiple times
# ================================================================

$Root = Get-Location

Write-Host ""
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host " HoldCo Enterprise Knowledge Foundation Bootstrap"
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host ""

# ------------------------------------------------------
# Folder Structure
# ------------------------------------------------------

$Folders = @(

# Existing

"implementation_discovery",
"implementation_discovery/github",
"implementation_discovery/gitlab",
"implementation_discovery/capability_registry",

"enterprise_patterns",

# NEW

"knowledge_assets",

"knowledge_assets/products",
"knowledge_assets/services",
"knowledge_assets/modernization",
"knowledge_assets/research",
"knowledge_assets/frameworks",
"knowledge_assets/publications",
"knowledge_assets/notebooks",
"knowledge_assets/images",
"knowledge_assets/courses",

"innovation_assets",

"innovation_assets/patent_registry",
"innovation_assets/research",
"innovation_assets/products",
"innovation_assets/frameworks",
"innovation_assets/algorithms",
"innovation_assets/publications",
"innovation_assets/technology_transfer",

"implementation_discovery/architecture_mapping",
"implementation_discovery/sprint_history",
"implementation_discovery/research_assets"

)

foreach($folder in $Folders)
{
    if(!(Test-Path $folder))
    {
        New-Item -ItemType Directory -Path $folder | Out-Null
        Write-Host "[Created] $folder" -ForegroundColor Green
    }
    else
    {
        Write-Host "[Exists ] $folder" -ForegroundColor Yellow
    }
}

# ------------------------------------------------------
# Markdown Placeholder Files
# ------------------------------------------------------

$Files = @(

# =====================================================
# Knowledge Assets
# =====================================================

"knowledge_assets/README.md",
"knowledge_assets/knowledge_inventory.md",
"knowledge_assets/architecture_assets.md",
"knowledge_assets/engineering_assets.md",
"knowledge_assets/product_catalogs.md",
"knowledge_assets/service_catalogs.md",
"knowledge_assets/modernization_catalogs.md",
"knowledge_assets/research_catalogs.md",
"knowledge_assets/framework_catalogs.md",
"knowledge_assets/publications.md",
"knowledge_assets/notebooks.md",
"knowledge_assets/images.md",
"knowledge_assets/courses.md",

# =====================================================
# Innovation Assets
# =====================================================

"innovation_assets/README.md",
"innovation_assets/innovation_inventory.md",
"innovation_assets/patent_candidates.md",
"innovation_assets/innovation_pipeline.md",
"innovation_assets/research_candidates.md",
"innovation_assets/product_candidates.md",
"innovation_assets/capability_candidates.md",
"innovation_assets/technology_transfer_candidates.md",
"innovation_assets/innovation_roadmap.md",

"innovation_assets/patent_registry/README.md",
"innovation_assets/patent_registry/classification.md",
"innovation_assets/patent_registry/maturity_levels.md",
"innovation_assets/patent_registry/commercialization.md",
"innovation_assets/patent_registry/portfolio.md",

# =====================================================
# Architecture Mapping
# =====================================================

"implementation_discovery/architecture_mapping/README.md",
"implementation_discovery/architecture_mapping/mera_mapping.md",
"implementation_discovery/architecture_mapping/efm_mapping.md",
"implementation_discovery/architecture_mapping/eop_mapping.md",
"implementation_discovery/architecture_mapping/ai_neem_mapping.md",
"implementation_discovery/architecture_mapping/ecef_mapping.md",

# =====================================================
# Sprint History
# =====================================================

"implementation_discovery/sprint_history/README.md",
"implementation_discovery/sprint_history/sprint_summary.md",
"implementation_discovery/sprint_history/architectural_evolution.md",
"implementation_discovery/sprint_history/important_decisions.md",

# =====================================================
# Research Assets
# =====================================================

"implementation_discovery/research_assets/README.md",
"implementation_discovery/research_assets/quantum_assets.md",
"implementation_discovery/research_assets/algorithms.md",
"implementation_discovery/research_assets/notebooks.md",
"implementation_discovery/research_assets/colab_assets.md",

# =====================================================
# Enterprise Patterns
# =====================================================

"enterprise_patterns/README.md",
"enterprise_patterns/capability_patterns.md",
"enterprise_patterns/orchestration_patterns.md",
"enterprise_patterns/notebook_patterns.md",
"enterprise_patterns/pipeline_patterns.md",
"enterprise_patterns/runtime_patterns.md",
"enterprise_patterns/metadata_patterns.md",
"enterprise_patterns/control_plane_patterns.md",
"enterprise_patterns/agent_patterns.md",
"enterprise_patterns/prompt_patterns.md",
"enterprise_patterns/rag_patterns.md",
"enterprise_patterns/qai_patterns.md"

)

foreach($file in $Files)
{
    if(!(Test-Path $file))
    {
        $Title = [System.IO.Path]::GetFileNameWithoutExtension($file)

@"
# $Title

**Status:** Draft

---

## Purpose

_TODO_

---

## Inventory

_TODO_

---

## Notes

_TODO_

---

## References

_TODO_

"@ | Set-Content $file -Encoding UTF8

        Write-Host "[Created] $file" -ForegroundColor Green
    }
    else
    {
        Write-Host "[Exists ] $file" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host " Enterprise Knowledge Foundation Created"
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Next Enterprise Discovery Phases" -ForegroundColor Green
Write-Host "--------------------------------"
Write-Host "1. Repository Discovery"
Write-Host "2. Knowledge Discovery"
Write-Host "3. Innovation Discovery"
Write-Host "4. Capability Discovery"
Write-Host "5. Pattern Discovery"
Write-Host "6. Enterprise Mapping"
Write-Host "7. Enterprise Factory Implementation"
Write-Host ""

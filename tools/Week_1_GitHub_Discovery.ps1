# ================================================================
# HoldCo - Week 1 GitHub Discovery Bootstrap
# Creates discovery records for unmapped GitHub repositories
# Existing files are NEVER overwritten.
# ================================================================

$Root = Get-Location
$GithubDiscovery = Join-Path $Root "implementation_discovery\github"

Write-Host ""
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host " HoldCo - Week 1 GitHub Discovery Bootstrap"
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host ""

# ---------------------------------------------------------------
# Ensure target directory exists
# ---------------------------------------------------------------

if (!(Test-Path $GithubDiscovery)) {
    New-Item -ItemType Directory -Path $GithubDiscovery -Force | Out-Null
    Write-Host "[Created] implementation_discovery\github" -ForegroundColor Green
}
else {
    Write-Host "[Exists ] implementation_discovery\github" -ForegroundColor Yellow
}

# ---------------------------------------------------------------
# Unmapped GitHub repositories
# ---------------------------------------------------------------

$Repositories = @(
    "qai_product_foundry",
    "qai_os",
    "qai_datacenter",
    "qai_processor",
    "qai_products_services",
    "qai_catalogues",
    "qai_poc",
    "qai_poc_lab",
    "mit_courses",
    "universalquantum",
    "2030_and_beyond_tech",
    "2030_and_beyond_products",
    "2030_and_beyond_services",
    "humanoids_cobots",
    "organization_frameworks",
    "org_to_ops_framework",
    "digital_xfm_agile_org",
    "national_governance_frameworks",
    "patent_registry",
    "business_plan",
    "investor_relations"
)

# ---------------------------------------------------------------
# Create individual discovery files
# ---------------------------------------------------------------

foreach ($repo in $Repositories) {

    $file = Join-Path $GithubDiscovery "$repo.md"

    if (!(Test-Path $file)) {

        $title = ($repo -replace "_", " ")

        $content = @(
            "# $title",
            "",
            "**Discovery Status:** Unmapped — Initial Discovery",
            "**Source:** GitHub",
            "**Repository:** $repo",
            "**Priority:** TBD",
            "**Asset Class:** TBD",
            "",
            "---",
            "",
            "## 1. Purpose",
            "",
            "Capture relevant enterprise knowledge, engineering assets, research, innovation, products, services, frameworks, algorithms, or reusable capabilities contained in this GitHub repository.",
            "",
            "This document is a discovery record and does not modify or replace the source repository.",
            "",
            "## 2. Repository Overview",
            "",
            "**Repository:** $repo",
            "",
            "**GitHub URL:** TBD",
            "",
            "**Primary Domain:** TBD",
            "",
            "**Repository Status:** TBD",
            "",
            "**Historical / Current:** TBD",
            "",
            "## 3. Key Assets",
            "",
            "_TODO — Identify important folders, documents, notebooks, source code, datasets, frameworks, demonstrations, configurations, or other assets._",
            "",
            "## 4. Enterprise Capabilities",
            "",
            "_TODO — Identify reusable enterprise capabilities represented by this repository._",
            "",
            "- Product",
            "- Service",
            "- Research",
            "- Engineering",
            "- Runtime",
            "- Experiment",
            "- Automation",
            "- Knowledge",
            "- Innovation",
            "- Framework",
            "- Algorithm",
            "",
            "## 5. Products and Services",
            "",
            "_TODO_",
            "",
            "## 6. Research and Innovation",
            "",
            "_TODO_",
            "",
            "## 7. Notebooks and Experiments",
            "",
            "_TODO_",
            "",
            "## 8. Runtime and Technology",
            "",
            "_TODO_",
            "",
            "## 9. AI-NEEM Alignment",
            "",
            "_TODO — Map relevant capabilities to AI-NEEM._",
            "",
            "- Human Augmentation",
            "- System Augmentation",
            "- Governed Automation",
            "- Intent-Driven Execution",
            "- Notebook-First Engineering",
            "- Event-Driven Execution",
            "- AI-Native Interfaces",
            "- Human Authority",
            "",
            "## 10. ECEF Alignment",
            "",
            "_TODO — Identify current or potential Capability Extension Models._",
            "",
            "- AI",
            "- GenAI",
            "- Agentic AI",
            "- QAI",
            "- Quantum Simulation",
            "- Virtual Qubits",
            "- QAGI",
            "- QASI",
            "- FTQC",
            "- Digital Twin",
            "- Robotics",
            "- Scientific Computing",
            "",
            "## 11. Enterprise Factory Relevance",
            "",
            "_TODO_",
            "",
            "## 12. Relationships",
            "",
            "_TODO — Identify relationships with other repositories, products, projects, patents, research, frameworks, or HoldCo documents._",
            "",
            "## 13. Maturity Assessment",
            "",
            "**Discovery Level:** TBD",
            "",
            "**Engineering Maturity:** TBD",
            "",
            "**Reuse Potential:** TBD",
            "",
            "**Strategic Importance:** TBD",
            "",
            "## 14. Recommended Action",
            "",
            "_TODO_",
            "",
            "- Deep Discovery",
            "- Extract Knowledge",
            "- Extract Capability",
            "- Extract Pattern",
            "- Map to Product",
            "- Map to Innovation",
            "- Map to ECEF",
            "- Preserve as Historical Asset",
            "- Archive / Reference Only",
            "",
            "## 15. References",
            "",
            "_TODO_",
            ""
        ) -join "`r`n"

        Set-Content -Path $file -Value $content -Encoding UTF8

        Write-Host "[Created] $repo.md" -ForegroundColor Green
    }
    else {
        Write-Host "[Exists ] $repo.md" -ForegroundColor Yellow
    }
}

# ---------------------------------------------------------------
# Create master discovery matrix
# ---------------------------------------------------------------

$MatrixFile = Join-Path $GithubDiscovery "github_discovery_matrix.md"

if (!(Test-Path $MatrixFile)) {

    $matrix = @(
        "# GitHub Discovery Matrix",
        "",
        "**Discovery Phase:** Week 1 — GitHub Discovery",
        "**Status:** Active",
        "**Scope:** Legacy / Unmapped GitHub Repository Landscape",
        "",
        "---",
        "",
        "## 1. Purpose",
        "",
        "Master inventory for GitHub repositories requiring discovery within the HoldCo Enterprise Knowledge Foundation.",
        "",
        "Repositories already represented by local workspaces, uploaded snapshots, or existing HoldCo discovery records are not duplicated as active discovery targets.",
        "",
        "## 2. Discovery Status",
        "",
        "| Status | Meaning |",
        "|---|---|",
        "| Mapped | Already represented by current HoldCo/local workspace discovery |",
        "| Unmapped | Requires discovery |",
        "| In Discovery | Currently being reviewed |",
        "| Extracted | Relevant knowledge/assets captured |",
        "| Capability Identified | Reusable enterprise capability identified |",
        "| Pattern Identified | Reusable engineering/architecture pattern identified |",
        "| Reference | Useful historical/reference material |",
        "| Archive | Preserved but not currently relevant |",
        "",
        "## 3. First Discovery Wave",
        "",
        "| Repository | Domain | Priority | Asset Class | Status | Deep Dive |",
        "|---|---|---:|---|---|---|",
        "| qai_product_foundry | QAI / Factory | P0 | Product Engineering / Foundry | Unmapped | Yes |",
        "| qai_os | QAI / Platform | P0 | Runtime / Platform | Unmapped | Yes |",
        "| qai_datacenter | QAI / Infrastructure | P1 | Infrastructure | Unmapped | Yes |",
        "| qai_processor | QAI / Computing | P1 | Processor / Computing | Unmapped | Yes |",
        "| qai_products_services | QAI / Commercial | P1 | Products / Services | Unmapped | Yes |",
        "| qai_catalogues | QAI / Commercial | P1 | Catalogues | Unmapped | Yes |",
        "| qai_poc | QAI / Research | P1 | Proof of Concept | Unmapped | Yes |",
        "| qai_poc_lab | QAI / Research | P1 | Laboratory | Unmapped | Yes |",
        "| mit_courses | Knowledge / Education | P1 | Courses / Learning | Unmapped | Yes |",
        "| universalquantum | Quantum / Research | P1 | Quantum Research | Unmapped | Yes |",
        "| 2030_and_beyond_tech | Innovation | P1 | Future Technology | Unmapped | Yes |",
        "| 2030_and_beyond_products | Innovation / Products | P1 | Future Products | Unmapped | Yes |",
        "| 2030_and_beyond_services | Innovation / Services | P1 | Future Services | Unmapped | Yes |",
        "| humanoids_cobots | Robotics | P2 | Robotics | Unmapped | Review |",
        "| organization_frameworks | Enterprise Architecture | P1 | Frameworks | Unmapped | Yes |",
        "| org_to_ops_framework | Enterprise Architecture | P1 | Operating Framework | Unmapped | Yes |",
        "| digital_xfm_agile_org | Enterprise Transformation | P1 | Transformation | Unmapped | Yes |",
        "| national_governance_frameworks | Governance | P2 | Governance Frameworks | Unmapped | Review |",
        "| patent_registry | Innovation / IP | P1 | Patent Registry | Unmapped | Yes |",
        "| business_plan | Commercial | P2 | Business Planning | Unmapped | Review |",
        "| investor_relations | Commercial / Finance | P2 | Investor Assets | Unmapped | Review |",
        "",
        "## 4. Previously Mapped Repositories",
        "",
        "The following repositories are already represented by local workspace files, uploaded GitHub snapshots, or existing discovery records:",
        "",
        "- holdco",
        "- iafe-repository-bootstrap",
        "- iafe_ecosystem",
        "- faep-academy",
        "- faep-client-lab",
        "",
        "These remain important reference repositories.",
        "",
        "## 5. Discovery Classification",
        "",
        "Each repository should be classified by enterprise domain, asset type, capability type, AI-NEEM alignment and ECEF alignment.",
        "",
        "## 6. Discovery Workflow",
        "",
        "```text",
        "GitHub Repository",
        "        ↓",
        "Repository Discovery",
        "        ↓",
        "Asset Identification",
        "        ↓",
        "Capability Identification",
        "        ↓",
        "Pattern Identification",
        "        ↓",
        "AI-NEEM Mapping",
        "        ↓",
        "ECEF Mapping",
        "        ↓",
        "Enterprise Factory Relevance",
        "        ↓",
        "Knowledge / Innovation / Capability Registry",
        "```",
        "",
        "## 7. Discovery Rules",
        "",
        "1. Preserve the original GitHub repository.",
        "2. Do not copy repositories into HoldCo unless explicitly required.",
        "3. Capture metadata and relationships rather than duplicating source assets.",
        "4. Preserve historical ideas even when implementation is superseded.",
        "5. Distinguish proven capabilities from experimental concepts.",
        "6. Do not assume repository relationships without evidence.",
        "7. Record uncertainty explicitly.",
        "8. Map reusable capabilities into the Enterprise Factory only after discovery.",
        "9. Protect confidential or patent-sensitive information appropriately.",
        "10. Use current HoldCo architecture as the mapping framework.",
        "",
        "## 8. Related HoldCo Models",
        "",
        "- MERA",
        "- EFM",
        "- EOP",
        "- AI-NEEM",
        "- ECEF",
        "",
        "## 9. Next Steps",
        "",
        "1. Triage the first discovery wave.",
        "2. Deep-dive P0 repositories.",
        "3. Extract reusable capabilities.",
        "4. Identify engineering patterns.",
        "5. Identify product and service relationships.",
        "6. Map research and innovation assets.",
        "7. Map AI-NEEM and ECEF relationships.",
        "8. Update the Enterprise Capability Registry.",
        "9. Identify Enterprise Factory implementation candidates.",
        ""
    ) -join "`r`n"

    Set-Content -Path $MatrixFile -Value $matrix -Encoding UTF8

    Write-Host "[Created] github_discovery_matrix.md" -ForegroundColor Green
}
else {
    Write-Host "[Exists ] github_discovery_matrix.md" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host " GitHub Discovery Bootstrap Completed"
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Existing files were NOT overwritten." -ForegroundColor Green
Write-Host "Mapped repositories were NOT recreated." -ForegroundColor Green
Write-Host ""
Write-Host "Next: review github_discovery_matrix.md"
Write-Host ""

# ============================================================
# HOLDCO PARTNER ECOSYSTEM BOOTSTRAP
# ============================================================
# Purpose:
# Establish the HoldCo partner ecosystem and transaction
# structure for development, COTS products, cloud platforms,
# legal, IP, accounting, tax, payments, grants, ERP,
# governance, assurance and commercialization.
#
# Run from:
# PS E:\Bhadale IT\github\holdco>
#
# Design principles:
# - Non-destructive
# - No provider-specific assumptions
# - Historical documents are not copied
# - Existing files are preserved
# - Partner status is evidence-based
# ============================================================

$ErrorActionPreference = "Stop"

$Root = (Get-Location).Path

Write-Host ""
Write-Host "============================================================"
Write-Host " HOLDCO - PARTNER ECOSYSTEM BOOTSTRAP"
Write-Host "============================================================"
Write-Host ""
Write-Host "Root:"
Write-Host $Root
Write-Host ""

function Ensure-Directory {
    param(
        [string]$Path
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
        Write-Host "[CREATED DIR ] $Path"
    }
    else {
        Write-Host "[EXISTS DIR  ] $Path"
    }
}

function Write-FileIfMissing {
    param(
        [string]$Path,
        [string[]]$Lines
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        Set-Content -LiteralPath $Path -Value $Lines -Encoding UTF8
        Write-Host "[CREATED FILE] $Path"
    }
    else {
        Write-Host "[EXISTS FILE ] $Path"
    }
}

# ============================================================
# PARTNER ROOT
# ============================================================

$Partners = Join-Path $Root "partners"
Ensure-Directory $Partners

# ============================================================
# PARTNER CATEGORIES
# ============================================================

$PartnerCategories = @(
    "development",
    "technology_products",
    "cloud_platforms",
    "legal",
    "intellectual_property",
    "accounting",
    "tax",
    "finance_and_payments",
    "website_and_digital_commerce",
    "grants_and_funding",
    "erp_and_corporate_governance",
    "security_and_assurance",
    "commercialization",
    "domain_specialists"
)

foreach ($Category in $PartnerCategories) {
    Ensure-Directory (Join-Path $Partners $Category)
}

# ============================================================
# DEVELOPMENT
# ============================================================

$Development = Join-Path $Partners "development"

@(
    "software_engineering",
    "systems_engineering",
    "data_engineering",
    "cloud_engineering",
    "ai_ml_engineering",
    "quantum_engineering",
    "devops",
    "modernization"
) | ForEach-Object {
    Ensure-Directory (Join-Path $Development $_)
}

# ============================================================
# TECHNOLOGY PRODUCTS / COTS
# ============================================================

$TechnologyProducts = Join-Path $Partners "technology_products"

@(
    "cots_products",
    "enterprise_software",
    "databases",
    "middleware",
    "security_products",
    "developer_tools"
) | ForEach-Object {
    Ensure-Directory (Join-Path $TechnologyProducts $_)
}

# ============================================================
# CLOUD PLATFORMS
# ============================================================

$CloudPlatforms = Join-Path $Partners "cloud_platforms"

@(
    "google_cloud",
    "microsoft_azure",
    "aws",
    "hybrid_multicloud"
) | ForEach-Object {
    Ensure-Directory (Join-Path $CloudPlatforms $_)
}

# ============================================================
# LEGAL
# ============================================================

$Legal = Join-Path $Partners "legal"

@(
    "corporate",
    "commercial_contracts",
    "procurement",
    "international"
) | ForEach-Object {
    Ensure-Directory (Join-Path $Legal $_)
}

# ============================================================
# INTELLECTUAL PROPERTY
# ============================================================

$IP = Join-Path $Partners "intellectual_property"

@(
    "patent_attorneys",
    "ip_lawyers",
    "trademarks",
    "licensing",
    "ip_valuation",
    "ip_commercialization"
) | ForEach-Object {
    Ensure-Directory (Join-Path $IP $_)
}

# ============================================================
# ACCOUNTING
# ============================================================

$Accounting = Join-Path $Partners "accounting"

@(
    "accounting_firms",
    "accounting_platforms",
    "xero",
    "sage_intacct",
    "other_platforms"
) | ForEach-Object {
    Ensure-Directory (Join-Path $Accounting $_)
}

# ============================================================
# TAX
# ============================================================

$Tax = Join-Path $Partners "tax"

@(
    "corporate_tax",
    "gst_vat",
    "international_tax",
    "transfer_pricing",
    "tax_advisory"
) | ForEach-Object {
    Ensure-Directory (Join-Path $Tax $_)
}

# ============================================================
# FINANCE AND PAYMENTS
# ============================================================

$FinancePayments = Join-Path $Partners "finance_and_payments"

@(
    "banking",
    "cross_border_payments",
    "foreign_exchange",
    "payment_processors",
    "invoicing"
) | ForEach-Object {
    Ensure-Directory (Join-Path $FinancePayments $_)
}

# ============================================================
# WEBSITE AND DIGITAL COMMERCE
# ============================================================

$DigitalCommerce = Join-Path $Partners "website_and_digital_commerce"

@(
    "website_platforms",
    "ecommerce",
    "subscriptions",
    "online_payments",
    "digital_delivery"
) | ForEach-Object {
    Ensure-Directory (Join-Path $DigitalCommerce $_)
}

# ============================================================
# GRANTS AND FUNDING
# ============================================================

$Grants = Join-Path $Partners "grants_and_funding"

@(
    "grant_specialists",
    "government_programs",
    "research_funding",
    "commercialization_funding"
) | ForEach-Object {
    Ensure-Directory (Join-Path $Grants $_)
}

# ============================================================
# ERP AND CORPORATE GOVERNANCE
# ============================================================

$ERP = Join-Path $Partners "erp_and_corporate_governance"

@(
    "erp",
    "finance_erp",
    "procurement",
    "workflow",
    "governance",
    "compliance_management"
) | ForEach-Object {
    Ensure-Directory (Join-Path $ERP $_)
}

# ============================================================
# SECURITY AND ASSURANCE
# ============================================================

$Security = Join-Path $Partners "security_and_assurance"

@(
    "cybersecurity",
    "privacy",
    "compliance",
    "audit",
    "certifications",
    "assurance"
) | ForEach-Object {
    Ensure-Directory (Join-Path $Security $_)
}

# ============================================================
# COMMERCIALIZATION
# ============================================================

$Commercialization = Join-Path $Partners "commercialization"

@(
    "ip_commercialization",
    "licensing",
    "investors",
    "m_and_a",
    "market_access"
) | ForEach-Object {
    Ensure-Directory (Join-Path $Commercialization $_)
}

# ============================================================
# DOMAIN SPECIALISTS
# ============================================================

$Domain = Join-Path $Partners "domain_specialists"

@(
    "agriculture",
    "government",
    "manufacturing",
    "healthcare",
    "finance",
    "other"
) | ForEach-Object {
    Ensure-Directory (Join-Path $Domain $_)
}

# ============================================================
# TRANSACTIONS
# ============================================================

$Transactions = Join-Path $Root "transactions"
Ensure-Directory $Transactions

$B2G = Join-Path $Transactions "b2g"
$B2B = Join-Path $Transactions "b2b"
$B2C = Join-Path $Transactions "b2c"

Ensure-Directory $B2G
Ensure-Directory $B2B
Ensure-Directory $B2C

# B2G
@(
    "procurement",
    "contracts",
    "invoicing",
    "grants",
    "compliance",
    "payment"
) | ForEach-Object {
    Ensure-Directory (Join-Path $B2G $_)
}

# B2B
@(
    "sales",
    "licensing",
    "partnerships",
    "subscriptions",
    "contracts",
    "payment"
) | ForEach-Object {
    Ensure-Directory (Join-Path $B2B $_)
}

# B2C
@(
    "website",
    "subscriptions",
    "digital_products",
    "payments",
    "customer_support"
) | ForEach-Object {
    Ensure-Directory (Join-Path $B2C $_)
}

# ============================================================
# PARTNER README
# ============================================================

$PartnerReadme = Join-Path $Partners "README.md"

$PartnerReadmeLines = @(
    "# HoldCo Partner Ecosystem",
    "",
    "## Purpose",
    "",
    "The HoldCo Partner Ecosystem provides a structured registry for external organizations, platforms, professional services, technology providers and specialist capabilities that may support Bhadale IT and HoldCo activities.",
    "",
    "The structure separates partner capability categories from commercial transactions.",
    "",
    "## Core Principle",
    "",
    "Partners enable HoldCo. They do not automatically become formal Bhadale IT partners, suppliers, resellers, subcontractors or delivery partners merely because they are recorded in this workspace.",
    "",
    "Partner relationships must be assessed and supported by appropriate evidence, agreements and commercial or legal documentation.",
    "",
    "## Partner Categories",
    "",
    "- Development",
    "- Technology Products and COTS",
    "- Cloud Platforms",
    "- Legal",
    "- Intellectual Property",
    "- Accounting",
    "- Tax",
    "- Finance and Payments",
    "- Website and Digital Commerce",
    "- Grants and Funding",
    "- ERP and Corporate Governance",
    "- Security and Assurance",
    "- Commercialization",
    "- Domain Specialists",
    "",
    "## Partner Status",
    "",
    "Suggested status lifecycle:",
    "",
    "Identified -> Evaluating -> Contacted -> Relationship Discussed -> Agreement Pending -> Contracted -> Active",
    "",
    "Status must reflect evidence and must not imply a contractual relationship where none exists.",
    "",
    "## Platform Examples",
    "",
    "Initial platform and service candidates may include Google Cloud, Microsoft Azure, AWS, Xero, Sage Intacct and other providers.",
    "",
    "These are candidate providers for evaluation unless a separate record establishes an active relationship or agreement.",
    "",
    "## Historical Material",
    "",
    "Historical partner catalogues and QAI service catalogues should remain separate from current capability claims.",
    "",
    "Historical material may be retained in private GitLab repositories and referenced when useful for modernization, research, capability lineage or commercial analysis.",
    "",
    "## Relationship to QAI",
    "",
    "Partner capabilities may support the four commercial pillars:",
    "",
    "- Products",
    "- Modernization",
    "- Services",
    "- Research",
    "",
    "Project execution remains an operating layer rather than a fifth commercial pillar.",
    "",
    "## Relationship to Transactions",
    "",
    "Partner capabilities support transactions conducted through:",
    "",
    "- B2G",
    "- B2B",
    "- B2C",
    "",
    "Transaction-specific requirements must be assessed separately."
)

Write-FileIfMissing -Path $PartnerReadme -Lines $PartnerReadmeLines

# ============================================================
# TRANSACTION README
# ============================================================

$TransactionReadme = Join-Path $Transactions "README.md"

$TransactionReadmeLines = @(
    "# HoldCo Transactions",
    "",
    "## Purpose",
    "",
    "This area defines the operational structure for commercial transactions across government, business and consumer channels.",
    "",
    "## Transaction Classes",
    "",
    "### B2G",
    "",
    "Business to Government transactions including procurement, tenders, contracts, grants, invoicing, compliance and payment.",
    "",
    "### B2B",
    "",
    "Business to Business transactions including sales, licensing, partnerships, subscriptions, contracts and payment.",
    "",
    "### B2C",
    "",
    "Business to Consumer transactions including website sales, subscriptions, digital products, online payments and customer support.",
    "",
    "## Governance",
    "",
    "Transaction workflows must consider applicable legal, tax, accounting, privacy, security, procurement, intellectual property and contractual requirements.",
    "",
    "## Separation from Partners",
    "",
    "Partners identify external capabilities and providers.",
    "",
    "Transactions describe how HoldCo conducts commercial activity.",
    "",
    "The two structures are related but should not be treated as the same registry."
)

Write-FileIfMissing -Path $TransactionReadme -Lines $TransactionReadmeLines

# ============================================================
# PARTNER RECORD TEMPLATE
# ============================================================

$TemplateDirectory = Join-Path $Partners "_templates"
Ensure-Directory $TemplateDirectory

$PartnerTemplate = Join-Path $TemplateDirectory "partner_record_template.md"

$PartnerTemplateLines = @(
    "# Partner Record",
    "",
    "## Provider",
    "",
    "- Name:",
    "- Website:",
    "- Country / Region:",
    "- Category:",
    "- Subcategory:",
    "",
    "## Capability",
    "",
    "- Primary capability:",
    "- Additional capabilities:",
    "- Relevant QAI pillar:",
    "  - Products",
    "  - Modernization",
    "  - Services",
    "  - Research",
    "",
    "## HoldCo Use Case",
    "",
    "- Intended use:",
    "- Client-facing:",
    "- Internal:",
    "- B2G relevance:",
    "- B2B relevance:",
    "- B2C relevance:",
    "",
    "## Relationship Status",
    "",
    "- Status:",
    "- Contact established:",
    "- Agreement:",
    "- Partner rights:",
    "- Reseller rights:",
    "- Subcontracting rights:",
    "",
    "## Commercial",
    "",
    "- Pricing model:",
    "- Licensing:",
    "- Subscription:",
    "- Professional services:",
    "- Payment terms:",
    "",
    "## Technical / Operational",
    "",
    "- Integration requirements:",
    "- Data requirements:",
    "- Security requirements:",
    "- Compliance requirements:",
    "- Geographic restrictions:",
    "",
    "## Evidence",
    "",
    "- Source documents:",
    "- Certifications:",
    "- Agreements:",
    "- References:",
    "",
    "## Risks / Notes",
    "",
    "- Risks:",
    "- Dependencies:",
    "- Open questions:",
    "",
    "## Decision",
    "",
    "- Evaluation:",
    "- Next action:",
    "- Owner:",
    "- Review date:"
)

Write-FileIfMissing -Path $PartnerTemplate -Lines $PartnerTemplateLines

# ============================================================
# FINAL VERIFICATION
# ============================================================

Write-Host ""
Write-Host "============================================================"
Write-Host " VERIFYING HOLDCO PARTNER STRUCTURE"
Write-Host "============================================================"
Write-Host ""

$RequiredPaths = @(
    "partners",
    "partners/README.md",
    "partners/development",
    "partners/technology_products",
    "partners/cloud_platforms",
    "partners/legal",
    "partners/intellectual_property",
    "partners/accounting",
    "partners/tax",
    "partners/finance_and_payments",
    "partners/website_and_digital_commerce",
    "partners/grants_and_funding",
    "partners/erp_and_corporate_governance",
    "partners/security_and_assurance",
    "partners/commercialization",
    "partners/domain_specialists",
    "partners/_templates/partner_record_template.md",
    "transactions",
    "transactions/README.md",
    "transactions/b2g",
    "transactions/b2b",
    "transactions/b2c"
)

$Missing = @()

foreach ($RelativePath in $RequiredPaths) {
    $FullPath = Join-Path $Root $RelativePath

    if (Test-Path -LiteralPath $FullPath) {
        Write-Host "[OK] $RelativePath"
    }
    else {
        Write-Host "[MISSING] $RelativePath"
        $Missing += $RelativePath
    }
}

Write-Host ""
Write-Host "============================================================"

if ($Missing.Count -eq 0) {
    Write-Host " COMPLETE"
    Write-Host "============================================================"
    Write-Host ""
    Write-Host "HoldCo Partner Ecosystem structure created successfully."
    Write-Host ""
    Write-Host "Partner root:"
    Write-Host (Join-Path $Root "partners")
    Write-Host ""
    Write-Host "Transaction root:"
    Write-Host (Join-Path $Root "transactions")
    Write-Host ""
    Write-Host "Historical documents were not copied or modified."
    Write-Host "Existing files were preserved."
}
else {
    Write-Host " COMPLETED WITH MISSING PATHS"
    Write-Host "============================================================"
    Write-Host ""
    Write-Host "Review the missing paths listed above."
}

Write-Host ""
Write-Host "Suggested next command:"
Write-Host "git status --short"
Write-Host ""

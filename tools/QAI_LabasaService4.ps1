$Root = "E:\Bhadale IT\github\holdco"

# Section 16: platform-level directories
$TopLevel = @(
    "general_framework",
    "general_factory",
    "qai_lab",
    "qai_runtime",
    "qai_devops",
    "qai_deployment_operator",
    "qai_faep",
    "qai_labaas"
)

# Section 16: documented FAEP directories
$FaepPaths = @(
    "ecosystem",
    "ecosystem\global",
    "ecosystem\sovereign",
    "ecosystem\regional",
    "ecosystem\city",
    "ecosystem\factory",
    "ecosystem\autonomous_zones",
    "control_plane",
    "control_plane\governance",
    "control_plane\federation",
    "control_plane\policy",
    "control_plane\resource",
    "control_plane\resilience",
    "control_plane\energy",
    "control_plane\observability",
    "fabrics",
    "fabrics\ai",
    "fabrics\operations",
    "fabrics\security",
    "fabrics\data",
    "fabrics\metadata",
    "fabrics\resource",
    "fabrics\storage",
    "fabrics\network",
    "fabrics\energy",
    "federation",
    "federation\identity",
    "federation\discovery",
    "federation\synchronization",
    "federation\data_residency",
    "federation\interoperability",
    "autonomous_zones",
    "deployment",
    "evidence",
    "tests"
)

# Section 16: documented LabaaS root directories
$LabaaSPaths = @(
    "client_workspace",
    "client_catalog",
    "provisioning",
    "tenancy",
    "identity",
    "policy",
    "runtime",
    "workflow",
    "notebooks",
    "sdk",
    "api",
    "resources",
    "storage",
    "experiments",
    "evidence",
    "deployment",
    "lifecycle",
    "observability",
    "security",
    "adapters",
    "examples",
    "tests"
)

Write-Host "`n========== TOP-LEVEL AUDIT =========="
foreach ($Name in $TopLevel) {
    $Path = Join-Path $Root $Name
    if (Test-Path -LiteralPath $Path -PathType Container) {
        Write-Host "[PRESENT] $Name"
    }
    else {
        Write-Host "[MISSING] $Name"
    }
}

Write-Host "`n========== FAEP AUDIT =========="
$FaepRoot = Join-Path $Root "qai_faep"
foreach ($RelativePath in $FaepPaths) {
    $Path = Join-Path $FaepRoot $RelativePath
    if (Test-Path -LiteralPath $Path -PathType Container) {
        Write-Host "[PRESENT] qai_faep\$RelativePath"
    }
    else {
        Write-Host "[MISSING] qai_faep\$RelativePath"
    }
}

Write-Host "`n========== LABAAS ROOT AUDIT =========="
$LabRoot = Join-Path $Root "qai_labaas"
foreach ($RelativePath in $LabaaSPaths) {
    $Path = Join-Path $LabRoot $RelativePath
    if (Test-Path -LiteralPath $Path -PathType Container) {
        Write-Host "[PRESENT] qai_labaas\$RelativePath"
    }
    else {
        Write-Host "[MISSING] qai_labaas\$RelativePath"
    }
}

Write-Host "`n========== ROOT FILE CHECK =========="
foreach ($Item in @(
    "qai_faep\README.md",
    "qai_faep\VERSION",
    "qai_labaas\README.md",
    "qai_labaas\VERSION",
    "qai_labaas\configuration\README.md",
    "qai_labaas\docs\POST_PILOT_COMPONENT_CROSSWALK.md"
)) {
    $Path = Join-Path $Root $Item
    if (Test-Path -LiteralPath $Path -PathType Leaf) {
        Write-Host "[PRESENT] $Item"
    }
    else {
        Write-Host "[MISSING] $Item"
    }
}


param(
    [string]$ConfigurationFile = ".\bootstrap.yaml"
)

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "============================================================" -ForegroundColor Yellow
Write-Host "GENERAL FACTORY BOOTSTRAPPER - MVP" -ForegroundColor Yellow
Write-Host "============================================================" -ForegroundColor Yellow

# ------------------------------------------------------------
# Locate Bootstrapper root
# ------------------------------------------------------------

$BootstrapperRoot = Split-Path -Parent $PSScriptRoot

$ProfilesRoot = Join-Path `
    $BootstrapperRoot `
    "profiles"

$PackagesRoot = Join-Path `
    $BootstrapperRoot `
    "packages"

$FactoryRoot = Split-Path `
    (Split-Path $BootstrapperRoot -Parent) `
    -Parent

$GeneratedRoot = Join-Path `
    $FactoryRoot `
    "post_pilot_assets\generated_deployments"

# ------------------------------------------------------------
# Resolve configuration path
# ------------------------------------------------------------

if (-not [System.IO.Path]::IsPathRooted($ConfigurationFile)) {
    $ConfigurationFile = Join-Path `
        (Join-Path $BootstrapperRoot "configuration") `
        $ConfigurationFile
}

if (-not (Test-Path -LiteralPath $ConfigurationFile)) {
    throw "Bootstrap configuration not found: $ConfigurationFile"
}

Write-Host ""
Write-Host "STEP 1 - Bootstrap Configuration" -ForegroundColor Cyan
Write-Host "Configuration: $ConfigurationFile"

# ------------------------------------------------------------
# Basic YAML reader
#
# MVP intentionally uses simple YAML key extraction.
# A production implementation should later use a dedicated
# configuration/parser layer.
# ------------------------------------------------------------

function Get-YamlValue {
    param(
        [string[]]$Lines,
        [string]$Key
    )

    foreach ($Line in $Lines) {

        $Trimmed = $Line.Trim()

        if ($Trimmed -match "^$Key\s*:\s*(.+)$") {

            $Value = $Matches[1].Trim()

            $Value = $Value.Trim('"')

            return $Value
        }
    }

    return $null
}

$ConfigLines = Get-Content -LiteralPath $ConfigurationFile

$DeploymentId = Get-YamlValue `
    -Lines $ConfigLines `
    -Key "id"

$DeploymentName = Get-YamlValue `
    -Lines $ConfigLines `
    -Key "name"

$IndustryId = Get-YamlValue `
    -Lines $ConfigLines `
    -Key "id"

$ProblemId = Get-YamlValue `
    -Lines $ConfigLines `
    -Key "id"

# ------------------------------------------------------------
# Explicit extraction for this MVP
# ------------------------------------------------------------

$DeploymentId = "DEP-AGRI-DIGITAL-FARM-DEMO-001"
$DeploymentName = "agriculture-digital-farm-demo"

$IndustryId = "agriculture"
$ProblemId = "digital-farm-optimization"

$ProfileId = "virtual-development"

Write-Host "Deployment ID : $DeploymentId"
Write-Host "Deployment    : $DeploymentName"
Write-Host "Industry      : $IndustryId"
Write-Host "Problem       : $ProblemId"
Write-Host "Profile       : $ProfileId"

# ------------------------------------------------------------
# STEP 2 - Profile Resolution
# ------------------------------------------------------------

Write-Host ""
Write-Host "STEP 2 - Profile Resolution" -ForegroundColor Cyan

$ProfileFile = Join-Path `
    $ProfilesRoot `
    "$ProfileId.yaml"

if (-not (Test-Path -LiteralPath $ProfileFile)) {
    throw "Deployment profile not found: $ProfileFile"
}

Write-Host "Resolved profile: $ProfileFile"

# ------------------------------------------------------------
# STEP 3 - Package Resolution
# ------------------------------------------------------------

Write-Host ""
Write-Host "STEP 3 - Package Resolution" -ForegroundColor Cyan

$PackageIds = @(
    "qai_platform",
    "software_engineering",
    "systems_engineering"
)

$ResolvedPackages = @()

foreach ($PackageId in $PackageIds) {

    $PackageFile = Join-Path `
        $PackagesRoot `
        "$PackageId.yaml"

    if (-not (Test-Path -LiteralPath $PackageFile)) {
        throw "Package not found: $PackageFile"
    }

    $ResolvedPackages += $PackageFile

    Write-Host "Resolved package: $PackageId"
}

# ------------------------------------------------------------
# STEP 4 - Generate Deployment Structure
# ------------------------------------------------------------

Write-Host ""
Write-Host "STEP 4 - Deployment Structure Generation" -ForegroundColor Cyan

$DeploymentPath = Join-Path `
    $GeneratedRoot `
    $DeploymentName

if (-not (Test-Path -LiteralPath $DeploymentPath)) {
    New-Item `
        -ItemType Directory `
        -Path $DeploymentPath `
        -Force | Out-Null
}

$DeploymentFolders = @(
    "industry",
    "client",
    "problem",
    "modules",
    "configuration",
    "validation"
)

foreach ($Folder in $DeploymentFolders) {

    $Path = Join-Path `
        $DeploymentPath `
        $Folder

    New-Item `
        -ItemType Directory `
        -Path $Path `
        -Force | Out-Null
}

Write-Host "Generated deployment: $DeploymentPath"

# ------------------------------------------------------------
# STEP 5 - Write resolved deployment metadata
# ------------------------------------------------------------

Write-Host ""
Write-Host "STEP 5 - Configuration" -ForegroundColor Cyan

$ResolvedDeployment = @"
deployment:
  id: "$DeploymentId"
  name: "$DeploymentName"

industry:
  id: "$IndustryId"

problem:
  id: "$ProblemId"

profile:
  id: "$ProfileId"

modules:
  core:
    - "qai_platform"

  addons:
    - "software_engineering"
    - "systems_engineering"

bootstrapper:
  implementation: "general_factory_bootstrapper"
  version: "0.1.0"
"@

Set-Content `
    -LiteralPath (Join-Path $DeploymentPath "deployment.yaml") `
    -Value $ResolvedDeployment `
    -Encoding UTF8

Copy-Item `
    -LiteralPath $ProfileFile `
    -Destination (Join-Path $DeploymentPath "profile.yaml") `
    -Force

# ------------------------------------------------------------
# STEP 6 - Module records
# ------------------------------------------------------------

Set-Content `
    -LiteralPath (Join-Path $DeploymentPath "modules\core.txt") `
    -Value "qai_platform" `
    -Encoding UTF8

Set-Content `
    -LiteralPath (Join-Path $DeploymentPath "modules\addons.txt") `
    -Value @(
        "software_engineering"
        "systems_engineering"
    ) `
    -Encoding UTF8

# ------------------------------------------------------------
# STEP 7 - Basic Validation
# ------------------------------------------------------------

Write-Host ""
Write-Host "STEP 6 - Validation" -ForegroundColor Cyan

$ValidationResults = @()

$RequiredFiles = @(
    "deployment.yaml",
    "profile.yaml",
    "modules\core.txt",
    "modules\addons.txt"
)

foreach ($File in $RequiredFiles) {

    $Path = Join-Path `
        $DeploymentPath `
        $File

    if (Test-Path -LiteralPath $Path) {

        $ValidationResults += `
            "[PASS] $File"

        Write-Host "[PASS] $File" -ForegroundColor Green
    }
    else {

        $ValidationResults += `
            "[FAIL] $File"

        Write-Host "[FAIL] $File" -ForegroundColor Red
    }
}

$ValidationReport = @"
General Factory Bootstrapper - Validation Report

Deployment:
$DeploymentName

Deployment ID:
$DeploymentId

Profile:
$ProfileId

Industry:
$IndustryId

Problem:
$ProblemId

Results:
$($ValidationResults -join "`r`n")
"@

Set-Content `
    -LiteralPath (Join-Path $DeploymentPath "validation\validation_report.txt") `
    -Value $ValidationReport `
    -Encoding UTF8

# ------------------------------------------------------------
# Final result
# ------------------------------------------------------------

Write-Host ""
Write-Host "============================================================" -ForegroundColor Green
Write-Host "BOOTSTRAPPER MVP COMPLETE" -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Green

Write-Host ""
Write-Host "Generated deployment:" -ForegroundColor Yellow
Write-Host $DeploymentPath

Write-Host ""
Write-Host "Validation report:" -ForegroundColor Yellow
Write-Host (Join-Path `
    $DeploymentPath `
    "validation\validation_report.txt")

Write-Host ""

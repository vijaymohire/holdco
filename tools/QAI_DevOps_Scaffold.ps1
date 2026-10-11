# QAI DevOps - Section 7 folder scaffolding
# Run from: E:\Bhadale IT\github\holdco
# Non-destructive: existing files are preserved.

$ErrorActionPreference = "Stop"

$RepoRoot = "E:\Bhadale IT\github\holdco"
$Root = Join-Path $RepoRoot "qai_devops"

if (-not (Test-Path -LiteralPath $RepoRoot -PathType Container)) {
    throw "Repository root not found: $RepoRoot"
}

if (-not (Test-Path -LiteralPath $Root -PathType Container)) {
    throw "qai_devops does not exist. Stop and inspect the repository before creating it."
}

$Directories = @(
    "catalog\environment_definitions\dev",
    "catalog\environment_definitions\test",
    "catalog\environment_definitions\prod",
    "catalog\resource_profiles",

    "environment_types\development",
    "environment_types\test",
    "environment_types\production",

    "environments\local",
    "environments\windows",
    "environments\linux",
    "environments\macos",
    "environments\cloud",
    "environments\colocation",
    "environments\client_dc",
    "environments\bare_metal",
    "environments\hpc",
    "environments\edge",
    "environments\iot",

    "projects",

    "manifests\environment",
    "manifests\runtime",
    "manifests\resources",
    "manifests\storage",
    "manifests\deployment",
    "manifests\release",

    "deployment\runners",
    "deployment\adapters",
    "deployment\validation",
    "deployment\promotion",
    "deployment\rollback",

    "scripts\bootstrap",
    "scripts\discover",
    "scripts\configure",
    "scripts\deploy",
    "scripts\validate",
    "scripts\rollback",

    "policies",
    "identities",
    "secrets",
    "evidence",
    "docs"
)

$CreatedDirectories = 0
$ExistingDirectories = 0
$CreatedFiles = 0
$PreservedFiles = 0

foreach ($RelativePath in $Directories) {
    $Path = Join-Path $Root $RelativePath

    if (-not (Test-Path -LiteralPath $Path -PathType Container)) {
        New-Item -ItemType Directory -Path $Path -Force |
            Out-Null
        Write-Host "[CREATED DIR] $RelativePath"
        $CreatedDirectories++
    }
    else {
        Write-Host "[KEEP DIR]    $RelativePath"
        $ExistingDirectories++
    }

    # README markers allow Git to track otherwise-empty directories.
    $ReadmePath = Join-Path $Path "README.md"

    if (-not (Test-Path -LiteralPath $ReadmePath)) {
        $FolderName = Split-Path $RelativePath -Leaf

        @(
            "# $FolderName"
            ""
            "Status: Scaffolded; implementation pending."
            ""
            "Purpose and implementation details will be documented"
            "during the corresponding QAI DevOps development phase."
        ) | Set-Content -LiteralPath $ReadmePath -Encoding UTF8

        Write-Host "[CREATED FILE] $RelativePath\README.md"
        $CreatedFiles++
    }
    else {
        Write-Host "[KEEP FILE]   $RelativePath\README.md"
        $PreservedFiles++
    }
}

Write-Host ""
Write-Host "=============================================="
Write-Host "QAI DevOps scaffolding summary"
Write-Host "=============================================="
Write-Host "Target:                $Root"
Write-Host "Directories created:   $CreatedDirectories"
Write-Host "Directories preserved: $ExistingDirectories"
Write-Host "README files created:  $CreatedFiles"
Write-Host "Existing READMEs kept: $PreservedFiles"
Write-Host "Implementation:        Not started"


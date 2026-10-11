# Read-only verification of QAI DevOps Section 7 structure

$RepoRoot = "E:\Bhadale IT\github\holdco"
$Root = Join-Path $RepoRoot "qai_devops"

$RequiredPaths = @(
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

$Missing = @()

foreach ($RelativePath in $RequiredPaths) {
    $Path = Join-Path $Root $RelativePath

    if (Test-Path -LiteralPath $Path -PathType Container) {
        Write-Host "[PASS] $RelativePath"
    }
    else {
        Write-Host "[MISSING] $RelativePath"
        $Missing += $RelativePath
    }
}

Write-Host ""
Write-Host "Required directories checked: $($RequiredPaths.Count)"
Write-Host "Missing directories: $($Missing.Count)"

Write-Host ""
Write-Host "=== Git status ==="
Set-Location $RepoRoot
git status --short


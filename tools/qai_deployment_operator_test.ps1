# Verify key paths
$Root = "E:\Bhadale IT\github\holdco\qai_deployment_operator"

$RequiredPaths = @(
    "README.md",
    "VERSION",
    "pyproject.toml",
    "requirements\base.txt",
    "requirements\dev.txt",
    "requirements\test.txt",
    "contracts\deployment",
    "contracts\environment",
    "contracts\resource",
    "contracts\storage",
    "contracts\execution",
    "contracts\policy",
    "contracts\lifecycle",
    "contracts\status",
    "models\desired_state",
    "models\observed_state",
    "models\resource_binding",
    "models\reconciliation",
    "discovery\external_services",
    "registry\ownership",
    "resolver\profiles",
    "resolver\policies",
    "resolver\bindings",
    "resolver\selection",
    "reconciliation\controller",
    "reconciliation\loops",
    "reconciliation\drift",
    "reconciliation\remediation",
    "reconciliation\rollback",
    "deployment\provision",
    "deployment\configure",
    "deployment\validate",
    "deployment\promote",
    "deployment\release",
    "adapters\bare_metal",
    "adapters\kubernetes",
    "lifecycle\recovery",
    "observability\provenance",
    "security\threat_model",
    "examples\hybrid",
    "tests\acceptance"
)

$Missing = @()

foreach ($RelativePath in $RequiredPaths) {
    if (Test-Path -LiteralPath (Join-Path $Root $RelativePath)) {
        Write-Host "[PASS] $RelativePath"
    }
    else {
        Write-Host "[MISSING] $RelativePath"
        $Missing += $RelativePath
    }
}

Write-Host ""
Write-Host "Required paths checked: $($RequiredPaths.Count)"
Write-Host "Missing paths: $($Missing.Count)"

# Review repository changes; this does not modify anything.
Set-Location "E:\Bhadale IT\github\holdco"
git status --short

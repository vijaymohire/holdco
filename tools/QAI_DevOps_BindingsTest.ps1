# QAI DevOps environment-binding verification
# Read-only checks

$RepoRoot = "E:\Bhadale IT\github\holdco"
$Root = Join-Path $RepoRoot "qai_devops"

$Example = Join-Path $Root ".env.example"
$Documentation = Join-Path $Root "docs\ENVIRONMENT_VARIABLE_BINDING_MODEL.md"
$GitIgnore = Join-Path $Root ".gitignore"

$Variables = @(
    "QAI_ENVIRONMENT",
    "QAI_PROJECT",
    "QAI_RUNTIME_MODE",
    "QAI_RESOURCE_PROFILE",
    "QAI_STORAGE_PROFILE",
    "QAI_DATABASE_PROFILE",
    "QAI_HPC_ADAPTER",
    "QAI_GPU_ADAPTER",
    "QAI_QUANTUM_ADAPTER",
    "QAI_COMMUNICATION_ADAPTER",
    "QAI_DEPLOYMENT_TARGET",
    "QAI_EVIDENCE_PATH",
    "QAI_ARTIFACT_PATH",
    "QAI_SECRET_PROVIDER"
)

foreach ($File in @($Example, $Documentation, $GitIgnore)) {
    if (Test-Path -LiteralPath $File -PathType Leaf) {
        Write-Host "[PASS] $(Split-Path $File -Leaf)"
    }
    else {
        Write-Host "[MISSING] $File"
    }
}

if ((Test-Path -LiteralPath $Example) -and
    (Test-Path -LiteralPath $Documentation)) {

    $ExampleText = Get-Content -LiteralPath $Example -Raw
    $DocumentationText = Get-Content -LiteralPath $Documentation -Raw

    foreach ($Variable in $Variables) {
        if ($ExampleText.Contains("$Variable=") -and
            $DocumentationText.Contains($Variable)) {
            Write-Host "[PASS] $Variable"
        }
        else {
            Write-Host "[MISSING] $Variable"
        }
    }
}

Write-Host ""
Write-Host "=== Git status ==="
Set-Location $RepoRoot
git status --short

Write-Host ""
Write-Host "=== Existing ignore policy ==="
Get-Content -LiteralPath $GitIgnore


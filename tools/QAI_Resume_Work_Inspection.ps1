# Read-only QAI work-resumption inspection

$RepoRoot = "E:\Bhadale IT\github\holdco"

Set-Location $RepoRoot

Write-Host "`n=== Git status ==="
git status --short

Write-Host "`n=== Latest commit ==="
git log -1 --oneline

Write-Host "`n=== Deployment Operator README ==="
$OperatorReadme = ".\qai_deployment_operator\README.md"

if (Test-Path $OperatorReadme) {
    Get-Content $OperatorReadme
}
else {
    Write-Host "[MISSING] $OperatorReadme"
}

Write-Host "`n=== Development Document Review Register ==="
$Register = ".\QAI_Development_Document_Review_Register.md"

if (Test-Path $Register) {
    Get-Content $Register
}
else {
    Write-Host "[MISSING] $Register"
}

Write-Host "`n=== Contract placeholder files ==="
Get-ChildItem ".\qai_deployment_operator\contracts" `
    -Recurse -Filter "README.md" -File |
    Select-Object -ExpandProperty FullName


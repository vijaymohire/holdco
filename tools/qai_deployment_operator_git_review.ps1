Set-Location "E:\Bhadale IT\github\holdco"

Write-Host "`n=== New files under Deployment Operator ==="
git ls-files --others --exclude-standard -- qai_deployment_operator/

Write-Host "`n=== Scaffolding and test scripts ==="
git status --short -- QAI_DeploymentOperator_Scaffold.ps1 qai_deployment_operator_test.ps1

Write-Host "`n=== Existing root README preserved ==="
Get-Item ".\qai_deployment_operator\README.md" |
    Select-Object FullName, Length, LastWriteTime


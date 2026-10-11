
$ErrorActionPreference = "Stop"

$Root = "E:\Bhadale IT\github\holdco"
$RelativePath = "general_factory\reference_implementations\registry_resolver\tests\Test-RegistryResolverCompatibility.ps1"
$ScriptPath = Join-Path $Root $RelativePath

if (-not (Test-Path -LiteralPath $Root -PathType Container)) {
    throw "Expected repository root not found: $Root"
}

if (Test-Path -LiteralPath $ScriptPath -PathType Leaf) {
    Write-Host "Existing test script preserved:"
    Write-Host $ScriptPath
    Write-Host "No file was overwritten."
    return
}

$ScriptContent = @'
[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$Root = "E:\Bhadale IT\github\holdco"
$ResolverPath = Join-Path $Root "general_factory\reference_implementations\registry_resolver\src\Resolve-RegistryBinding.ps1"

if (-not (Test-Path -LiteralPath $ResolverPath -PathType Leaf)) {
    throw "Resolver source not found: $ResolverPath"
}

. $ResolverPath

if (-not (Get-Command Resolve-RegistryBinding -ErrorAction SilentlyContinue)) {
    throw "Resolve-RegistryBinding function was not loaded."
}

$TempRoot = Join-Path ([System.IO.Path]::GetTempPath()) (
    "GF-Compatibility-Test-" + [guid]::NewGuid().ToString("N")
)

$Results = @()
$Failures = @()

try {
    New-Item -ItemType Directory -Path $TempRoot -Force | Out-Null

    # Synthetic candidate. These fields describe the proposed test contract;
    # the current resolver may not evaluate them.
    $Binding = [ordered]@{
        binding_id                = "TEST-BINDING-001"
        framework_capability_id   = "qai_experimentation"
        environment               = "local"
        execution_mode            = "virtual"
        implementation_version    = "1.0.0"
        supported_resources       = @("cpu")
    }

    $Scenarios = @(
        [pscustomobject]@{
            Name = "Matching capability and constraints"
            Capability = "qai_experimentation"
            Environment = "local"
            ExecutionMode = "virtual"
            Version = "1.0.0"
            RequiredResources = @("cpu")
            ExpectedCandidateCount = 1
        },
        [pscustomobject]@{
            Name = "Environment mismatch"
            Capability = "qai_experimentation"
            Environment = "cloud"
            ExecutionMode = "virtual"
            Version = "1.0.0"
            RequiredResources = @("cpu")
            ExpectedCandidateCount = 1
        },
        [pscustomobject]@{
            Name = "Execution mode mismatch"
            Capability = "qai_experimentation"
            Environment = "local"
            ExecutionMode = "physical"
            Version = "1.0.0"
            RequiredResources = @("cpu")
            ExpectedCandidateCount = 1
        },
        [pscustomobject]@{
            Name = "Version mismatch"
            Capability = "qai_experimentation"
            Environment = "local"
            ExecutionMode = "virtual"
            Version = "2.0.0"
            RequiredResources = @("cpu")
            ExpectedCandidateCount = 1
        },
        [pscustomobject]@{
            Name = "Required resource unavailable"
            Capability = "qai_experimentation"
            Environment = "local"
            ExecutionMode = "virtual"
            Version = "1.0.0"
            RequiredResources = @("cpu", "gpu")
            ExpectedCandidateCount = 1
        }
    )

    # Write one synthetic registry. The resolver reads it but does not modify it.
    $RegistryPath = Join-Path $TempRoot "synthetic-registry.json"

    [ordered]@{
        registry_id = "TEST-REGISTRY-001"
        bindings = @($Binding)
    } |
        ConvertTo-Json -Depth 10 |
        Set-Content -LiteralPath $RegistryPath -Encoding UTF8

    Write-Host ""
    Write-Host "=== Registry Resolver Compatibility Baseline ==="
    Write-Host "Resolver: $ResolverPath"
    Write-Host "Synthetic registry: $RegistryPath"
    Write-Host ""
    Write-Host "This test records candidate lookup behavior."
    Write-Host "It does NOT claim compatibility validation is implemented."
    Write-Host ""

    foreach ($Scenario in $Scenarios) {
        Write-Host "Testing: $($Scenario.Name)"

        $RequestId = "TEST-" + (
            $Scenario.Name -replace '[^A-Za-z0-9]+', '-'
        ).Trim('-').ToUpperInvariant()

        # Current resolver accepts capability and request ID only.
        # Other scenario fields are recorded for the future contract,
        # not passed as unsupported parameters.
        $Result = Resolve-RegistryBinding `
            -RegistryPath $RegistryPath `
            -CapabilityId $Scenario.Capability `
            -RequestId $RequestId

        $ActualCount = @($Result.matched_bindings).Count
        $CountPass = ($ActualCount -eq $Scenario.ExpectedCandidateCount)

        $HasStatus = (
            $Result.PSObject.Properties.Name -contains "status"
        )
        $StatusPass = (
            $HasStatus -and
            $Result.status -eq "INSUFFICIENT_INFORMATION"
        )

        $Results += [pscustomobject]@{
            Scenario = $Scenario.Name
            ExpectedCandidates = $Scenario.ExpectedCandidateCount
            ActualCandidates = $ActualCount
            LookupCheck = if ($CountPass) { "PASS" } else { "FAIL" }
            StatusCheck = if ($StatusPass) { "PASS" } else { "FAIL" }
            CompatibilityValidated = "NO - not implemented"
        }

        if (-not $CountPass) {
            $Failures += "$($Scenario.Name): expected $($Scenario.ExpectedCandidateCount) candidate(s), got $ActualCount."
        }

        if (-not $StatusPass) {
            $Failures += "$($Scenario.Name): expected INSUFFICIENT_INFORMATION status."
        }
    }

    Write-Host ""
    Write-Host "=== Baseline Results ==="
    $Results |
        Format-Table Scenario, ExpectedCandidates, ActualCandidates, LookupCheck, StatusCheck, CompatibilityValidated -AutoSize |
        Out-Host

    Write-Host ""
    if ($Failures.Count -eq 0) {
        Write-Host "ALL BASELINE ASSERTIONS PASSED."
        Write-Host "Constraint mismatch scenarios still return the capability candidate."
        Write-Host "This is expected for the current lookup-only implementation."
    }
    else {
        Write-Host "BASELINE ASSERTIONS FAILED:"
        $Failures | ForEach-Object { Write-Host " - $_" }
        throw "One or more baseline assertions failed."
    }
}
finally {
    if (Test-Path -LiteralPath $TempRoot -PathType Container) {
        Remove-Item -LiteralPath $TempRoot -Recurse -Force
        Write-Host ""
        Write-Host "Synthetic temporary files cleaned up."
    }
}

Write-Host "Resolver source and production registry were not modified."
'@

Set-Content -LiteralPath $ScriptPath -Value $ScriptContent -Encoding UTF8

Write-Host "Created test script:"
Write-Host $ScriptPath
Write-Host "No existing files were overwritten."

[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$Root = "E:\Bhadale IT\github\holdco"
$Base = Join-Path $Root "general_factory\reference_implementations\registry_resolver"
$ResolverPath = Join-Path $Base "src\Resolve-RegistryBinding.ps1"
$ContractPath = Join-Path $Base "docs\compatibility-contract.md"
$MatrixPath = Join-Path $Base "docs\compatibility-test-matrix.md"

foreach ($Path in @($ResolverPath, $ContractPath, $MatrixPath)) {
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        throw "Required file not found: $Path"
    }
}

. $ResolverPath

if (-not (Get-Command Resolve-RegistryBinding -ErrorAction SilentlyContinue)) {
    throw "Resolve-RegistryBinding was not loaded."
}

$TempRoot = Join-Path ([System.IO.Path]::GetTempPath()) (
    "GF-Contract-Test-" + [guid]::NewGuid().ToString("N")
)

$Results = @()
$Failures = @()

function Add-Result {
    param(
        [string]$TestId,
        [string]$TestName,
        [string]$Group,
        [string]$Expected,
        [string]$Actual,
        [bool]$Passed,
        [string]$Notes
    )

    $script:Results += [pscustomobject]@{
        TestId   = $TestId
        Group    = $Group
        Scenario = $TestName
        Expected = $Expected
        Actual   = $Actual
        Result   = if ($Passed) { "PASS" } else { "FAIL" }
        Notes    = $Notes
    }

    if (-not $Passed) {
        $script:Failures += "$TestId - $TestName"
    }
}

try {
    New-Item -ItemType Directory -Path $TempRoot -Force | Out-Null

    $EmptyRegistryPath = Join-Path $TempRoot "empty-registry.json"
    $MatchingRegistryPath = Join-Path $TempRoot "matching-registry.json"
    $NonMatchingRegistryPath = Join-Path $TempRoot "nonmatching-registry.json"

    [ordered]@{
        registry_id = "TEST-EMPTY"
        bindings = @()
    } |
        ConvertTo-Json -Depth 10 |
        Set-Content -LiteralPath $EmptyRegistryPath -Encoding UTF8

    $Binding = [ordered]@{
        binding_id = "TEST-BINDING-001"
        framework_capability_id = "qai_experimentation"
        environment = "local"
        execution_mode = "virtual"
        implementation_version = "1.0.0"
        supported_resources = @("cpu")
    }

    [ordered]@{
        registry_id = "TEST-MATCHING"
        bindings = @($Binding)
    } |
        ConvertTo-Json -Depth 10 |
        Set-Content -LiteralPath $MatchingRegistryPath -Encoding UTF8

    [ordered]@{
        registry_id = "TEST-NONMATCHING"
        bindings = @(
            [ordered]@{
                binding_id = "TEST-BINDING-002"
                framework_capability_id = "different_capability"
            }
        )
    } |
        ConvertTo-Json -Depth 10 |
        Set-Content -LiteralPath $NonMatchingRegistryPath -Encoding UTF8

    Write-Host ""
    Write-Host "=== Registry Resolver Contract Test Suite ==="
    Write-Host "Resolver: $ResolverPath"
    Write-Host "Contract: $ContractPath"
    Write-Host "Test matrix: $MatrixPath"
    Write-Host ""

    # Group A: behavior verified against the current implementation.

    Write-Host "--- Group A: Current Behavior ---"

    $Result = Resolve-RegistryBinding `
        -RegistryPath $EmptyRegistryPath `
        -CapabilityId "qai_experimentation" `
        -RequestId "CT-CURRENT-01"

    $Count = @($Result.matched_bindings).Count
    Add-Result `
        -TestId "CURRENT-01" `
        -TestName "Empty registry returns zero candidates" `
        -Group "Current behavior" `
        -Expected "0 candidates" `
        -Actual "$Count candidates" `
        -Passed ($Count -eq 0) `
        -Notes "Candidate lookup only."

    $Result = Resolve-RegistryBinding `
        -RegistryPath $MatchingRegistryPath `
        -CapabilityId "qai_experimentation" `
        -RequestId "CT-CURRENT-02"

    $Count = @($Result.matched_bindings).Count
    Add-Result `
        -TestId "CURRENT-02" `
        -TestName "Matching capability returns one candidate" `
        -Group "Current behavior" `
        -Expected "1 candidate" `
        -Actual "$Count candidates" `
        -Passed ($Count -eq 1) `
        -Notes "Does not establish compatibility."

    $Result = Resolve-RegistryBinding `
        -RegistryPath $NonMatchingRegistryPath `
        -CapabilityId "qai_experimentation" `
        -RequestId "CT-CURRENT-03"

    $Count = @($Result.matched_bindings).Count
    Add-Result `
        -TestId "CURRENT-03" `
        -TestName "Non-matching capability returns zero candidates" `
        -Group "Current behavior" `
        -Expected "0 candidates" `
        -Actual "$Count candidates" `
        -Passed ($Count -eq 0) `
        -Notes "Lookup result only."

    $Result = Resolve-RegistryBinding `
        -RegistryPath $MatchingRegistryPath `
        -CapabilityId "qai_experimentation" `
        -RequestId "CT-CURRENT-04"

    $Status = [string]$Result.status
    Add-Result `
        -TestId "CURRENT-04" `
        -TestName "Matching candidate remains unresolved" `
        -Group "Current behavior" `
        -Expected "INSUFFICIENT_INFORMATION" `
        -Actual $Status `
        -Passed ($Status -eq "INSUFFICIENT_INFORMATION") `
        -Notes "Compatibility evaluation is not implemented."

    # Group B: future contract checks.
    # These tests verify that the documented cases exist; they do not claim
    # that the resolver already implements their expected outcomes.

    Write-Host ""
    Write-Host "--- Group B: Future Contract Coverage ---"

    $FutureCases = @(
        [pscustomobject]@{
            Id = "CT-01"
            Name = "All requested constraints match"
        },
        [pscustomobject]@{
            Id = "CT-03"
            Name = "Environment explicitly unsupported"
        },
        [pscustomobject]@{
            Id = "CT-04"
            Name = "Environment metadata missing"
        },
        [pscustomobject]@{
            Id = "CT-05"
            Name = "Execution mode explicitly unsupported"
        },
        [pscustomobject]@{
            Id = "CT-08"
            Name = "Version definitively mismatches"
        },
        [pscustomobject]@{
            Id = "CT-11"
            Name = "Required resource explicitly unsupported"
        },
        [pscustomobject]@{
            Id = "CT-13"
            Name = "One incompatible and one compatible candidate"
        },
        [pscustomobject]@{
            Id = "CT-16"
            Name = "Malformed registry handling"
        },
        [pscustomobject]@{
            Id = "CT-17"
            Name = "Missing bindings collection handling"
        },
        [pscustomobject]@{
            Id = "CT-20"
            Name = "Conflicting or ambiguous metadata"
        }
    )

    $MatrixText = Get-Content -LiteralPath $MatrixPath -Raw

    foreach ($Case in $FutureCases) {
        # Confirm each scenario is represented in the matrix.
        $Present = $MatrixText.Contains($Case.Id)

        Add-Result `
            -TestId $Case.Id `
            -TestName $Case.Name `
            -Group "Future contract coverage" `
            -Expected "Scenario documented" `
            -Actual $(if ($Present) { "Documented" } else { "Not found" }) `
            -Passed $Present `
            -Notes "Documentation check only; resolver behavior not tested."
    }

    Write-Host ""
    Write-Host "=== Test Results ==="

    $Results |
        Format-Table TestId, Group, Result, Scenario, Expected, Actual -AutoSize |
        Out-Host

    $CurrentCount = @(
        $Results | Where-Object { $_.Group -eq "Current behavior" }
    ).Count

    $FutureCount = @(
        $Results | Where-Object { $_.Group -eq "Future contract coverage" }
    ).Count

    $PassedCount = @(
        $Results | Where-Object { $_.Result -eq "PASS" }
    ).Count

    Write-Host ""
    Write-Host "Current behavior checks: $CurrentCount"
    Write-Host "Future contract documentation checks: $FutureCount"
    Write-Host "Passed: $PassedCount / $($Results.Count)"

    if ($Failures.Count -gt 0) {
        Write-Host ""
        Write-Host "FAILED CHECKS:"
        $Failures | ForEach-Object { Write-Host " - $_" }
        throw "Contract test suite reported failures."
    }

    Write-Host ""
    Write-Host "ALL EXECUTED CHECKS PASSED."
    Write-Host "Note: future contract coverage checks verify documentation only."
}
finally {
    if (Test-Path -LiteralPath $TempRoot -PathType Container) {
        Remove-Item -LiteralPath $TempRoot -Recurse -Force
        Write-Host ""
        Write-Host "Synthetic temporary files cleaned up."
    }
}

Write-Host "Resolver source, production registry, and Bootstrapper were not modified."

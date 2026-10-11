
# Test-RegistryResolverLookup.ps1
# General Factory Registry Resolver - Controlled Lookup Tests
#
# Run from:
# E:\Bhadale IT\github\holdco
#
# Safety:
# - Uses synthetic registry fixtures only.
# - Does not modify the actual runtime_bindings.json.
# - Does not modify the resolver source.
# - Does not execute runners or deployments.
# - Cleans up only its own temporary test directory.

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# ------------------------------------------------------------
# 1. Resolve paths
# ------------------------------------------------------------

$HoldcoRoot = (Get-Location).Path

$ExpectedRoot = "E:\Bhadale IT\github\holdco"

if (-not [string]::Equals(
    $HoldcoRoot.TrimEnd('\'),
    $ExpectedRoot.TrimEnd('\'),
    [System.StringComparison]::OrdinalIgnoreCase
)) {
    throw "Run this script from: $ExpectedRoot"
}

$ResolverRoot = Join-Path $HoldcoRoot `
    "general_factory\reference_implementations\registry_resolver"

$ResolverPath = Join-Path $ResolverRoot `
    "src\Resolve-RegistryBinding.ps1"

if (-not (Test-Path -LiteralPath $ResolverPath -PathType Leaf)) {
    throw "Resolver source file not found: $ResolverPath"
}

$TestRoot = Join-Path ([System.IO.Path]::GetTempPath()) `
    ("GF-Resolver-Test-" + [guid]::NewGuid().ToString("N"))

$TestDirectoryCreated = $false

try {
    # --------------------------------------------------------
    # 2. Create isolated temporary test directory
    # --------------------------------------------------------

    New-Item -Path $TestRoot -ItemType Directory | Out-Null
    $TestDirectoryCreated = $true

    Write-Host "`n=== Registry Resolver Lookup Tests ===" `
        -ForegroundColor Cyan

    Write-Host "Resolver: $ResolverPath"
    Write-Host "Temporary fixtures: $TestRoot"

    # Load the function into the current PowerShell session.
    . $ResolverPath

    # --------------------------------------------------------
    # 3. Define synthetic registry fixtures
    # --------------------------------------------------------

    $EmptyRegistry = @{
        registry = "test_registry"
        version  = "test"
        bindings = @()
    }

    $MatchingRegistry = @{
        registry = "test_registry"
        version  = "test"
        bindings = @(
            @{
                binding_id                = "TEST-BINDING-001"
                framework_capability_id   = "qai_experimentation"
                factory_implementation_id = "TEST-IMPLEMENTATION-001"
                implementation_version    = "0.1.0"
                status                    = "registered"
                environment               = "local"
                execution_mode            = "virtual"
                resource_requirements     = @("cpu")
            }
        )
    }

    $NonMatchingRegistry = @{
        registry = "test_registry"
        version  = "test"
        bindings = @(
            @{
                binding_id              = "TEST-BINDING-002"
                framework_capability_id = "different_capability"
            }
        )
    }

    # --------------------------------------------------------
    # 4. Define expected findings
    # --------------------------------------------------------

    $Scenarios = @(
        @{
            Name = "Empty registry"
            Data = $EmptyRegistry
            Capability = "qai_experimentation"
            ExpectedCount = 0
            ExpectedStatus = "INSUFFICIENT_INFORMATION"
            ExpectedFinding = @(
                "Registry contains no registered bindings."
            )
        },
        @{
            Name = "Matching capability"
            Data = $MatchingRegistry
            Capability = "qai_experimentation"
            ExpectedCount = 1
            ExpectedStatus = "INSUFFICIENT_INFORMATION"
            ExpectedFinding = @(
                "Matching candidates found: 1."
                "Compatibility and execution readiness have not been validated."
            )
        },
        @{
            Name = "Non-matching capability"
            Data = $NonMatchingRegistry
            Capability = "qai_experimentation"
            ExpectedCount = 0
            ExpectedStatus = "INSUFFICIENT_INFORMATION"
            ExpectedFinding = @(
                "No binding matches capability 'qai_experimentation'."
            )
        }
    )

    # --------------------------------------------------------
    # 5. Execute tests and evaluate assertions
    # --------------------------------------------------------

    $Results = @()

    foreach ($Scenario in $Scenarios) {

        Write-Host "`nTesting: $($Scenario.Name)" `
            -ForegroundColor Cyan

        $SafeName = $Scenario.Name -replace '[^a-zA-Z0-9]+', '_'
        $FixturePath = Join-Path $TestRoot "$SafeName.json"

        $Scenario.Data |
            ConvertTo-Json -Depth 10 |
            Set-Content -LiteralPath $FixturePath -Encoding UTF8

        $Actual = Resolve-RegistryBinding `
            -RegistryPath $FixturePath `
            -CapabilityId $Scenario.Capability `
            -RequestId "TEST-REQUEST"

        $ActualCount = @($Actual.matched_bindings).Count
        $ActualFindings = @($Actual.findings)
        $ActualFindingText = $ActualFindings -join " | "
        $ExpectedFindingText = @($Scenario.ExpectedFinding) -join " | "

        $CountPass = $ActualCount -eq $Scenario.ExpectedCount

        $StatusPass = $Actual.status -eq $Scenario.ExpectedStatus

        $FindingPass = $ActualFindingText -eq $ExpectedFindingText

        $Results += [pscustomobject]@{
            Scenario     = $Scenario.Name
            Expected     = $Scenario.ExpectedCount
            Actual       = $ActualCount
            StatusCheck  = if ($StatusPass) { "PASS" } else { "FAIL" }
            CountCheck   = if ($CountPass) { "PASS" } else { "FAIL" }
            FindingCheck = if ($FindingPass) { "PASS" } else { "FAIL" }
        }

        if (-not $FindingPass) {
            Write-Host "Expected findings:" -ForegroundColor Yellow
            $Scenario.ExpectedFinding | ForEach-Object {
                Write-Host "  $_"
            }

            Write-Host "Actual findings:" -ForegroundColor Yellow
            $ActualFindings | ForEach-Object {
                Write-Host "  $_"
            }
        }
    }

    # --------------------------------------------------------
    # 6. Display test summary
    # --------------------------------------------------------

    Write-Host "`n=== Controlled Lookup Test Results ===" `
        -ForegroundColor Cyan

    $Results | Format-Table -AutoSize

    $Failures = @(
        $Results | Where-Object {
            $_.StatusCheck -ne "PASS" -or
            $_.CountCheck -ne "PASS" -or
            $_.FindingCheck -ne "PASS"
        }
    )

    if ($Failures.Count -eq 0) {
        Write-Host "`nALL ASSERTIONS PASSED." -ForegroundColor Green
    }
    else {
        Write-Host "`n$($Failures.Count) scenario(s) failed." `
            -ForegroundColor Red
    }
}
finally {
    # --------------------------------------------------------
    # 7. Clean up only this script's temporary directory
    # --------------------------------------------------------

    if ($TestDirectoryCreated -and
        (Test-Path -LiteralPath $TestRoot -PathType Container)) {

        Remove-Item -LiteralPath $TestRoot -Recurse -Force

        Write-Host "`nTemporary test files cleaned up."
    }

    Write-Host "Actual registry and resolver source were not modified."
}

# Return a nonzero exit code when run as a standalone script
# if any test assertion failed.
if ($null -ne $Results -and $Failures.Count -gt 0) {
    exit 1
}

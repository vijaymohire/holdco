$ErrorActionPreference = "Stop"
$Passed = 0
$Failed = 0
$TempRoot = Join-Path ([System.IO.Path]::GetTempPath()) (
    "registry-evidence-reference-" + [guid]::NewGuid().ToString("N")
)

function Assert-Test {
    param(
        [string]$Name,
        [bool]$Condition,
        [string]$Detail = ""
    )

    if ($Condition) {
        $script:Passed++
        Write-Host "[PASS] $Name" -ForegroundColor Green
    }
    else {
        $script:Failed++
        Write-Host "[FAIL] $Name $Detail" -ForegroundColor Red
    }
}

try {
    New-Item -ItemType Directory -Path $TempRoot -Force | Out-Null
    $BaseDirectory = Join-Path $TempRoot "evidence"
    $OutsideDirectory = Join-Path $TempRoot "outside"
    New-Item -ItemType Directory -Path $BaseDirectory -Force | Out-Null
    New-Item -ItemType Directory -Path $OutsideDirectory -Force | Out-Null

    $SourcePath = Join-Path $PSScriptRoot "..\src\Test-RegistryEvidenceReference.ps1"
    if (-not (Test-Path -LiteralPath $SourcePath -PathType Leaf)) {
        throw "Validator source not found: $SourcePath"
    }
    . $SourcePath

    $EvidenceFile = Join-Path $BaseDirectory "report.txt"
    Set-Content -LiteralPath $EvidenceFile -Value "synthetic evidence content" -Encoding UTF8

    $OutsideFile = Join-Path $OutsideDirectory "outside.txt"
    Set-Content -LiteralPath $OutsideFile -Value "outside content" -Encoding UTF8

    $ExpectedHash = (Get-FileHash -LiteralPath $EvidenceFile -Algorithm SHA256).Hash

    $FileUri = ([System.Uri]$EvidenceFile).AbsoluteUri
    $OutsideUri = ([System.Uri]$OutsideFile).AbsoluteUri

    $Existing = Test-RegistryEvidenceReference -Reference $FileUri -BaseDirectory $BaseDirectory
    Assert-Test "Existing local file is recognized" ($Existing.status -eq "EXISTS" -and $Existing.exists)

    $MissingUri = ([System.Uri](Join-Path $BaseDirectory "missing.txt")).AbsoluteUri
    $Missing = Test-RegistryEvidenceReference -Reference $MissingUri -BaseDirectory $BaseDirectory
    Assert-Test "Missing local file is reported" ($Missing.status -eq "MISSING" -and -not $Missing.exists)

    $Outside = Test-RegistryEvidenceReference -Reference $OutsideUri -BaseDirectory $BaseDirectory
    Assert-Test "Outside path is rejected" ($Outside.status -eq "OUTSIDE_BASE_DIRECTORY" -and -not $Outside.exists)


    # Additional adversarial test: directory traversal.
    $TraversalPath = Join-Path $BaseDirectory "..\outside\outside.txt"
    $TraversalFullPath = [System.IO.Path]::GetFullPath($TraversalPath)
    $TraversalUri = ([System.Uri]$TraversalFullPath).AbsoluteUri

    $Traversal = Test-RegistryEvidenceReference `
        -Reference $TraversalUri `
        -BaseDirectory $BaseDirectory

    Assert-Test "Directory traversal is rejected" (
        $Traversal.status -eq "OUTSIDE_BASE_DIRECTORY"
    )

    # Additional adversarial test: symbolic link to an external file.
    $LinkPath = Join-Path $BaseDirectory "outside-link.txt"
    $LinkCreated = $false

    try {
        New-Item -ItemType SymbolicLink `
            -Path $LinkPath `
            -Target $OutsideFile `
            -ErrorAction Stop | Out-Null

        $LinkCreated = $true
    }
    catch {
        Write-Host "[SKIP] Symbolic-link test unavailable: $($_.Exception.Message)" -ForegroundColor Yellow
    }

    if ($LinkCreated) {
        $LinkUri = ([System.Uri]$LinkPath).AbsoluteUri

        $LinkResult = Test-RegistryEvidenceReference `
            -Reference $LinkUri `
            -BaseDirectory $BaseDirectory

        Assert-Test "Symbolic link to outside file is rejected" (
            $LinkResult.status -eq "LINK_NOT_ALLOWED"
        )
    }


    $HashMatch = Test-RegistryEvidenceReference -Reference $FileUri -BaseDirectory $BaseDirectory -ExpectedSha256 $ExpectedHash
    Assert-Test "Correct SHA-256 matches" ($HashMatch.status -eq "EXISTS" -and $HashMatch.hash_status -eq "MATCH")

    $WrongHash = ("0" * 64)
    if ($WrongHash -eq $ExpectedHash) {
        $WrongHash = "F" * 64
    }
    $HashMismatch = Test-RegistryEvidenceReference -Reference $FileUri -BaseDirectory $BaseDirectory -ExpectedSha256 $WrongHash
    Assert-Test "Incorrect SHA-256 is reported" ($HashMismatch.status -eq "INTEGRITY_MISMATCH" -and $HashMismatch.hash_status -eq "MISMATCH")

    $Url = Test-RegistryEvidenceReference -Reference "https://example.com/evidence/report.pdf" -BaseDirectory $BaseDirectory
    Assert-Test "Valid HTTPS URL is syntax-checked only" ($Url.status -eq "UNVERIFIED" -and $Url.reference_type -eq "url")

    $Synthetic = Test-RegistryEvidenceReference -Reference "synthetic://test-report-001" -BaseDirectory $BaseDirectory
    Assert-Test "Synthetic reference remains unverified" ($Synthetic.status -eq "UNVERIFIED" -and $Synthetic.reference_type -eq "synthetic")

    $Unsupported = Test-RegistryEvidenceReference -Reference "ftp://example.com/report.txt" -BaseDirectory $BaseDirectory
    Assert-Test "Unsupported scheme is rejected" ($Unsupported.status -eq "INVALID")

    $MalformedHashRejected = $false
    try {
        Test-RegistryEvidenceReference -Reference $FileUri -BaseDirectory $BaseDirectory -ExpectedSha256 "ABC123" | Out-Null
    }
    catch {
        $MalformedHashRejected = $true
    }
    Assert-Test "Malformed expected hash is rejected" $MalformedHashRejected

    $InvalidBaseRejected = $false
    try {
        Test-RegistryEvidenceReference -Reference $FileUri -BaseDirectory (Join-Path $TempRoot "does-not-exist") | Out-Null
    }
    catch {
        $InvalidBaseRejected = $true
    }
    Assert-Test "Invalid base directory is rejected" $InvalidBaseRejected

    Write-Host "`nPassed: $Passed; Failed: $Failed"
    if ($Failed -gt 0) {
        throw "Reference-validator tests failed."
    }
}
finally {
    if (Test-Path -LiteralPath $TempRoot) {
        Remove-Item -LiteralPath $TempRoot -Recurse -Force
    }
}

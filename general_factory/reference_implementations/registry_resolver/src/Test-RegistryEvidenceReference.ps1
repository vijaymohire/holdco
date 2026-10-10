function Test-RegistryEvidenceReference {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]$Reference,

        [Parameter(Mandatory = $true)]
        [string]$BaseDirectory,

        [string]$ExpectedSha256
    )

    Set-StrictMode -Version Latest
    $ErrorActionPreference = "Stop"

    if ([string]::IsNullOrWhiteSpace($Reference)) {
        throw "Reference cannot be empty."
    }

    if (-not (Test-Path -LiteralPath $BaseDirectory -PathType Container)) {
        throw "BaseDirectory does not exist or is not a directory: $BaseDirectory"
    }

    if (-not [string]::IsNullOrWhiteSpace($ExpectedSha256) -and
        $ExpectedSha256 -notmatch '^[A-Fa-f0-9]{64}$') {
        throw "ExpectedSha256 must contain exactly 64 hexadecimal characters."
    }

    $SchemeMatch = [regex]::Match($Reference, '^([A-Za-z][A-Za-z0-9+.-]*):')
    if (-not $SchemeMatch.Success) {
        return [pscustomobject]@{
            reference = $Reference
            status = "INVALID"
            reference_type = "unknown"
            resolved_path = $null
            exists = $false
            hash_status = "NOT_CHECKED"
            expected_sha256 = $ExpectedSha256
            actual_sha256 = $null
            findings = @("Reference must use a supported URI scheme.")
        }
    }

    $Scheme = $SchemeMatch.Groups[1].Value.ToLowerInvariant()

    switch ($Scheme) {
        { $_ -in @("http", "https") } {
            $ParsedUri = $null
            $ValidUri = [System.Uri]::TryCreate(
                $Reference,
                [System.UriKind]::Absolute,
                [ref]$ParsedUri
            )

            if (-not $ValidUri -or
                $ParsedUri.Scheme -ne $Scheme -or
                [string]::IsNullOrWhiteSpace($ParsedUri.Host)) {
                return [pscustomobject]@{
                    reference = $Reference
                    status = "INVALID"
                    reference_type = "url"
                    resolved_path = $null
                    exists = $false
                    hash_status = "NOT_CHECKED"
                    expected_sha256 = $ExpectedSha256
                    actual_sha256 = $null
                    findings = @("HTTP(S) reference is not a valid absolute URL.")
                }
            }

            return [pscustomobject]@{
                reference = $Reference
                status = "UNVERIFIED"
                reference_type = "url"
                resolved_path = $null
                exists = $false
                hash_status = "NOT_CHECKED"
                expected_sha256 = $ExpectedSha256
                actual_sha256 = $null
                findings = @("URL syntax is valid; the remote resource was not fetched or verified.")
            }
        }

        "synthetic" {
            return [pscustomobject]@{
                reference = $Reference
                status = "UNVERIFIED"
                reference_type = "synthetic"
                resolved_path = $null
                exists = $false
                hash_status = "NOT_CHECKED"
                expected_sha256 = $ExpectedSha256
                actual_sha256 = $null
                findings = @("Synthetic reference accepted for test use; no external resource was checked.")
            }
        }

        "file" {
            $FileUri = $null
            if (-not [System.Uri]::TryCreate(
                $Reference,
                [System.UriKind]::Absolute,
                [ref]$FileUri
            ) -or $FileUri.Scheme -ne "file") {
                return [pscustomobject]@{
                    reference = $Reference
                    status = "INVALID"
                    reference_type = "file"
                    resolved_path = $null
                    exists = $false
                    hash_status = "NOT_CHECKED"
                    expected_sha256 = $ExpectedSha256
                    actual_sha256 = $null
                    findings = @("File reference is not a valid absolute file URI.")
                }
            }

            $CandidatePath = $FileUri.LocalPath
        }

        default {
            return [pscustomobject]@{
                reference = $Reference
                status = "INVALID"
                reference_type = $Scheme
                resolved_path = $null
                exists = $false
                hash_status = "NOT_CHECKED"
                expected_sha256 = $ExpectedSha256
                actual_sha256 = $null
                findings = @("Unsupported reference scheme '$Scheme'.")
            }
        }
    }

    $ResolvedBase = [System.IO.Path]::GetFullPath($BaseDirectory)
    $ResolvedPath = [System.IO.Path]::GetFullPath($CandidatePath)


    # Enforce containment within the declared base directory.
    # Preserve filesystem roots such as C:\ when building the prefix.
    $BaseRoot = [System.IO.Path]::GetPathRoot($ResolvedBase)

    if ($ResolvedBase.Equals(
        $BaseRoot,
        [System.StringComparison]::OrdinalIgnoreCase
    )) {
        $BasePrefix = $ResolvedBase
    }
    else {
        $BasePrefix = $ResolvedBase.TrimEnd(
            [System.IO.Path]::DirectorySeparatorChar,
            [System.IO.Path]::AltDirectorySeparatorChar
        ) + [System.IO.Path]::DirectorySeparatorChar
    }

    $PathIsInsideBase = (
        $ResolvedPath.StartsWith(
            $BasePrefix,
            [System.StringComparison]::OrdinalIgnoreCase
        ) -or
        $ResolvedPath.Equals(
            $ResolvedBase,
            [System.StringComparison]::OrdinalIgnoreCase
        )
    )


    if (-not $PathIsInsideBase) {
        return [pscustomobject]@{
            reference = $Reference
            status = "OUTSIDE_BASE_DIRECTORY"
            reference_type = "file"
            resolved_path = $ResolvedPath
            exists = $false
            hash_status = "NOT_CHECKED"
            expected_sha256 = $ExpectedSha256
            actual_sha256 = $null
            findings = @("Referenced path is outside the declared base directory.")
        }
    }


    # Fail closed if the base directory or any existing path component
    # is a symbolic link, junction, or other reparse point.
    $PathToCheck = $ResolvedBase
    $RelativePath = [System.IO.Path]::GetRelativePath(
        $ResolvedBase,
        $ResolvedPath
    )

    $Components = @()
    if ($RelativePath -ne ".") {
        $Components = @(
            $RelativePath -split '[\\/]'
        )
    }

    $PathsToCheck = @($PathToCheck)

    foreach ($Component in $Components) {
        $PathToCheck = Join-Path -Path $PathToCheck -ChildPath $Component
        $PathsToCheck += $PathToCheck
    }

    foreach ($PathComponent in $PathsToCheck) {
        if (Test-Path -LiteralPath $PathComponent) {
            $Item = Get-Item -LiteralPath $PathComponent -Force
            if (($Item.Attributes -band [System.IO.FileAttributes]::ReparsePoint) -ne 0) {
                return [pscustomobject]@{
                    reference = $Reference
                    status = "LINK_NOT_ALLOWED"
                    reference_type = "file"
                    resolved_path = $ResolvedPath
                    exists = $false
                    hash_status = "NOT_CHECKED"
                    expected_sha256 = $ExpectedSha256
                    actual_sha256 = $null
                    findings = @(
                        "Reference traverses a symbolic link, junction, or other reparse point; resolution was rejected."
                    )
                }
            }
        }
    }


    if (-not (Test-Path -LiteralPath $ResolvedPath -PathType Leaf)) {
        return [pscustomobject]@{
            reference = $Reference
            status = "MISSING"
            reference_type = "file"
            resolved_path = $ResolvedPath
            exists = $false
            hash_status = "NOT_CHECKED"
            expected_sha256 = $ExpectedSha256
            actual_sha256 = $null
            findings = @("Referenced local file does not exist.")
        }
    }

    $HashStatus = "NOT_REQUESTED"
    $ActualHash = $null
    $Findings = @("Local file exists; existence alone does not establish authenticity.")

    if (-not [string]::IsNullOrWhiteSpace($ExpectedSha256)) {
        $ActualHash = (Get-FileHash -LiteralPath $ResolvedPath -Algorithm SHA256).Hash

        if ($ActualHash -ieq $ExpectedSha256) {
            $HashStatus = "MATCH"
            $Findings += "SHA-256 matches the supplied expected hash."
        }
        else {
            $HashStatus = "MISMATCH"
            $Findings += "SHA-256 does not match the supplied expected hash."
        }
    }

    $ResultStatus = "EXISTS"
    if ($HashStatus -eq "MISMATCH") {
        $ResultStatus = "INTEGRITY_MISMATCH"
    }

    return [pscustomobject]@{
        reference = $Reference
        status = $ResultStatus
        reference_type = "file"
        resolved_path = $ResolvedPath
        exists = $true
        hash_status = $HashStatus
        expected_sha256 = $ExpectedSha256
        actual_sha256 = $ActualHash
        findings = @($Findings)
    }
}

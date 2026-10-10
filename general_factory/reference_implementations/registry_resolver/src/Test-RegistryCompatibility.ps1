function Test-RegistryCompatibility {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Collections.IDictionary]$Request,

        [Parameter(Mandatory)]
        [System.Collections.IDictionary]$Registry
    )

    Set-StrictMode -Version Latest

    # Validate request contract.
    foreach ($Field in @("request_id", "framework_capability_id")) {
        if (
            -not $Request.Contains($Field) -or
            [string]::IsNullOrWhiteSpace([string]$Request[$Field])
        ) {
            throw "Request is missing required field: $Field"
        }
    }

    # Validate registry structure.
    if (-not $Registry.Contains("bindings")) {
        throw "Registry does not contain a bindings collection."
    }

    if ($null -eq $Registry["bindings"]) {
        throw "Registry bindings collection is null."
    }

    $Bindings = @($Registry["bindings"])

    foreach ($Binding in $Bindings) {
        if ($Binding -isnot [System.Collections.IDictionary]) {
            throw "Every registry binding must be a dictionary/object."
        }
    }

    $Capability = [string]$Request["framework_capability_id"]

    $Candidates = @(
        $Bindings | Where-Object {
            $_.Contains("framework_capability_id") -and
            [string]$_.framework_capability_id -eq $Capability
        }
    )

    $CandidateResults = @()
    $Findings = @()
    $Evidence = @()

    if ($Candidates.Count -eq 0) {
        $Findings += "No registered binding matches the requested capability."

        return [pscustomobject]@{
            request_id           = [string]$Request["request_id"]
            status               = "INCOMPATIBLE"
            requested_capability = $Capability
            matched_bindings     = @()
            candidate_results    = @()
            findings             = @($Findings)
            evidence_references  = @()
        }
    }

    foreach ($Candidate in $Candidates) {
        $BindingId = "UNIDENTIFIED-BINDING"

        if (
            $Candidate.Contains("binding_id") -and
            -not [string]::IsNullOrWhiteSpace([string]$Candidate["binding_id"])
        ) {
            $BindingId = [string]$Candidate["binding_id"]
        }

        $CandidateFindings = @()
        $Failures = @()
        $Unknowns = @()

        # Evaluate scalar or array-valued support declarations.
        foreach ($Dimension in @(
            @{ RequestField = "environment"; BindingField = "environment" },
            @{ RequestField = "execution_mode"; BindingField = "execution_mode" },
            @{ RequestField = "implementation_version"; BindingField = "implementation_version" }
        )) {
            $RequestField = $Dimension.RequestField
            $BindingField = $Dimension.BindingField

            # An omitted or empty optional request field adds no constraint.
            if (
                -not $Request.Contains($RequestField) -or
                $null -eq $Request[$RequestField] -or
                [string]::IsNullOrWhiteSpace([string]$Request[$RequestField])
            ) {
                continue
            }

            $RequestedValue = [string]$Request[$RequestField]

            if (
                -not $Candidate.Contains($BindingField) -or
                $null -eq $Candidate[$BindingField] -or
                [string]::IsNullOrWhiteSpace([string]$Candidate[$BindingField])
            ) {
                $Unknowns += "$RequestField support is not declared."
                continue
            }

            $DeclaredValues = @($Candidate[$BindingField] | ForEach-Object {
                [string]$_
            })

            $Matched = $false

            foreach ($DeclaredValue in $DeclaredValues) {
                if ($RequestField -eq "implementation_version") {
                    # Initial policy: exact, case-insensitive string comparison.
                    if ([string]::Equals(
                        $RequestedValue,
                        $DeclaredValue,
                        [System.StringComparison]::OrdinalIgnoreCase
                    )) {
                        $Matched = $true
                    }
                }
                elseif ([string]::Equals(
                    $RequestedValue,
                    $DeclaredValue,
                    [System.StringComparison]::OrdinalIgnoreCase
                )) {
                    $Matched = $true
                }
            }

            if ($Matched) {
                $CandidateFindings += "$RequestField matched."
            }
            else {
                $Failures += "$RequestField '$RequestedValue' is not supported."
            }
        }

        # Required resources must all be explicitly declared as supported.
        $RequiredResources = @()

        if (
            $Request.Contains("required_resources") -and
            $null -ne $Request["required_resources"]
        ) {
            $RequiredResources = @($Request["required_resources"])
        }

        if ($RequiredResources.Count -gt 0) {
            if (
                -not $Candidate.Contains("supported_resources") -or
                $null -eq $Candidate["supported_resources"]
            ) {
                $Unknowns += "Resource support is not declared."
            }
            else {
                $SupportedResources = @(
                    $Candidate["supported_resources"] | ForEach-Object {
                        [string]$_
                    }
                )

                foreach ($Resource in $RequiredResources) {
                    $ResourceName = [string]$Resource

                    if ([string]::IsNullOrWhiteSpace($ResourceName)) {
                        $Unknowns += "Request contains an empty resource requirement."
                        continue
                    }

                    $ResourceMatched = $false

                    foreach ($SupportedResource in $SupportedResources) {
                        if ([string]::Equals(
                            $ResourceName,
                            $SupportedResource,
                            [System.StringComparison]::OrdinalIgnoreCase
                        )) {
                            $ResourceMatched = $true
                            break
                        }
                    }

                    if ($ResourceMatched) {
                        $CandidateFindings += "Resource '$ResourceName' is supported."
                    }
                    else {
                        $Failures += "Required resource '$ResourceName' is not declared as supported."
                    }
                }
            }
        }

        # A proven failure takes precedence over unknown dimensions.
        if ($Failures.Count -gt 0) {
            $CandidateStatus = "INCOMPATIBLE"
        }
        elseif ($Unknowns.Count -gt 0) {
            $CandidateStatus = "INSUFFICIENT_INFORMATION"
        }
        else {
            $CandidateStatus = "COMPATIBLE"
        }

        foreach ($Message in $Failures) {
            $CandidateFindings += $Message
        }

        foreach ($Message in $Unknowns) {
            $CandidateFindings += $Message
        }

        $CandidateResults += [pscustomobject]@{
            binding_id = $BindingId
            status = $CandidateStatus
            findings = @($CandidateFindings)
        }

        $Evidence += $BindingId
    }

    $CompatibleCount = @(
        $CandidateResults | Where-Object { $_.status -eq "COMPATIBLE" }
    ).Count

    $UnknownCount = @(
        $CandidateResults | Where-Object {
            $_.status -eq "INSUFFICIENT_INFORMATION"
        }
    ).Count

    if ($CompatibleCount -gt 0) {
        $OverallStatus = "COMPATIBLE"
    }
    elseif ($UnknownCount -gt 0) {
        $OverallStatus = "INSUFFICIENT_INFORMATION"
    }
    else {
        $OverallStatus = "INCOMPATIBLE"
    }

    foreach ($CandidateResult in $CandidateResults) {
        $Findings += (
            "Candidate '{0}': {1}." -f
            $CandidateResult.binding_id,
            $CandidateResult.status
        )

        foreach ($Message in $CandidateResult.findings) {
            $Findings += (
                "Candidate '{0}': {1}" -f
                $CandidateResult.binding_id,
                $Message
            )
        }
    }

    return [pscustomobject]@{
        request_id           = [string]$Request["request_id"]
        status               = $OverallStatus
        requested_capability = $Capability
        matched_bindings     = @($Candidates)
        candidate_results    = @($CandidateResults)
        findings             = @($Findings)
        evidence_references  = @($Evidence | Select-Object -Unique)
    }
}

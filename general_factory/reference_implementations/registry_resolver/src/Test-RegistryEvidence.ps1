function Test-RegistryEvidence {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [AllowEmptyCollection()]
        [object[]]$EvidenceRecords,

        [Parameter(Mandatory = $true)]
        [AllowEmptyCollection()]
        [string[]]$RequiredEvidenceTypes
    )

    $ErrorActionPreference = "Stop"

    $RequiredFields = @(
        "evidence_id",
        "evidence_type",
        "reference",
        "validation_status"
    )

    $AllowedStatuses = @("PASS", "FAIL", "NOT_RUN")
    $SeenIds = @{}
    $NormalizedRecords = @()
    $Findings = @()
    $EvidenceReferences = @()

    # Validate evidence records before evaluating their status.
    foreach ($Record in $EvidenceRecords) {
        if ($null -eq $Record -or
            $Record -isnot [System.Collections.IDictionary]) {
            throw "Each evidence record must be a dictionary."
        }

        foreach ($Field in $RequiredFields) {
            if (-not $Record.Contains($Field)) {
                throw "Evidence record is missing required field '$Field'."
            }

            if ([string]::IsNullOrWhiteSpace([string]$Record[$Field])) {
                throw "Evidence field '$Field' cannot be empty."
            }
        }

        $EvidenceId = [string]$Record["evidence_id"]
        $EvidenceType = [string]$Record["evidence_type"]
        $Reference = [string]$Record["reference"]
        $ValidationStatus = ([string]$Record["validation_status"]).ToUpperInvariant()

        if ($SeenIds.ContainsKey($EvidenceId)) {
            throw "Duplicate evidence_id '$EvidenceId'."
        }

        $SeenIds[$EvidenceId] = $true

        if ($AllowedStatuses -notcontains $ValidationStatus) {
            throw "Unsupported validation_status '$ValidationStatus' for evidence '$EvidenceId'."
        }

        $NormalizedRecords += @{
            evidence_id = $EvidenceId
            evidence_type = $EvidenceType
            reference = $Reference
            validation_status = $ValidationStatus
        }

        $EvidenceReferences += $Reference
    }

    $MissingTypes = @()
    $UnvalidatedIds = @()
    $FailedIds = @()

    foreach ($RequiredType in $RequiredEvidenceTypes) {
        if ([string]::IsNullOrWhiteSpace($RequiredType)) {
            throw "Required evidence types cannot contain empty values."
        }

        $TypeRecords = @(
            $NormalizedRecords | Where-Object {
                $_.evidence_type -eq $RequiredType
            }
        )

        if ($TypeRecords.Count -eq 0) {
            $MissingTypes += $RequiredType
            $Findings += "Required evidence type '$RequiredType' is missing."
            continue
        }

        # Strict fail-closed policy: any failed record for a required
        # evidence type takes precedence over passing records of that type.
        $FailingRecord = @(
            $TypeRecords | Where-Object {
                $_.validation_status -eq "FAIL"
            }
        )

        if ($FailingRecord.Count -gt 0) {
            foreach ($Item in $FailingRecord) {
                $FailedIds += $Item.evidence_id
                $Findings += "Evidence '$($Item.evidence_id)' failed validation."
            }
            continue
        }

        $PassingRecord = @(
            $TypeRecords | Where-Object {
                $_.validation_status -eq "PASS"
            }
        )

        if ($PassingRecord.Count -gt 0) {
            $Findings += "Required evidence type '$RequiredType' has a passing validation record and no failed records."
            continue
        }

        foreach ($Item in $TypeRecords) {
            $UnvalidatedIds += $Item.evidence_id
        }

        $Findings += "Required evidence type '$RequiredType' has no passing validation record."
    }

    if ($FailedIds.Count -gt 0) {
        $Status = "FAILED"
    }
    elseif (
        $RequiredEvidenceTypes.Count -eq 0 -or
        $MissingTypes.Count -gt 0 -or
        $UnvalidatedIds.Count -gt 0
    ) {
        $Status = "INSUFFICIENT_INFORMATION"
    }
    else {
        $Status = "VERIFIED"
    }

    if ($Findings.Count -eq 0) {
        $Findings += "All required evidence types have passing validation records."
    }

    return @{
        status = $Status
        required_evidence_types = @($RequiredEvidenceTypes)
        evaluated_evidence = @($NormalizedRecords)
        missing_evidence_types = @($MissingTypes)
        unvalidated_evidence_ids = @($UnvalidatedIds)
        failed_evidence_ids = @($FailedIds)
        findings = @($Findings)
        evidence_references = @($EvidenceReferences)
    }
}

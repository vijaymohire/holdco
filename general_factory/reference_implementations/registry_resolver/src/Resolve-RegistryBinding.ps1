
function Resolve-RegistryBinding {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$RegistryPath,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$CapabilityId,

        [string]$RequestId = "REQ-LOCAL-001"
    )

    if (-not (Test-Path -LiteralPath $RegistryPath -PathType Leaf)) {
        throw "Registry file not found: $RegistryPath"
    }

    # Read-only registry loading.
    try {
        $registry = Get-Content -LiteralPath $RegistryPath -Raw |
            ConvertFrom-Json -ErrorAction Stop
    }
    catch {
        throw "Unable to parse registry JSON: $($_.Exception.Message)"
    }

    if ($null -eq $registry.PSObject.Properties["bindings"]) {
        throw "Registry does not contain a bindings property."
    }

    if ($null -eq $registry.bindings) {
        throw "Registry bindings property is null."
    }

    $bindings = @($registry.bindings)

    $matches = @(
        $bindings | Where-Object {
            $_.framework_capability_id -eq $CapabilityId
        }
    )

    $findings = @()
    $status = "INSUFFICIENT_INFORMATION"

    if ($bindings.Count -eq 0) {
        $findings += "Registry contains no registered bindings."
    }
    elseif ($matches.Count -eq 0) {
        $findings += "No binding matches capability '$CapabilityId'."
    }
    else {
        $findings += "Matching candidates found: $($matches.Count)."
        $findings += "Compatibility and execution readiness have not been validated."
    }

    [pscustomobject]@{
        request_id           = $RequestId
        status               = $status
        requested_capability = $CapabilityId
        matched_bindings     = @($matches)
        findings             = @($findings)
        evidence_references  = @($RegistryPath)
    }
}

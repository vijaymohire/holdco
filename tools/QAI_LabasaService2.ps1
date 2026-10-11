$Root = "E:\Bhadale IT\github\holdco"
$Base = Join-Path $Root "qai_labaas\client_workspace"

$Folders = [ordered]@{
    "client_config"                    = "Client-specific configuration boundary."
    "client_config\environment"        = "Workspace environment configuration."
    "client_config\resource_profiles"  = "Workspace resource profile definitions."
    "client_config\policies"           = "Workspace policy configuration references."
    "client_config\manifests"           = "Workspace and deployment manifests."
    "workspace"                        = "Client workspace content and metadata."
    "workflows"                        = "Workspace-scoped workflow definitions."
    "notebooks"                        = "Workspace-scoped research notebooks."
    "experiments"                      = "Workspace-scoped experiment definitions and runs."
    "datasets"                         = "References and metadata for client datasets."
    "artifacts"                        = "Workspace-generated and delivered artifacts."
    "results"                          = "Workspace-scoped execution results."
    "evidence"                         = "Workspace-scoped validation and provenance evidence."
    "cache"                            = "Disposable, non-authoritative cached data."
    "sessions"                         = "Workspace session state and metadata."
}

if (-not (Test-Path -LiteralPath $Base -PathType Container)) {
    throw "Client workspace directory not found: $Base. No changes made."
}

foreach ($Entry in $Folders.GetEnumerator()) {
    $Directory = Join-Path $Base $Entry.Key

    if (-not (Test-Path -LiteralPath $Directory -PathType Container)) {
        New-Item -ItemType Directory -Path $Directory | Out-Null
        Write-Host "[CREATED DIR ] $($Entry.Key)"
    }
    else {
        Write-Host "[EXISTS DIR  ] $($Entry.Key)"
    }

    $Readme = Join-Path $Directory "README.md"

    if (-not (Test-Path -LiteralPath $Readme -PathType Leaf)) {
        $Content = @(
            "# $($Entry.Key)"
            ""
            $Entry.Value
            ""
            "## Implementation status"
            ""
            "Structure established; implementation and integration are pending."
            ""
            "## Boundaries"
            ""
            "- Keep client data and configuration scoped to the appropriate workspace."
            "- Do not commit secrets, credentials, or confidential client data."
            "- Keep authoritative evidence separate from disposable cache data."
            "- Define contracts before implementing integrations."
        ) -join "`r`n"

        Set-Content -LiteralPath $Readme -Value $Content -Encoding UTF8
        Write-Host "[CREATED DOC ] $($Entry.Key)\README.md"
    }
    else {
        Write-Host "[PRESERVED   ] $($Entry.Key)\README.md"
    }
}

Write-Host "`nClient workspace structure pass completed."


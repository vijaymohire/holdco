# General Factory Bootstrapper - MVP Launcher

$Bootstrapper = Join-Path `
    $PSScriptRoot `
    "Invoke-GeneralFactoryBootstrapper.ps1"

if (-not (Test-Path -LiteralPath $Bootstrapper)) {
    throw "Bootstrapper script not found: $Bootstrapper"
}

& $Bootstrapper

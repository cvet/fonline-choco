$ErrorActionPreference = 'Stop'

if ($Env:ChocolateyPackageFolder) {
    $path = Join-Path -Path $Env:ChocolateyPackageFolder -ChildPath "content"
    Write-Host ("Set environment variable FONLINE_PATH to: " + $path)
    Install-ChocolateyEnvironmentVariable "FONLINE_PATH" $path User
}

$ErrorActionPreference = 'Stop'

Write-Host ("Set environment variable FONLINE_PATH to: " + $env:ChocolateyPackageFolder)
Install-ChocolateyEnvironmentVariable "FONLINE_PATH" $env:ChocolateyPackageFolder Machine

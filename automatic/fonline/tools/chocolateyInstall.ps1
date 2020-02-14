$ErrorActionPreference = 'Stop'

Write-Host ("Set environment variable FONLINE_PATH to: " + $Env:ChocolateyPackageFolder)
Install-ChocolateyEnvironmentVariable "FONLINE_PATH" $Env:ChocolateyPackageFolder Machine

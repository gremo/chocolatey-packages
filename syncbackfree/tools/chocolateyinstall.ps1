$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBack_Setup.exe'
  checksum       = '115643c6c16fd5d611d0c1c2c6fe59d7ede8197eaabb1d538801c9efdc3352ce'
  checksumType   = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Write-debug "OS Name: $($env:OS_NAME)"
if ($env:OS_NAME -like "*Server*") {
    throw "Cannot be installed on a Server operating system ($($env:OS_NAME))."
}

Install-ChocolateyPackage @packageArgs

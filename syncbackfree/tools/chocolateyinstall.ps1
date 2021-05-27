$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBack_Setup.exe'
  checksum       = 'cbab52d662671b1745c41f4309f29000a8804741ca98d2d3cdb74cc856f80949'
  checksumType   = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Write-debug "OS Name: $($env:OS_NAME)"
if ($env:OS_NAME -like "*Server*") {
    throw "Cannot be installed on a Server operating system ($($env:OS_NAME))."
}

Install-ChocolateyPackage @packageArgs

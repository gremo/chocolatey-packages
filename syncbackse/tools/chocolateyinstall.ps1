$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = 'aedcad55f80c0f4ece30dae3e6d3b73779108dbe96cf9e14ea8e24012e4f01d9'
  checksumType   = 'sha256'
  checksum64     = 'eae9260c78a2fe0ed3c21193d70ccb0558efa1640879b0ca5dd9d4702d57d5a1'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

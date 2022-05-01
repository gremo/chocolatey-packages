$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = '2ab9921a5f898e1693f6ef7b52945b90715beb16ced2aee2999e2d4d7638f406'
  checksumType   = 'sha256'
  checksum64     = 'ea9b466e271f798fe134fbd724c281a5a8176eb393ee2a23b66f0c29d1d51e9f'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

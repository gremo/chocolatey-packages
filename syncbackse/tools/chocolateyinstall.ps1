$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = 'dfdbc95a2aa42fb7dfb20a63f80a9bd37a6dd149ee73dc3e177b5c23e23c966c'
  checksumType   = 'sha256'
  checksum64     = '130e4ce597ae8d155456da4fd218b0c261669419dfd74044125d7b63feaa299b'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

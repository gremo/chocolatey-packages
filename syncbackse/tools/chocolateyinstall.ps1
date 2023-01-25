$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = '1d15dbd9cce79350116aed39cf0773917487ace67c3c7aa41e09f40f1d1c5d45'
  checksumType   = 'sha256'
  checksum64     = 'f1c0e9bd1be806d096352ca324554197d8e9367e26040555fd719ed68ae3ac1e'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

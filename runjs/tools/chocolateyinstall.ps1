$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/lukehaas/RunJS/releases/download/v2.3.1/RunJS-Setup-2.3.1.exe'
  checksum       = 'ba7af3884b683e2115343b3d262319086333bbb4fe8d2c9d9807c15126e12565'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

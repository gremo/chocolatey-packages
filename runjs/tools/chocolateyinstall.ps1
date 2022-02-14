$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/lukehaas/RunJS/releases/download/v2.3.0/RunJS-Setup-2.3.0.exe'
  checksum       = 'ad9681139855b2332594565fda8a0d3eac53d2e96a6ec644c4558dc77996be3c'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

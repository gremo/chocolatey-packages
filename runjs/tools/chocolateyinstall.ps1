$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/lukehaas/RunJS/releases/download/v2.1.3/RunJS-Setup-2.1.3.exe'
  checksum       = '196def3f3ee75b739ec2bb71c3cb530761a1f012aaab48e6d891227d66f12c4e'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

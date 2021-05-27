$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/lukehaas/RunJS/releases/download/v1.15.1/RunJS-Setup-1.15.1.exe'
  checksum       = '0591e0a0fb93cf126081532bd76622cc287ae9f190a98a90365568af44528912'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

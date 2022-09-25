$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/lukehaas/RunJS/releases/download/v2.6.0/RunJS-Setup-2.6.0.exe'
  checksum       = 'fcbd528a51946e57ae0a0e354686b84f4d767baa98c94b2ddc88d93a38e544da'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

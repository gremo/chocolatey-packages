$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/lukehaas/RunJS/releases/download/v1.15.0/RunJS-Setup-1.15.0.exe'
  checksum       = 'b823c6f446fe46a639490e42aff30e9e03d456687ee721da0986a304e0d86db8'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

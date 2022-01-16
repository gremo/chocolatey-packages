$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/lukehaas/RunJS/releases/download/v2.2.2/RunJS-Setup-2.2.2.exe'
  checksum       = '0950ad848f3d553f52a3caee535005e95f80fcd81ebc2dd3b9b25f5621fd9684'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

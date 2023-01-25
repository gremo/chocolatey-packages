$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/lukehaas/RunJS/releases/download/v2.7.5/RunJS-Setup-2.7.5.exe'
  checksum       = 'efe9457eece36e1da07d4c72e518a5cc50a46fc35beb53aecdef37737e89cbb2'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

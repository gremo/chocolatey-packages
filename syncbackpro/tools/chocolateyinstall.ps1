$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = 'f96931bdf35b3d1130f46c264a785e3bc8ec32841ca12edfd31a3e158150f0cd'
  checksumType   = 'sha256'
  checksum64     = 'a0778f6286da5b1980ad827f8af4a447e6b28cadc204a22b8ab4987a888b13e3'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

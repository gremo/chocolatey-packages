$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = '9b2307fb9485f49b22f542bfd251931202d9df2019d3fd2f51bc2cfded9c0e01'
  checksumType   = 'sha256'
  checksum64     = '7f4f0e310cc3ae50b3f5052132b1a0d0b7d2acfbac1cf4a01f915c0380d82a9e'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

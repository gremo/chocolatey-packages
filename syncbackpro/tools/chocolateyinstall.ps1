$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = '273b141a1011e558238994270e6ade9aba63a873b1d407685dcdf7bdce75370a'
  checksumType   = 'sha256'
  checksum64     = '9238ce0662535a6c8cb7e68571a0f846f4db8f7109890c65ba456f0e882ec59b'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

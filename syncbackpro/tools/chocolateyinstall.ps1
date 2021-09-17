$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = '7aa35ff23ad2543a238be44646652cee1319a89dbb5c7d60440775e96f5fd135'
  checksumType   = 'sha256'
  checksum64     = '3070b6ed9cfe328ed96fe0173bdffa7a1c3a5099fb200897873d00896fc3a08a'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = '8b5cf43f8832b48b09035dd5cf917456377d3be998df3ce15abb64e0e2b942a3'
  checksumType   = 'sha256'
  checksum64     = '7b877d737458c3bd3ba517a8f83632f1611b24ebb9ba62b276690b5bcbcd6555'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

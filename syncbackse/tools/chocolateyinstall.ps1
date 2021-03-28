$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = '27b41ce15d44b2e14f12780649a81772e8a6b8153940f428697c2c2a4bd93007'
  checksumType   = 'sha256'
  checksum64     = 'e2e74cffb7a5cff795e52440a2dcc2c9a6dcd20b573b19a710c9515f15165061'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

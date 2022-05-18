$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = 'cbb755329f1ff27f41c584a54ffb200bc1166f05dcaeca86c4ec0edb0062575f'
  checksumType   = 'sha256'
  checksum64     = 'e3f4f74364b9e24ef2c86ef2af15b3c461cb34302f418d455efa9e94223907e2'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

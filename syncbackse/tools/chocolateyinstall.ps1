$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = '0d0bb900ac91f4d627fe2c3fb857f481663f7227a25fe6b6d66bcc1eff9808c0'
  checksumType   = 'sha256'
  checksum64     = 'c173f487fd2a13f4876c46a0cd7e4fe8673ad570a32239c8461bd14d314166a7'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = 'be960b4e5e09e632212697db38f416e4f6f12f27ac81d1c9c6836c92c68d95ea'
  checksumType   = 'sha256'
  checksum64     = '7a2b721da161321c0f799ed437a183e6ebbf4b4f4b7b86ec6681e41cd0a655ee'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

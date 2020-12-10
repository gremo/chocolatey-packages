$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = '4bad876fc54cb78d5b0dfba095055a32bdf66c50283ead48f17575c686cc5156'
  checksumType   = 'sha256'
  checksum64     = 'e8fcf97d2f3e1ee2cfd9edc61c707389e098490422473013bebce7f972c35653'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

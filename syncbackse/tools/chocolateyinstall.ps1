$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = '7013a5fb35e77a45312bdcac8367ee4bc999bd85fda43bfc7c719ddc02ce6fcb'
  checksumType   = 'sha256'
  checksum64     = 'a9374c9c752932874fb2ff34107e3451908a6b559ccf7737f774693669975ebe'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

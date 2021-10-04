$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = '3275eddaa0f2a280c73f876a8041b69e082ab12fae7ec2eecc52d68f23c1c539'
  checksumType   = 'sha256'
  checksum64     = '0566a31af365951d6d350a297ce0465fbd40af06a816b2bd4e919a5fb39fabd1'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = '7cf5fa711cf65e06be4011ee0e0b70561420582d0135aba7679fcaa5028e6407'
  checksumType   = 'sha256'
  checksum64     = '23c184c04f775287ae36426ae559a599c49618223e643096d80d11b4194a5952'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = 'a5895a41da81aa03edb8433893a3902040fbd58149020288f0fbc6be4e8a21af'
  checksumType   = 'sha256'
  checksum64     = 'adc6fdd6e6feeeaf1d83bc592e915d514f5a331b10d563f41a4d9197feb3bc15'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = 'd415dd1b7ffab7acb2c9a66f045677a7b55f6f58f536e06cadd6692742070be3'
  checksumType   = 'sha256'
  checksum64     = '09276ffb2586388ff428de4c870b5dc9bcab04d41cd34ea9d9c1e6cea6c6ce04'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

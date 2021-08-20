$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = '9683367d13487021e0a3c798ddb6b6706dcf2215947a2ea5eed58278518e923d'
  checksumType   = 'sha256'
  checksum64     = 'f2f80295f2a7819e6b7c3216ac62b3d6ecd90be8248bb47994fd5a116aa8fe8c'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

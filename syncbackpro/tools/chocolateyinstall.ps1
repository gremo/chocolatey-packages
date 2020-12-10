$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = 'eb3ce42f40c793f0e6f9565e8d3fc46f05d22283d38b45f37ddeee2527561028'
  checksumType   = 'sha256'
  checksum64     = '47dbd53dc903fc4b9492f2cce3ff703ef5f1cbd0e0a40d244174fb6f5785d442'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = '4fa93c54afbd424bec7c44660f336bf995b6bd6f7e2bdc1a0c981fd6503e9501'
  checksumType   = 'sha256'
  checksum64     = 'd2db42d243140180388cb2514e97631471b624d763cce0e296a7495e785703c7'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

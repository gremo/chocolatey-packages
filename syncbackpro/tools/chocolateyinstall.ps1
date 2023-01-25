$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = 'f08c2d5715ddad02c8c70597ad5f1589188047f8eb134b77734e443a56e2227b'
  checksumType   = 'sha256'
  checksum64     = 'aceb7befb41e847767f743eedc76ed03e42fc2ef1fd3407fb5327b9540e8322c'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

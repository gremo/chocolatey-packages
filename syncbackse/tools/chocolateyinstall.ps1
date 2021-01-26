$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackSE_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackSE64_Setup.exe'
  checksum       = '93d7095b28bf61c127e8d87c2f918596c820f46523a388515375edcf43dc4108'
  checksumType   = 'sha256'
  checksum64     = '7c797a347ad0434d0be095595ae1d0a5c442a2c1d44acc7005aae500420bd9fc'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

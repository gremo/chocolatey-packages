$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = 'aa35520230dcaf6acda660fbdc0a76b6a0e94b7274ae900cc12de605ab18a7c5'
  checksumType   = 'sha256'
  checksum64     = '634a3d9b6bc94698aed6f5f150baf865e51bf0b8cbc2435f60f83d70f702833f'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

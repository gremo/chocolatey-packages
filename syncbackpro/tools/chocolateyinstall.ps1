$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.2brightsparks.com/assets/software/SyncBackPro_Setup.exe'
  url64bit       = 'https://www.2brightsparks.com/assets/software/SyncBackPro64_Setup.exe'
  checksum       = '8e93d45868b9d0a1a704237f03bf9be997d823c31c415cf9eab8f87047b55adf'
  checksumType   = 'sha256'
  checksum64     = '60e7ddf8f89fe6c75d0c15241a45c9ba8bf96b8a364a2bc1340a1b11ffc34c06'
  checksumType64 = 'sha256'
  silentArgs     = "/NORESTART /SP- /SUPPRESSMSGBOXES /VERYSILENT"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

import-module au

$repository = "lukehaas/RunJS"
$file_prefix = "RunJS-Setup"

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)^(\s*url\s*=\s*)'.*'"      = "`$1'$($Latest.URL32)'"
            "(?i)^(\s*checksum\s*=\s*)'.*'" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $releases = "https://api.github.com/repos/$repository/releases"

    Write-Host Determining latest release
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $tag = (Invoke-WebRequest -Uri $releases -UseBasicParsing | ConvertFrom-Json)[0].tag_name

    $version = $tag.trimStart("v")
    $download = "https://github.com/$repository/releases/download/$tag/$file_prefix-$version.exe"

    @{
        Version = $version
        URL32   = $download
    }
}

try {
    update -ChecksumFor 32
} catch {
    $ignore = 'Unable to connect to the remote server'
    if ($_ -match $ignore) { Write-Host $ignore; 'ignore' } else { throw $_ }
}

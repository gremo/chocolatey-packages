import-module au

$domain = 'https://www.2brightsparks.com'
$releases = "$domain/download-syncbackse.html"

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)^(\s*url\s*=\s*)'.*'"        = "`$1'$($Latest.URL32)'"
            "(?i)^(\s*checksum\s*=\s*)'.*'"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*url64bit\s*=\s*)'.*'"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)'.*'" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    if ($download_page.RawContent -match "SyncBackSE\s+V([^\s]+)") {
        $version = $matches[1];
    }

    $links32 = $download_page.Links | ? innerHTML -match '32-bit'
    if ($links32) {
        $url32 = $domain + ($links32 | select -first 1 -expand href)
    }

    $links64 = $download_page.Links | ? innerHTML -match '64-bit'
    if ($links64) {
        $url64 = $domain + ($links64 | select -first 1 -expand href)
    }

    @{
        Version = $version
        URL32   = $url32
        URL64   = $url64
    }
}

try {
    update -ChecksumFor all
} catch {
    $ignore = 'Unable to connect to the remote server'
    if ($_ -match $ignore) { Write-Host $ignore; 'ignore' } else { throw $_ }
}

import-module au

$domain = 'https://www.2brightsparks.com'
$releases = "$domain/download-syncbackfree.html"

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)^(\s*url\s*=\s*)'.*'"      = "`$1'$($Latest.URL32)'"
            "(?i)^(\s*checksum\s*=\s*)'.*'" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    if ($download_page.RawContent -match "SyncBackFree\s+V([^\s]+)") {
        $version = $matches[1];
    }

    $links = $download_page.Links | ? href -match '\.exe$'
    if ($links) {
        $url = $domain + ($links | select -first 1 -expand href)
    }

    @{
        Version = $version
        URL32   = $url
    }
}

try {
    update -ChecksumFor 32
} catch {
    $ignore = 'Unable to connect to the remote server'
    if ($_ -match $ignore) { Write-Host $ignore; 'ignore' } else { throw $_ }
}

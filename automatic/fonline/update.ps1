import-module au

function global:au_GetLatest {
    if (Test-Path content) { Remove-Item -Recurse -Force content }
    git clone --depth 1 https://github.com/cvet/fonline.git content
    $version = Get-Content content/VERSION
    Remove-Item -Recurse -Force content/.git
    Get-ChildItem -Recurse content/*ignore | foreach { Remove-Item -Path $_.FullName }
    $Latest = @{ Version = $version }
    return $Latest
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
        #    "(^[$]url32\s*=\s*)('.*')" = "`$1'$($Latest.URL32)'"
        }
    }
}

#update -NoCheckChocoVersion -NoCheckUrl -ChecksumFor 32
update -NoCheckUrl -ChecksumFor 32

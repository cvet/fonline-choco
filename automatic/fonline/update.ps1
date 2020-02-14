import-module au

function global:au_GetLatest {
    if (Test-Path content) { Remove-Item -Recurse -Force content }
    git clone --depth 1 https://github.com/cvet/fonline.git content
    $version = Get-Content content/VERSION
    Remove-Item -Recurse -Force content/.git
    $Latest = @{ Version = $version }
    return $Latest
}

function global:au_SearchReplace {
}

update -NoCheckUrl -ChecksumFor 32

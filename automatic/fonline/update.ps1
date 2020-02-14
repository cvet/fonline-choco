import-module au

function global:au_GetLatest {
    git clone https://github.com/cvet/fonline.git .
	$version = '1.0.0-rev' + (git rev-parse --short=7 HEAD)
	Remove-Item -Recurse -Force .git
    $Latest = @{ Version = $version }
    return $Latest
}

function global:au_SearchReplace {
}

update -NoCheckUrl -ChecksumFor 32

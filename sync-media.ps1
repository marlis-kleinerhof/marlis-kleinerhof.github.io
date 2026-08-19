$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$jsonPath = Join-Path $root 'media-library.json'
$jsPath = Join-Path $root 'media-library.js'

if (-not (Test-Path $jsonPath)) {
  throw 'media-library.json wurde nicht gefunden.'
}

$utf8 = New-Object System.Text.UTF8Encoding($false)
$raw = [System.IO.File]::ReadAllText($jsonPath, $utf8)
$null = $raw | ConvertFrom-Json

$output = 'window.MEDIA_LIBRARY = ' + $raw.Trim() + ';' + [Environment]::NewLine
[System.IO.File]::WriteAllText($jsPath, $output, $utf8)

Write-Host 'media-library.js wurde aus media-library.json aktualisiert.'

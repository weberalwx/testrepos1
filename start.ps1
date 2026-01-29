# UTF-8
$OutputEncoding = [System.Text.Encoding]::UTF8

$dir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $dir

$port = 8765
$url = "http://localhost:$port/"

Write-Host "Zapusk servera..."
Start-Process cmd -ArgumentList "/k", "title Saper - server && python -m http.server $port" -WorkingDirectory $dir

Start-Sleep -Seconds 2
Write-Host "Otkryvayu v brauzere..."
Start-Process $url

Write-Host ""
Write-Host "Igra: $url"
Write-Host "Otkroyte etu ssylku v lyubom brauzere (Chrome, Edge, Firefox)."
Write-Host "Chtoby ostanovit server - zakroyte okno Saper - server."

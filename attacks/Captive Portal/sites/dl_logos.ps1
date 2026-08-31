New-Item -ItemType Directory -Force "VNPT_vi.portal\img" | Out-Null
New-Item -ItemType Directory -Force "Viettel_vi.portal\img" | Out-Null
New-Item -ItemType Directory -Force "FPT_vi.portal\img" | Out-Null

$wc = New-Object System.Net.WebClient
$wc.Headers.Add("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/120")

# VNPT logo SVG (Wikimedia Commons)
$wc.DownloadFile("https://upload.wikimedia.org/wikipedia/commons/f/fc/VNPT_logo.svg", (Resolve-Path .).Path + "\VNPT_vi.portal\img\logo.svg")
Write-Host "VNPT SVG:" (Get-Item "VNPT_vi.portal\img\logo.svg").Length "bytes"

# Viettel logo SVG
$wc.DownloadFile("https://upload.wikimedia.org/wikipedia/commons/7/74/Viettel-logo.svg", (Resolve-Path .).Path + "\Viettel_vi.portal\img\logo.svg")
Write-Host "Viettel SVG:" (Get-Item "Viettel_vi.portal\img\logo.svg").Length "bytes"

# FPT Telecom logo SVG
$wc.DownloadFile("https://upload.wikimedia.org/wikipedia/commons/1/11/FTEL_Logo.svg", (Resolve-Path .).Path + "\FPT_vi.portal\img\logo.svg")
Write-Host "FPT SVG:" (Get-Item "FPT_vi.portal\img\logo.svg").Length "bytes"

Write-Host "Done!"

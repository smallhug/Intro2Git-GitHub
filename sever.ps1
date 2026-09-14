$ErrorActionPreference = "SilentlyContinue"
$port = 3030
$url = "http://localhost:$port/"
$listener = New-Object System.Net.HttpListener

try {
    $listener.Prefixes.Add($url)
    $listener.Start()
} catch {
    $port = 8888
    $url = "http://localhost:$port/"
    $listener = New-Object System.Net.HttpListener
    $listener.Prefixes.Add($url)
    $listener.Start()
}

$serveDir = $PSScriptRoot
if (Test-Path (Join-Path $PSScriptRoot "dist\index.html")) {
    $serveDir = Join-Path $PSScriptRoot "dist"
} elseif (Test-Path (Join-Path $PSScriptRoot "index.html")) {
    $serveDir = $PSScriptRoot
}

Write-Host "======================================================" -ForegroundColor Cyan
Write-Host "  Slidev Presentation Server is Ready!" -ForegroundColor Green
Write-Host "  Serving directory: $serveDir" -ForegroundColor DarkGray
Write-Host "  Opening Browser: $url" -ForegroundColor Yellow
Write-Host "  Please keep this window open during presentation." -ForegroundColor Gray
Write-Host "======================================================" -ForegroundColor Cyan

Start-Process $url

$mimeMap = @{
    ".html" = "text/html; charset=utf-8"
    ".js"   = "application/javascript; charset=utf-8"
    ".mjs"  = "application/javascript; charset=utf-8"
    ".css"  = "text/css; charset=utf-8"
    ".json" = "application/json; charset=utf-8"
    ".svg"  = "image/svg+xml"
    ".png"  = "image/png"
    ".jpg"  = "image/jpeg"
    ".ico"  = "image/x-icon"
    ".woff2"= "font/woff2"
    ".woff" = "font/woff"
    ".ttf"  = "font/ttf"
}

while ($listener.IsListening) {
    try {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response

        $rawPath = $request.RawUrl.Split('?')[0]
        if ($rawPath -eq "/" -or [string]::IsNullOrWhiteSpace($rawPath)) {
            $rawPath = "/index.html"
        }

        $decodedPath = [System.Uri]::UnescapeDataString($rawPath.TrimStart('/'))
        $localPath = Join-Path $serveDir $decodedPath

        if (Test-Path $localPath -PathType Leaf) {
            $ext = [System.IO.Path]::GetExtension($localPath).ToLower()
            $contentType = "application/octet-stream"
            if ($mimeMap.ContainsKey($ext)) {
                $contentType = $mimeMap[$ext]
            }
            $response.ContentType = $contentType
            $bytes = [System.IO.File]::ReadAllBytes($localPath)
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
        } else {
            $indexPath = Join-Path $serveDir "index.html"
            if (Test-Path $indexPath) {
                $response.ContentType = "text/html; charset=utf-8"
                $bytes = [System.IO.File]::ReadAllBytes($indexPath)
                $response.ContentLength64 = $bytes.Length
                $response.OutputStream.Write($bytes, 0, $bytes.Length)
            } else {
                $response.StatusCode = 404
            }
        }
        $response.OutputStream.Close()
    } catch {
        # continue loop
    }
}

param(
    [int]$Port = 8000,
    [string]$Directory = $PSScriptRoot
)

if (-not $Directory) {
    $Directory = Get-Location
}

$listener = New-Object System.Net.HttpListener
$prefix1 = "http://localhost:$Port/"
$prefix2 = "http://127.0.0.1:$Port/"
$listener.Prefixes.Add($prefix1)
$listener.Prefixes.Add($prefix2)

try {
    $listener.Start()
} catch {
    $Port = 8080
    $prefix1 = "http://localhost:$Port/"
    $prefix2 = "http://127.0.0.1:$Port/"
    $listener = New-Object System.Net.HttpListener
    $listener.Prefixes.Add($prefix1)
    $listener.Prefixes.Add($prefix2)
    $listener.Start()
}

Write-Output "Gulabi Glow Store server running at: http://localhost:$Port/ and http://127.0.0.1:$Port/"
Write-Output "Serving files from: $Directory"
Write-Output "Press Ctrl+C to stop."

$mimeTypes = @{
    ".html" = "text/html; charset=utf-8"
    ".htm"  = "text/html; charset=utf-8"
    ".css"  = "text/css; charset=utf-8"
    ".js"   = "application/javascript; charset=utf-8"
    ".json" = "application/json; charset=utf-8"
    ".png"  = "image/png"
    ".jpg"  = "image/jpeg"
    ".jpeg" = "image/jpeg"
    ".gif"  = "image/gif"
    ".svg"  = "image/svg+xml"
    ".ico"  = "image/x-icon"
    ".webp" = "image/webp"
    ".md"   = "text/plain; charset=utf-8"
    ".txt"  = "text/plain; charset=utf-8"
}

try {
    while ($listener.IsListening) {
        try {
            $context = $listener.GetContext()
            $request = $context.Request
            $response = $context.Response

            $urlPath = $request.Url.LocalPath.TrimStart('/')
            if ([string]::IsNullOrWhiteSpace($urlPath)) {
                $urlPath = "index.html"
            }

            $urlPath = [System.Uri]::UnescapeDataString($urlPath)
            $localFilePath = Join-Path $Directory $urlPath

            if (-not (Test-Path $localFilePath) -and $urlPath -eq "index.html") {
                $codeHtmlPath = Join-Path $Directory "code.html"
                if (Test-Path $codeHtmlPath) {
                    $localFilePath = $codeHtmlPath
                }
            }

            if (Test-Path $localFilePath -PathType Leaf) {
                $ext = [System.IO.Path]::GetExtension($localFilePath).ToLower()
                $contentType = if ($mimeTypes.ContainsKey($ext)) { $mimeTypes[$ext] } else { "application/octet-stream" }
                $response.ContentType = $contentType
                $response.AddHeader("Access-Control-Allow-Origin", "*")
                $response.AddHeader("Cache-Control", "no-cache, no-store, must-revalidate")

                $bytes = [System.IO.File]::ReadAllBytes($localFilePath)
                $response.ContentLength64 = $bytes.Length
                $response.OutputStream.Write($bytes, 0, $bytes.Length)
                $response.StatusCode = 200
            } else {
                $response.StatusCode = 404
                $notFoundBytes = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found")
                $response.ContentLength64 = $notFoundBytes.Length
                $response.OutputStream.Write($notFoundBytes, 0, $notFoundBytes.Length)
            }
            $response.Close()
        } catch {
            if ($context -and $context.Response) {
                try { $context.Response.Close() } catch {}
            }
        }
    }
} finally {
    $listener.Stop()
    $listener.Close()
}

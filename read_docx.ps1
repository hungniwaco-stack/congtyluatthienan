Add-Type -AssemblyName System.IO.Compression.FileSystem

function Read-Docx {
    param (
        [string]$Path
    )
    
    $fullPath = Resolve-Path $Path
    $zip = [System.IO.Compression.ZipFile]::OpenRead($fullPath)
    $entry = $zip.Entries | Where-Object { $_.FullName -eq 'word/document.xml' }
    if ($null -ne $entry) {
        $stream = $entry.Open()
        $reader = New-Object System.IO.StreamReader($stream)
        $content = $reader.ReadToEnd()
        $reader.Close()
        
        $xml = [xml]$content
        $ns = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
        $ns.AddNamespace('w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main')
        
        $nodes = $xml.SelectNodes('//w:t', $ns)
        $text = ''
        if ($nodes) {
            foreach ($node in $nodes) {
                $text += $node.InnerText + " "
            }
        }
        $zip.Dispose()
        return $text
    }
    $zip.Dispose()
    return ""
}

Write-Host "--- Slogan ---"
Read-Docx "Slogan.docx"

Write-Host "`n--- Thong-tin ---"
Read-Docx "Thong-tin.docx"

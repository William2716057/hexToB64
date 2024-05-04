#get the hexdump of a file
$hexDump = Get-Content -Path "text.txt" -Encoding Byte | Format-Hex | Out-File -FilePath "hex.txt"
#to base64
$filepath = "Path\to\file\hex.txt"
$base64 = [Convert]::ToBase64String([System.IO.File]::ReadAllBytes($filepath))
$base64 | Out-File -FilePath "Path\to\file\b64.txt"

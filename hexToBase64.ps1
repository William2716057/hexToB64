# Define the file path
$file = "C:\Users\wills\Desktop\Shortcuts\Files\github\hexToBase64\text.txt"
# Read the file as bytes
$fileBytes = Get-Content -Path $file -Encoding Byte
# Convert the bytes to hexadecimal representation
$hexDump = $fileBytes | ForEach-Object { $_.ToString("X2") }
# Convert the hexadecimal data to base64
$base64Data = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($hexDump))
# Output the base64 data
$base64Data

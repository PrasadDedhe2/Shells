$sourceFilePath = "F:\Tp\adsd.txt"
$backupFolderPath = "E:\adsd.txt"

# Generate a timestamp
$timestamp = Get-Date -Format "dd_MM_yyyy-HH_mm_ss"

# Define the backup file name with the timestamp
$backupFileName = "adsd.txt_$timestamp"

# Construct the full path for the backup file
$backupFilePath = Join-Path -Path $backupFolderPath -ChildPath $backupFileName

# Copy the source file to the backup folder
Copy-Item  $sourceFilePath $backupFilePath -Force


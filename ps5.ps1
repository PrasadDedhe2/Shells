$Path = 'C:\Users\HP\Downloads'
cd $Path

$file = ls | Where-Object{$_.Name -match '.iso'}  | Sort-Object -Property Name 

#$file | ForEach-Object{Rename-Item -Path $Path\$_ -NewName 'Ohkhay.txt' }

$file | ForEach-Object{cat $_}
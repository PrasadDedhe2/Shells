$Path = 'C:\Users\HP\Downloads'
cd $Path
ls | Where-Object{$_.Name -match '.pdf'} | Select-Object -Property Name | Sort-Object -Property Name
 
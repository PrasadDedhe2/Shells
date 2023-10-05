
Get-Command|ForEach-Object -Process {if($_.Name -match "Delete"){Write-host ($_.name)}}


#for($i =0; $i -le 100; $i++) {Write-Host "This is " $i "th iteration"}

$frafile = "JBFRA_20220206.txt"

$DDay = "JBFRA_" + (Get-Date -Format "yyyyddMM").ToString()+".txt"
$DDay -match $frafile

$DDay -match "^J" ;Write-Host "This true"
$DDay -match "^N" ; Write-Host "This false"
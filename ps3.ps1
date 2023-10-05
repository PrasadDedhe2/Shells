$a = Read-Host 'Please enter a' 
$b =  Read-Host 'Please enter b'

[int]$c = [int]$a+ [int]$b
$d = $a -$b
$e = [int]$a*$b
$f = $a/$b

Write-Host $c, $d, $e, $f


#see this program might look ordinary but it shares the importance of type casting in powershell. Anything you put it takes as an string but for some operation it takes as an int
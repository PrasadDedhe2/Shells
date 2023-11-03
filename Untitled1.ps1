$sumOfAllCPUSeconds = Get-Process | Measure-Object -Property CPU -Sum # Getting sum of all working CPU seconds 
$AllProcess = Get-Process | Sort-Object -Property CPU | Select-Object -Last 5 # Getting All process details

#Remove-Item C:\Users\HP\Desktop\HighCPU.csv #Uncomment and replace with specific location to create the  log file

foreach ($process in $AllProcess) #looping through all Process to get the percentage
{
        $individualCPU = $process.CPU 
        $date = Get-Date
        $percentage = [math]::Round($individualCPU*100/$sumOfAllCPUSeconds.Sum,2) 
        $obj = New-Object -TypeName PsObject
        $obj | Add-Member -MemberType NoteProperty -Name "Process" -Value $process.ProcessName
        $obj | Add-Member -MemberType NoteProperty -Name "Date" -Value $date
        $obj | Add-Member -MemberType NoteProperty -Name "Percentage" -Value $percentage
        $obj | Sort-Object -Property "Percentage" 
        #$obj | Out-File C:\Users\HP\Desktop\HighCPU.csv -Append -verbose  #Uncomment and replace with specific location to create the  log file
    
}
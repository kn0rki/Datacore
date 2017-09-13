import-module 'C:\Program Files\DataCore\SANsymphony\DataCore.Executive.Cmdlets.dll' -DisableNameChecking -ErrorAction Stop
$logfile = "$env:temp\USV.log"
Add-Content -Path $logfile -Value (get-date) -NoNewline
Add-Content -Path $logfile -Value " - DCS PowerOn"
#$connection = Connect-DcsServer localhost
if($connection){
    Enable-DcsServerWriteCache -Server localhost
}
#Disconnect-DcsServer -Connection $connection

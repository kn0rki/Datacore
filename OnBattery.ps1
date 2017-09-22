import-module 'C:\Program Files\DataCore\SANsymphony\DataCore.Executive.Cmdlets.dll' -DisableNameChecking -ErrorAction Stop
$logfile = "$env:temp\USV.log"
Add-Content -Path $logfile -Value (get-date)
Add-Content -Path $logfile -Value " - DCS Battery"
$connection = Connect-DcsServer localhost
if($connection){
    Disable-DcsServerWriteCache -Server (hostname)
}
Disconnect-DcsServer -Connection $connection

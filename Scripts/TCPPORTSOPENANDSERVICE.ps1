$ip = Read-Host "Introduzca una ip"
$result =  Get-NetTCPConnection -State Listen |Select-Object -Property LocalPort, state, @{name='ProcessID';expression={(Get-Process -Id $_.OwningProcess). ID}}, @{name='ProcessName';expression={(Get-Process -Id $_.OwningProcess). Path}}

Write-Output $result

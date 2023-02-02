#New-NetFirewallRule -DisplayName "PUERTO TCP 445" -LocalAddress localhost -Direction Inbound -Protocol TCP -LocalPort 445 -Action Block
Clear-Host

Write-Output "This program add firewall rules to protect some ports and need run like administrator"

Write-Host "********************" 
Write-Host "1-Activate Securizer" -ForegroundColor Green
Write-Host "********************"
Write-Host "2-Desactivate Securizer" -ForegroundColor Blue
Write-Host "********************"
Write-Host "3-Delete all Rules" -ForegroundColor Red
Write-Host "********************"
[INT] $tipo = Read-Host "What you doing"

if($tipo -eq 1) {
	Write-Host "STARTING PROCESS..." -ForegroundColor Blue
	Write-Host "[+]Adding rule BLOCK PORT TCP 445" -ForegroundColor Green
	netsh advfirewall firewall add rule name="PUERTO TCP 445: SMB" dir=in protocol=TCP localport=445 remoteport=445 action=Block enable=yes
	Write-Host "[+]Adding rule BLOCK PORT TCP 22" -ForegroundColor Green
	netsh advfirewall firewall add rule name="PUERTO TCP 22: SSH" dir=in protocol=TCP localport=22 remoteport=22 action=Block enable=yes
	Write-Host "[+]Adding rule BLOCK PORT TCP 21" -ForegroundColor Green
	netsh advfirewall firewall add rule name="PUERTO TCP 21: FTP" dir=in protocol=TCP localport=21 remoteport=21 action=Block enable=yes
	Write-Host "[+]Adding rule BLOCK PORT TCP 27036" -ForegroundColor Green
	netsh advfirewall firewall add rule name="PUERTO TCP 27036" dir=in protocol=TCP localport=27036 remoteport=27036 action=Block enable=yes
	Write-Host "ENDING PROCESS.." -ForegroundColor Green
}



if($tipo -eq 2) {
	$o = Read-Host "If you need desactivate de rules write no if you need activate write yes"
	Write-Host "STARTING PROCESS..." -ForegroundColor Blue
	if($o -eq 'no') {
		Write-Host "[!]Desactivating PORT TCP 445" -ForegroundColor Red
		netsh advfirewall firewall set rule name="PUERTO TCP 445: SMB" new enable=$o
		Write-Host "[!]Desactivating PORT TCP 22" -ForegroundColor Red
		netsh advfirewall firewall set rule name="PUERTO TCP 22: SSH" new enable=$o
		Write-Host "[!]Desactivating PORT TCP 21" -ForegroundColor Red
		netsh advfirewall firewall set rule name="PUERTO TCP 21: FTP" new enable=$o
		Write-Host "[!]Desactivating PORT TCP 27036" -ForegroundColor Red
		netsh advfirewall firewall set rule name="PUERTO TCP 27036" new enable=$o
	}
	if($o -eq 'yes') {
		Write-Host "[+]Activating PORT TCP 445" -ForegroundColor Green
		netsh advfirewall firewall set rule name="PUERTO TCP 445: SMB" new enable=$o
		Write-Host "[+]Activating PORT TCP 22" -ForegroundColor Green
		netsh advfirewall firewall set rule name="PUERTO TCP 22: SSH" new enable=$o
		Write-Host "[+]Activating PORT TCP 21" -ForegroundColor Green
		netsh advfirewall firewall set rule name="PUERTO TCP 21: FTP" new enable=$o
		Write-Host "[+]Activating PORT TCP 27036" -ForegroundColor Green
		netsh advfirewall firewall set rule name="PUERTO TCP 27036" new enable=$o
	}
	Write-Host "ENDING PROCESS.." -ForegroundColor Green

}



if($tipo -eq 3) {
	$answer = Read-Host "ALL RULES ARE BE ELIMINATED ¿ARE YOU SURE?"

	if($answer -eq 'yes') {
		Write-Host "[!]Deleting rule PORT TCP 445" -ForegroundColor Red
		netsh advfirewall firewall delete rule name="PUERTO TCP 445: SMB"
		Write-Host "[!]Deleting rule PORT TCP 22" -ForegroundColor Red
		netsh advfirewall firewall delete rule name="PUERTO TCP 22: SSH"
		Write-Host "[!]Deleting rule PORT TCP 21" -ForegroundColor Red
		netsh advfirewall firewall delete rule name="PUERTO TCP 21: FTP"
		Write-Host "[!]Deleting rule PORT TCP 27036" -ForegroundColor Red
		netsh advfirewall firewall delete rule name="PUERTO TCP 27036"
	}

	IF($answer -eq 'no') {
		exit
	}
}


if($tipo -eq '0') {
	exit
}

	



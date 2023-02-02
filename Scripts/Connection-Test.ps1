param(
	[String]$ip
	)

if($ip -eq '') {
	Write-Host "IP REQUIRED | .\Connection-Test.ps1 -ip 0.0.0.0" -ForegroundColor Red
	exit
}

Write-Output $(Get-CimInstance -Class Win32_PingStatus -Filter "Address='$ip'" |
  		Format-Table -Property Address,ResponseTime,StatusCode -Autosize)



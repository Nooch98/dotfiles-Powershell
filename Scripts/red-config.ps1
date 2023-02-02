clear
Write-Host "Adaptadores de red disponibles"
Get-NetAdapter

$findex = Read-Host "Introduzca la interfaz"

Remove-NetIPAddress -InterfaceIndex $findex -Confirm:$false
Remove-NetRoute -InterfaceIndex $findex -Confirm:$false

Write-Host "1.- DHCP" -ForegroundColor Green
Write-Host "2.- ESTATICA" -ForegroundColor Blue

[INT] $tipo = Read-Host "Introduce una opcion"

if ($tipo -eq 1){
Write-Host "Has elegido configuracio atraves de DHCP" -ForegroundColor Green
Set-NetIPInterface -InterfaceIndex $findex -Dhcp Enabled
Set-DnsClientServerAddress -InterfaceIndex $findex
Write-Host "Esta es tu nueva configuracion" -ForegroundColor Green
Get-NetIPConfiguration
}

if ($tipo -eq 2){
Write-Host "Ha elegido una configuracion estatica" -ForegroundColor Blue
Write-Host "Introduce los datos de la red" -ForegroundColor Blue

$ip = Read-Host "Introduzca la ip"
$mascara = Read-Host "Introduzca la mascara en cantdidad de numeros de 1"
$gtw = Read-Host "Introduzca la puerta de enlace"
$dns1 = Read-Host "Introduzca el dns primario"
$dns2 = Read-Host "Introduzca el dns secundario"

New-NetIPAddress -InterfaceIndex $findex -IPAddress $ip -PrefixLength $mascara -DefaultGateway $gtw
Set-DnsClientServerAddress -InterfaceIndex $findex -ServerAddresses ("$dns1", "dns2")
Write-Host "Esta es su nueva configuracion" -ForeGroundColor Blue
Get-NetIPConfiguration
}

Read-Host "Pulsa cualquier tecla para salir"

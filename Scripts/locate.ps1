$p = Read-Host "En que ruta desea buscar"
$f = Read-Host "Indique nombre y extension del archivo que desea buscar"
$pwd = $(pwd)
$result = Get-ChildItem -Path $p -Filter $f -Recurse -ErrorAction SilentlyContinue -Force
if($p -ne 'pwd') {
	clear
	Write-Output $result
}

if($p -eq 'pwd') {
	$result = Get-ChildItem -Path $pwd -Filter $f -Recurse -ErrorAction SilentlyContinue -Force
	clear
	Write-Output $result
}

Write-Host "WARNIG: Es necesario ejecutar este script en un powershell con privilegios administrador"
Set-ExecutionPolicy Unrestricted -Scope CurrentUser
Write-Host "ADVERTENCIA: Este script autoinstalara (oh-my-posh, scoop, choco, vscode, nvim, etc...)."

Write-Host "RECOMENDACION: Instalar en orden"

Write-Host "1.- INSTALAR OH-MY-POSH"
Write-Host "2.- INSTALAR SCOOP(SIN SER ADMINISTRADOR)"
Write-Host "3.- INSTALAR CHOCO"
Write-Host "4.- INSTALAR APPS"

[INT] $tipo = Read-Host "Seleccione su opcion"

if ($tipo -eq 1){
	Write-Output "Iniciando Instalacion..."
	Install-Module posh-git -Scope CurrentUser
	Install-Module oh-my-posh -Scope CurrentUser
	Write-Output "Finalizada Instalacion..."
}

if ($tipo -eq 2){
	Write-Output "Iniciando Instalacion..."
	irm get.scoop.sh | iex
	Write-Output "Finalizada Instalacion..."
}

if ($tipo -eq 3){
        Write-Output "Iniciando Instalacion..."
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
	Write-Output "Finalizada Instalacion..."
}

if ($tipo -eq 4){
        Write-Output "Iniciando Instalacion..."
	Invoke-Command choco install sudo nvim vim bat lsd mdcat
        Write-Output "Finalizada Instalacion..."
}



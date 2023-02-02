Set-ExecutionPolicy Unrestricted -Scope CurrentUser

Write-Host "[!]Iniciando Instalacion..." -ForegroundColor Green

Write-Host "[+]Instalando OH-MY-POSH..." -ForegroundColor Blue

Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

Write-Host "[+]Instalando CHOCOLATLY..." -ForegroundColor Yellow

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "[+]Instalando APPS..." -ForegroundColor Purple

Invoke-Command choco install sudo nvim vim bat lsd

Write-Host "[!]Configurando nvim..." -ForegroundColor Green

Invoke-Command cd $Home\AppData\Local
Invoke-Command mkdir nvim
Invoke-Command cd nvim
Invoke-Command wget https://github.com/Nooch98/dotfiles-nvim.git

Write-Host "[!]Configurando PowerShell..." -ForegroundColor Blue

Invoke-Command cd
Invoke-Command cd PowerShell\
Invoke-Command wget https://github.com/Nooch98/dotfiles-Powershell.git

Write-Host "[+]Instalacion y Configuracion Finalizada"
Invoke-Command exit


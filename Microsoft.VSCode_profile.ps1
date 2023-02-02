#MODULES
Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSFzf
Import-Module Terminal-Icons
Import-Module -Name PSReadLine


#PROMPT
Set-Poshprompt -Theme C:\Users\Nooch\AppData\Local\oh-my-posh\themes\My_Theme.omp.json

#DRACULA PROPMT COMFIGURATION
$GitPromptSettings.DefaultPromptPrefix.Text = "$([char]0x2192) " # arrow unicode symbol
$GitPromptSettings.DefaultPromptPrefix.ForegroundColor = [ConsoleColor]::Green
$GitPromptSettings.DefaultPromptPath.ForegroundColor =[ConsoleColor]::Cyan
$GitPromptSettings.DefaultPromptSuffix.Text = "$([char]0x203A) " # chevron unicode symbol
$GitPromptSettings.DefaultPromptSuffix.ForegroundColor = [ConsoleColor]::Magenta


#DRACULA GIT STATUS CONFIGURATION
$GitPromptSettings.BeforeStatus.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.BranchColor.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.AfterStatus.ForegroundColor = [ConsoleColor]::Blue


#FZF
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PsFzfOption -ForegroundColor Blue


#READLINE
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -BellStyle None
Set-PSReadlineOption -Color @{
    "Command" = [ConsoleColor]::Green
    "Parameter" = [ConsoleColor]::Gray
    "Operator" = [ConsoleColor]::Magenta
    "Variable" = [ConsoleColor]::White
    "String" = [ConsoleColor]::Yellow
    "Number" = [ConsoleColor]::Blue
    "Type" = [ConsoleColor]::Cyan
    "Comment" = [ConsoleColor]::DarkCyan
    "Urls" = [ConsoleColor]:: Red
}


$(Clear-Host)
$(python 'C:\Users\Nooch\Desktop\Python\.\LgPowerShell.py')
$(Write-Host "Bienvenido Nooch" -ForegroundColor Blue)

#UTILITIES
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
		Select-Object -ExpandProperty path -ErrorAction SilentlyContinue	
}

function locate ($command) {
	C:\Users\Nooch\Documents\PowerShell\Scripts\.\locate.ps1
}

function Nooch ($command) {
	python C:\Users\Nooch\Desktop\Python\.\loginpowershell.py
}

function ll ($command) {
	lsd.exe -l
}

function lr ($command) {
	lsd.exe -Rl
}

function lra ($command) {
	lsd.exe -RlA
}

function work ($command) {
	Set-Location C:\Users\Nooch\Desktop\Python
}

function psc ($command) {
	Set-Location C:\Users\Nooch\Documents\PowerShell
}

function pscs ($command) {
	Set-Location C:\Users\Nooch\Documents\PowerShell\Scripts
}

function off ($command) {
	shutdown /s /t 0
}

function hasmd5 ($command) {
	python C:\Users\Nooch\Desktop\Python\hasmd5.py
}

function qr ($command) {
	python C:\Users\Nooch\Desktop\Python\generadorqr.py
}

function chats ($command) {
	python C:\Users\Nooch\Documents\PowerShell\Scripts\chat.py
}

function reboot ($command) {
	shutdown /r /t 0
}

function encrypt ($command) {
	C:\Users\Nooch\Documents\PowerShell\Scripts\.\encripter.ps1
}

function kali ($command) {
	wsl -d kali-linux
}

function security ($command) {
	C:\Users\Nooch\Documents\PowerShell\Scripts\.\securizedsystem.ps1
}

function tcpport ($command) {
	C:\Users\Nooch\Documents\PowerShell\Scripts\.\TCPPORTSOPENANDSERVICE.ps1
}

function finger ($command) {
	python C:\Users\Nooch\Documents\PowerShell\Scripts\.\fingerprinter.py
}

#ALIAS
Set-Alias ls lsd
Set-Alias cat bat
Set-Alias net netsh
Set-Alias nets netstat
Set-Alias mcat mdcat
Set-Alias touch New-Item
Set-Alias g git
Set-Alias grep findstr
Set-Alias wr Invoke-WebRequest
Set-Alias installm Install-Module
Set-Alias importm Import-Module
Set-Alias speedtest C:\Users\Nooch\Downloads\speedtest.exe
Set-Alias ports C:\Users\Nooch\Documents\PowerShell\Scripts\.\Port.ps1
Set-Alias configr C:\Users\Nooch\Documents\PowerShell\Scripts\.\red-config.ps1
Set-Alias testc C:\Users\Nooch\Documents\PowerShell\Scripts\.\Connection-Test.ps1
Set-Alias heads C:\Users\Nooch\Documents\PowerShell\Scripts\.\heads.ps1
Set-Alias py python
Set-Alias subl 'C:\Program Files\Sublime Text\subl.exe'

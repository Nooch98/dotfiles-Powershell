[CmdletBinding()]
param(
	[Parameter(Mandatory = $True, Position = 1)]
	[ValidateNotNullOrEmpty()]
	[String]$UserName,
	[Parameter(Mandatory = $True, Position = 2)]
	[ValidateNotNullOrEmpty()]
	[String]$Password
	)

.'C:\Users\Nooch\Documents\PowerShell\Scripts\.\Utilities.ps1'

Write-Host "Iniciando Proceso..." -ForegroundColor Blue


	$global:path = get-location
	$outputFolder = -join('C:\Users\Nooch\Documents\PowerShell\Scripts\', "\Credentials");
	if(!(Test-Path -Path $outputFolder )){
		New-Item -ItemType directory -Path $outputFolder
	}


	$SecurePwd = ConvertTo-SecureString -String $Password -AsPlainText -Force;
    	$EncryptedPwd = ConvertFrom-SecureString -SecureString $SecurePwd -key (1..16);


	$CredentialsPath = -join($outputFolder, "\")
	$FilePath = $CredentialsPath + ($UserName) + ".txt";
	$EncryptedPwd | Set-Content $FilePath;

	Write-Host "Proceso Finalizado" -ForegroundColor Green

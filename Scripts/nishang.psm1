if(!$PSScriptRoot)
	{
		$PSScriptRoot = Split-Path $MyInvocation.MyCommand.Path -Parent
	}

	if ($PSVersionTable.PSVersion.Major -eq 2) {
		Get-ChildItem -Recurse $PSScriptRoot*.psm1 | Where-Object {($_.Name -ne 'Keylogger.ps1'-or $_.Name -ne 'Invoke-Prasadhak.ps1' -or $_.Name -ne 'Get-WebCredentials.ps1')} | ForEach-Object {Import-Module $_.FullName -DisableNameCheking}
	}

	else
	{
		Get-ChildItem -Recurse $PSScriptRoot*.psm1 | Where-Object {($_.Name -ne 'Keylogger.ps1')} | ForEach-Object {Import-Module $_.FullName -DisableNameCheking}
	}

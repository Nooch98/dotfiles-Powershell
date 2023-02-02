param(
	[Parameter()]
	[String]$ip,
	[String]$p,
	[String]$cp
	)

if ($p) {
	$result = Test-NetConnection $ip -Port $p -InformationLevel Detailed
	Write-Output $result
}

if ($cp) {
	$result = Test-NetConnection $ip -CommonTCPPort $cp -InformationLevel Detailed
	Write-Output $result
}


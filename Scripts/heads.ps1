param(
	[Parameter()]
	[String]$Get,
	[String]$Post
	)

if($Get) {
	Write-Output $(Invoke-WebRequest -Method Get -Uri $Get -UseBasicParsing)
}

if($Post) {
	Write-Output $(Invoke-WebRequest -Method Post -Uri $Post -UseBasicParsing)
}

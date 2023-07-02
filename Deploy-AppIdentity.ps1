param([string] $ResourceGroupName,
    [string] $AppNameInFull
    )
$ctx = Get-AzContext -ListAvailable
$ctx.Account

$appName = $AppNameInFull
Write-Host "App Service name to be assigned identity: $appName"
Set-AzWebApp -AssignIdentity $true -Name $appName -ResourceGroupName $ResourceGroupName
Write-Host "App Service has successfully been assigned an identity."
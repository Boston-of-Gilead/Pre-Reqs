Write-Host "----------------------------------"
Write-Host "|   PRE-REQUISITES FOR SCRIPTS   |"
Write-Host "----------------------------------"

Write-Host "This script will install some modules for use in Powershell. You should only have to do this once, though as more scripts are developed, additional modules may be added."

Install-Module MSOnline
Install-Module AzureADPreview -Force
install-module AzureAD
Install-Module ExchangeOnlineManagement
Install-Module ImportExcel
Install-Module PSWindowsUpdate

$ans = Read-Host -Prompt "Will you be using Powershell to administer VMWare? There is some overlap between the VMWare cmdlets and the standard cluster management cmdlets (Get-Cluster, New-Cluster, Remove-Cluster). Y/N"
$ans = $ans.ToLower()
If ($ans = 'y') {
    Install-Module -Name VMware.PowerCLI -AllowClobber
    }


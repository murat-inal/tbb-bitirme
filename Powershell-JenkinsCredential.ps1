$Service = Get-Service | Where-Object { $_.ServiceName -like 'XblGameSave' }
$ErrorActionPreference = 'Stop'

$SecurePassword = $env:Password | ConvertTo-SecureString -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential -ArgumentList $env:User, $SecurePassword

Invoke-Command -ComputerName $env:Computer -Credential $cred -ScriptBlock {
  param($Service)
  if(Get-Service | Where-Object {$Service.Status -eq 'Stopped'})
  {
       Start-Service -Name $Service.Name
  }
 } -ArgumentList $Service 
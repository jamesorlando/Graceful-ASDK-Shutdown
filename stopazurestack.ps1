param (
    [Parameter(Mandatory=$True)]
    [string]$CloudAdminPassword
)

$pw = convertto-securestring -AsPlainText -Force -String $CloudAdminPassword
$cred = new-object -typename System.Management.Automation.PSCredential -argumentlist "AzureStack\CloudAdmin",$pw

$pep = New-PSSession -ComputerName azs-ercs01 -ConfigurationName PrivilegedEndpoint -Credential $cred -SessionOption (New-PSSessionOption -Culture en-US -UICulture en-US)

Invoke-Command -Session $pep {stop-azurestack}

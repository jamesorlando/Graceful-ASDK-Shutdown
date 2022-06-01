# Graceful-ASDK-Shutdown
Gracefully shutdown your ASDK and deallocate the VM

Requires an existing ASDK Deployed in Azure Gov Cloud (or you can convert this to any other cloud)

1.	Create an Automation Account
2.	Create a new Application Registration in your tenant
  a.	Add a self-signed certificate
    i. https://docs.microsoft.com/en-us/azure/active-directory/develop/howto-create-self-signed-certificate
3.	Give your App Registration Contributor access to your subscription
4.	Add a Connection in your Automation Account
  a.	Type: AzureServicePrincipal
5.	Add a Credential to your Automation Account
  a.	Name: Cloudadmin
      User Name: azurestack\cloudadmin
      Password: <Your Cloud Admin Password>
6.	Put the StopAzureStack.ps1 script in a storage account in the same resource group as your ASDK.
7.	Capture a storage account key
8.	Create a new runbook
  a.	Type: PowerShell 
      Version: 5.1


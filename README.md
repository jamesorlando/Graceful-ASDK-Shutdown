# Graceful-ASDK-Shutdown
Gracefully shutdown your ASDK and deallocate the VM

Requires an existing ASDK Deployed in Azure Gov Cloud (or you can convert this to any other cloud)

1.	Create an Automation Account
2.	Create a new Application Registration in your tenant
a.	Add a self-signed certificate:	https://docs.microsoft.com/en-us/azure/active-directory/develop/howto-create-self-signed-certificate
3.	Give your App Registration Contributor access to your subscription
4.	Add a Connection in your Automation Account
a.	Type: AzureServicePrincipal
5.	Add a Credential to your Automation Account
a.	Name: Cloudadmin
b.	User Name: azurestack\cloudadmin
c.	Password: YourPassword
6.	Put the StopAzureStack.ps1 script in a storage account in the same resource group as your ASDK.
7.	Capture a storage account key
8.	Create a new runbook
a.	Type: PowerShell 
b.	Version: 5.1
9.	Edit the runbook and copy/paste the “AutomationRunbookScript”
10.	Set the 6 variables at the top of the script
11.	Test and/or Publish the Runbook
12.	Set/Add your schedule. I set mine to run every time I start my ASDK. I immediately determine when I want this to run (usually leave it on a day or two depending on what I am doing). Alternatively, you could set it to run Every Friday to ensure that if you start your ASDK during the week it will shut down by the weekend.

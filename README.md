# azure-commons

## Getting started

### Create a login profile

You need an Azure account to use Azure from Infraxys Developer.

- [Install the Azure client](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest).
- Run `az login` in a terminal and complete the login process.
- Run `az account list` to get the id of the subscription you want to use.
- Run `az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/SUBSCRIPTION_ID"` (replace "SUBSCRIPTION_ID" with the id value of the previous command).
- Create a variable under a project in Infraxys and paste the full output of the previous command in the "Value"-field. Use "AZURE-CONFIG" for type and uncheck "Export as environment variable".
-    
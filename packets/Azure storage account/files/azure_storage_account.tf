
#set ($storageAccountName = $instance.getAttribute("storage_account_name"))
#set ($resourceGroupName = $instance.getAttribute("resource_group_name"))
resource "azurerm_storage_account" "$storageAccountName" {
  name                     = "$storageAccountName"
  resource_group_name      = azurerm_resource_group.${resourceGroupName}.name
  location                 = azurerm_resource_group.${resourceGroupName}.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
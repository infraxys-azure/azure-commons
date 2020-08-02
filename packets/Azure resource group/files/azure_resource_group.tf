#set ($resourceGroupName = $instance.getAttribute("resource_group_name"))
resource "azurerm_resource_group" "$resourceGroupName" {
  name     = "$resourceGroupName"
  location = "$instance.getAttribute("resource_group_location")"
}

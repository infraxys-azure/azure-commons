provider "azurerm" {
  version = "$instance.getAttribute("provider_version")"
  features {}
}
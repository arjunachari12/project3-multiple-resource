locals {
  resource_group_name="arjun-grp"
  location="North Europe"
}

resource "azurerm_resource_group" "rg" {
    name = local.resource_group_name
    location = local.location
}

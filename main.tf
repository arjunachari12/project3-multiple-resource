locals {
  resource_group_name="arjun-grp"
  location="North Europe"
}

resource "azurerm_resource_group" "rg" {
    name = local.resource_group_name
    location = local.location
}

resource "azurerm_storage_account" "storage" {
  count = 5
  name                     = "${count.index}arjunfdsdsafd3234"
  resource_group_name      = local.resource_group_name
  location                 = local.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
}
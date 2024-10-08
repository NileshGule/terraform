resource "azurerm_storage_account" "tfStateStorageAccount" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.tfrg.name
  location                 = azurerm_resource_group.tfrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfStateContainer" {
  name                  = var.storage_account_container_name
  storage_account_name  = azurerm_storage_account.tfStateStorageAccount.name  
}
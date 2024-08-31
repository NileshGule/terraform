terraform {
    backend "azurerm" {
        resource_group_name = "tfBackendResourceGroup06"
        storage_account_name = "tfstatestorageaccount06"
        container_name = "tfstatecontainer06"
        key = "terraform.tfstate07"
    }
}
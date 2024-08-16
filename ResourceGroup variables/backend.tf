terraform {
    backend "azurerm" {
      resource_group_name = "tfStateRG"
      storage_account_name = "tfsateaccount"
      container_name = "tfstatecontainer"
      key = "terraform.tfstate"
    }
}
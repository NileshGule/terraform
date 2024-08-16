terraform {
  required_version = ">= 1.9.4"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.61.0"
    }
  }
}
provider "azurerm" {
  skip_provider_registration = true
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
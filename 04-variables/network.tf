resource "azurerm_virtual_network" "tfvnet" {
  name                = var.virtual_network_name #"cross-reference-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.tfrg.location
  resource_group_name = azurerm_resource_group.tfrg.name
}

resource "azurerm_subnet" "tfsubnet" {
  name                 = var.subnet_name #"cross-reference-subnet"
  resource_group_name  = azurerm_resource_group.tfrg.name
  virtual_network_name = azurerm_virtual_network.tfvnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
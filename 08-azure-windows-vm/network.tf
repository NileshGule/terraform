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

# Create public IPs
resource "azurerm_public_ip" "tfpublicip" {
  name                = "tfDev-public-ip"
  location            = azurerm_resource_group.tfrg.location
  resource_group_name = azurerm_resource_group.tfrg.name
  allocation_method   = "Static"  
}

# Create Network Security Group and rules
resource "azurerm_network_security_group" "tfnsg" {
  name                = "tfDev-nsg"
  location            = azurerm_resource_group.tfrg.location
  resource_group_name = azurerm_resource_group.tfrg.name

  security_rule {
    name                       = "RDP"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }  
}

resource "azurerm_network_interface" "tfnic" {
  name                = "tfDev-nic"
  location            = azurerm_resource_group.tfrg.location
  resource_group_name = azurerm_resource_group.tfrg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.tfsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.tfpublicip.id
  }
}
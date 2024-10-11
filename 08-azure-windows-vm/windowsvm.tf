resource "azurerm_windows_virtual_machine" "tfWindowsVM" {
  name                = "tfDev-WindowsVM"
  resource_group_name = azurerm_resource_group.tfrg.name
  location            = azurerm_resource_group.tfrg.location
  size                = "Standard_DS1_v2" # Standard_B2ts_v2 / Standard_DS1_v2
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.tfnic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
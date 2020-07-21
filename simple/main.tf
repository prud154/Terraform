provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = var.azresourcegrp
  location = var.loc
}
resource "azurerm_virtual_network" "default" {
  name                = var.vm_network
  address_space       = [var.azvirtntwkaddspace]
  location            = var.loc
  resource_group_name = azurerm_resource_group.example.name
}
resource "azurerm_subnet" "example" {
  name                 = var.azrm_subnet
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.default.name
  address_prefixes     = [var.azrmsubnetaddprefixes]
}
resource "azurerm_network_interface" "example" {
  name                = var.nic_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = var.ipconfig
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = var.prvipaddalloc
    public_ip_address_id = azurerm_public_ip.example.id
  }
}
resource "azurerm_public_ip" "example" {
  name                = var.azrm_public_ip
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = var.allc_mtd

  tags = {
    environment = "Production"
  }
}
resource "azurerm_virtual_machine" "main" {
  name                  = var.azrmvirtmachine
  location              = azurerm_resource_group.example.location
  resource_group_name   = azurerm_resource_group.example.name
  network_interface_ids = [azurerm_network_interface.example.id]
  vm_size               = var.azvirtmachinesize
  connection {
    type     = "ssh"
    user     = var.admin_username
    password = var.admin_password
    host     = azurerm_public_ip.example.ip_address
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y nginx", 
    ]
  }
  storage_image_reference {
    publisher = var.azrmvirtmcstorgimgpublisher
    offer     = var.azrmvirtmcstorgimgoffer
    sku       = var.azrmvirtmcstorgimgsku
    version   = var.azrmvirtmcstorgimgversion
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = var.admin_username
    admin_password = var.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}



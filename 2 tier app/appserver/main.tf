provider "azurerm" {
  features {}
}
resource "azurerm_virtual_network" "main" {
  name                = "virtual-network"
  address_space       = var.azrmvrtaddspace
  location            = var.azrmrgploc
  resource_group_name = var.azrmrgpnm
}

resource "azurerm_subnet" "internal" {
  name                 = var.azrmsubnt
  resource_group_name  = var.azrmrgpnm
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefix       = var.addrsprefix
}

resource "azurerm_network_interface" "main" {
  name                = var.azntwkinterface
  location            = var.azrmrgploc
  resource_group_name = var.azrmrgpnm
  ip_configuration {
    name                          = var.azrmntwkintnm
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = var.prvtipaddrallc
    public_ip_address_id          = azurerm_public_ip.example.id
  }
}

resource "azurerm_public_ip" "example" {
  name                = var.azrmpubipaddrnm
  resource_group_name = var.azrmrgpnm
  location            = var.azrmrgploc
  allocation_method   = var.azrmpubipaadrallc
}



resource "azurerm_virtual_machine" "main" {
  name                  = var.azvirtmacine
  location              = var.azrmrgploc
  resource_group_name   = var.azrmrgpnm
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = var.azvirtmcsz

  storage_image_reference {
    publisher = var.srtimgrefpbsr
    offer     = var.strimgrefoffr
    sku       = var.strimgrefsku
    version   = var.strimgrefver
  }
  storage_os_disk {
    name              = var.strosdsknm
    caching           = var.strosdskcach
    create_option     = var.strosdskcrtopt
    managed_disk_type = var.strosdskmngdsktyp
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }


  connection {
    type     = var.strosprfcompnm
    user     = var.strosprfusrnm
    password = var.strosprfusrpasswd
    host     = azurerm_public_ip.example.ip_address
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y apache2",
    ]
  }
}





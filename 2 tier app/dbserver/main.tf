provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = var.azresourcegrpnm
  location = var.azresourceloc
}

resource "azurerm_mysql_server" "example" {
  name                = var.azmysqlserver
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  administrator_login          = var.adminloginID
  administrator_login_password = var.adminloginpasswd

  sku_name   = var.skunm
  storage_mb = var.str
  version    = var.vr

  auto_grow_enabled       = true
  ssl_enforcement_enabled = false
}

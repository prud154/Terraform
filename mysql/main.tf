provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = var.resourcename
  location = var.loc
}
resource "azurerm_mysql_server" "example" {
  name                = var.mysqlservernm
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  administrator_login          = var.admn_loginid
  administrator_login_password = var.admn_passwd

  sku_name   = var.skunm
  storage_mb = var.storage
  version    = var.ver
  public_network_access_enabled     = var.pubntwkstatus
  ssl_enforcement_enabled           = var.ssl_enabled
}

  resource "azurerm_mysql_firewall_rule" "example" {
  name                = var.firewallrule_nm
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mysql_server.example.name
  start_ip_address    = var.strtipaddrss
  end_ip_address      = var.endipaddrss
}

resource "null_resource" "mysqlconnect"{
  provisioner "local-exec" {
    command = "mysql -u ${var.admn_loginid}@${azurerm_mysql_server.example.name} -p${var.admn_passwd} -h ${azurerm_mysql_server.example.fqdn} < mysqlcommands"
  }

  
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "main" {
  name     = "twotierapps"
  location = "East US"
}

module "app1" {
    source = "./appserver"
    azrmpubipaddrnm = "public_ip"
    azvirtmacine = "app1"
    azntwkinterface = "interface1"
}
module "app2" {
    source = "./appserver"
    azrmpubipaddrnm = "public_ip1"
    azvirtmacine = "app2"
    azntwkinterface = "interface2"
}
module "app3" {
    source = "./appserver"
    azrmpubipaddrnm = "public_ip2"
    azvirtmacine = "app3"
    azntwkinterface = "interface3"
}
module "db1" {
    source = "./dbserver"
    azmysqlserver = "two-tier-mysqlserver"

}
module "db2" {
    source = "./dbserver"
    azmysqlserver = "two-tier-mysqlserver1"
}


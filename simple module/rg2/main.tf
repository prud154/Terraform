provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "main" {
  name     = var.rg2
  location = "East US"
}
variable "rg2" {}
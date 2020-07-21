provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "main" {
  name     = var.rg1
  location = "East US"
}
variable "rg1" {}
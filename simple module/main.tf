provider "azurerm" {
  features {}
}
module "app" {
    source = "./rg1"
    rg1 = "resorcegroup1"
}
module "db" {
    source = "./rg2"
    rg2 = "resorcegroup2"
}
module "app1" {
    source = "./rg1"
    rg1 = "resorcegroup3"
}
module "db1" {
    source = "./rg2"
    rg2 = "resorcegroup4"
}
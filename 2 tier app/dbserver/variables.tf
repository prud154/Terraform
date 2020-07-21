variable "azresourcegrpnm" {
  description = "Name of resource group"
  default     = "2tierdb"
}
variable "azresourceloc" {
  description = "Name of resource location"
  default     = "East US"
}
variable "azmysqlserver" {
  description = "Name of mysql server database"
  default     = "two-tier-mysqlserver"
}
variable "adminloginID" {
  description = "admin login id"
  default     = "twotieradmin"
}
variable "adminloginpasswd" {
  description = "admin passwd"
  default     = "H@Sh1CoR3!"
}
variable "skunm" {
  description = "sku_name"
  default     = "B_Gen5_2"
}
variable "str" {
  description = "storage"
  default     = "5120"
}
variable "vr" {
  description = "version"
  default     = "5.7"
}

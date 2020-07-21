variable "resourcename" {
  description = "Name of resource"
  #default     = "example-resources"
}
variable "loc" {
  description = "Name of location"
  #default     = "West Europe"
}
variable "mysqlservernm" {
  description = "Name of mysql database server"
  #default     = "example-mysqlserver"
}
variable "admn_loginid" {
  description = "admin login id"
  #default     = "mysqladminun"
}
variable "admn_passwd" {
  description = "admin login password"
  #default     = "H@Sh1CoR3!"
}
variable "skunm" {
  description = "sku name"
  #default     = "B_Gen5_2"
}
variable "storage" {
  description = "storage"
  #default     = "5120"
}
variable "ver" {
  description = "version"
  #default     = "5.7"
}
variable "pubntwkstatus" {
  description = "public network status"
  #default     = "true"
}
variable "ssl_enabled" {
  description = "ssl enforcement status"
  #default     = "false"
}
variable "firewallrule_nm" {
  description = "firewall rule name"
  #default     = "office"
}
variable "strtipaddrss" {
  description = "start ip address"
  #default     = "0.0.0.0"
}
variable "endipaddrss" {
  description = "end ip address"
  #default     = "255.255.255.255"
}
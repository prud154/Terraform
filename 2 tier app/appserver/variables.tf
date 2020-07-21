variable "azrmrgpnm" {
  description = "Name of resource group"
  default     = "twotierapps"
}
variable "azrmrgploc" {
  description = "Name of resource location"
  default     = "East US"
}
variable "azvrtntwnm" {
  description = "Name of azure virtual network "
  default     = "virtual-network"
}
variable "azrmvrtaddspace" {
  description = "Name of azure virtual network address space"
  default     = ["10.0.0.0/16"]
}
variable "azrmsubnt" {
  description = "Name of azure resource manager subnet"
  default     = "internal"
}
variable "addrsprefix" {
  description = "Name of azure resource manager subnet prefix"
  default     = "10.0.2.0/24"
}
variable "azntwkinterface" {
  description = "Name of azure network interface name"
  default     = "2tierapp-nic"
}
variable "azrmntwkintnm" {
  description = "Name of azure network interface ipconfiguration name"
  default     = "testconfiguration1"
}
variable "prvtipaddrallc" {
  description = "Name of azure network interface private ipaddress allocation"
  default     = "Dynamic"
}
variable "azrmpubipaddrnm" {
  description = "Name of azure resource manager public ipaddress name"
  default     = "public_ip"
}
variable "azrmpubipaadrallc" {
  description = "Name of azure resource manager allocation method"
  default     = "Static"
}
variable "azvirtmacine" {
  description = "Name of azure virtual machine"
  default     = "2tierapp-vm"
}
variable "azvirtmcsz" {
  description = "Azure virtual machine vm size"
  default     = "Standard_DS1_v2"
}
variable "srtimgrefpbsr" {
  description = "storage image reference publisher"
  default     = "Canonical"
}
variable "strimgrefoffr" {
  description = "storage image reference offer"
  default     = "UbuntuServer"
}
variable "strimgrefsku" {
  description = "storage image reference sku"
  default     = "16.04-LTS"
}
variable "strimgrefver" {
  description = "storage image reference version"
  default     = "latest"
}
variable "strosdsknm" {
  description = "storage os disk name"
  default     = "myosdisk1"
}
variable "strosdskcach" {
  description = "storage os disk caching"
  default     = "ReadWrite"
}
variable "strosdskcrtopt" {
  description = "storage os disk create option"
  default     = "FromImage"
}
variable "strosdskmngdsktyp" {
  description = "storage os disk managed disk type"
  default     = "Standard_LRS"
}
variable "strosprfcompnm" {
  description = "storage os disk os profile computer name"
  default     = "ssh"
}
variable "strosprfusrnm" {
  description = "storage os disk os profile admin user name"
  default     = "testadmin"
}
variable "strosprfusrpasswd" {
  description = "storage os disk os profile admin user password"
  default     = "Password1234!"
}

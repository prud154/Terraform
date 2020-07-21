variable "nic_name" {
  description = "Name of network interface"
  #default="example-nic"
}
variable "vm_network" {
  description = "Name of virtual network"
  default     = "example-virtualnetwork"
}
variable "azresourcegrp" {
  description = "Name of azure resource group"
  default     = "example-resource-group"
}
variable "loc" {
  description = "Name of location"
  default     = "West Europe"
}
variable "azrm_subnet" {
  description = "azure resource manager subnet"
  default     = "testsubnet"
}
variable "azvirtntwkaddspace" {
  description = "azure virtual network address space"
  default     = "10.0.0.0/16"
}
variable "azrmsubnetaddprefixes" {
  description = "azurerm subnet address prefixes"
  default     = "10.0.1.0/24"
}
variable "ipconfig" {
  description = "azurerm network interface ipconfiguration "
  default     = "Public"
}
variable "prvipaddalloc" {
  description = "azurerm network interface ip address allocation "
  default     = "Dynamic"
}
variable "azrm_public_ip" {
  description = "acceptance test public ip address"
  default     = "acceptanceTestPublicIp1"
}
variable "allc_mtd" {
  description = "azurerm public ip allocation method"
  default     = "Static"
}
variable "azrmvirtmachine" {
  description = "azurerm virtual machine"
  default     = "myvm"
}
variable "azvirtmachinesize" {
  description = "azure virtual machine size"
  default     = "Standard_D2S_v3"
}
variable "azrmvirtmcstorgimgpublisher" {
  description = "azure virtual machine storage image publisher"
  default     = "Canonical"
}
variable "azrmvirtmcstorgimgoffer" {
  description = "azure virtual machine storage image offer"
  default     = "UbuntuServer"
}
variable "azrmvirtmcstorgimgsku" {
  description = "azure virtual machine storage image sku"
  default     = "16.04-LTS"
}
variable "azrmvirtmcstorgimgversion" {
  description = "azure virtual machine storage image version"
  default     = "latest"
}
variable "admin_username" {
  description = "admin username"
  default     = "testadmin"
}
variable "admin_password" {
  description = "admin password"
  default     = "Password1234!"
}







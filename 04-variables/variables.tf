variable "resource_group_name" {
  default     = "tfResourceGroup"
  type        = string
  description = "Name of the resource group"
}

variable "resource_group_location" {
  default     = "Australia Southeast" #also works with AustraliaSoutheast
  type        = string
  description = "Name of the resource group location"
}

variable "virtual_network_name" {
  type        = string
  description = "Name of the Virtual network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}
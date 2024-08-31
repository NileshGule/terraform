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

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
}

variable "storage_account_container_name" {
  type        = string
  description = "Name of the container inside the storage account"
}


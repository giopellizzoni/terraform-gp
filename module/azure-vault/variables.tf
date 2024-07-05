variable "vault_location" {
  type        = string
  description = "Vault location region"
}

variable "vault_name" {
  type        = string
  description = "Vault name"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "delete_retention_days" {
  type        = number
  description = "Number of days for retain deletion data"
  default     = 7
}

variable "environment" {
  type = string
  description = "Environment name DEV/PROD"
}

variable "extra_tags" {
  type = map(any)
  description = "Extra tags for module"
}
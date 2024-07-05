terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.29.0"
    }
  }

  required_version = ">= 1.1.0"

  # backend "azurerm" {
  #   resource_group_name  = "tf-pellizzoni-laboratorio"
  #   storage_account_name = "sapellizzonicodetf"
  #   container_name       = "tf-blob-pellizzonicode"
  #   key                  = "tf-dev.terraform.tfstate"
  # }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
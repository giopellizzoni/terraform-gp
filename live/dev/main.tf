terraform {
  backend "azurerm" {
    resource_group_name  = "tf-pellizzoni-laboratorio"
    storage_account_name = "sapellizzonicodetf"
    container_name       = "tf-blob-pellizzonicode"
    key                  = "storage_tf-dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

resource "azurerm_resource_group" "main" {
  name     = "tf-pellizzoni-laboratorio"
  location = "westeurope"
  tags = {
    terraform = "true"
    manager   = "terraform"
  }
}

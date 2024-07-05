resource "azurerm_storage_account" "main" {
  name                     = "sapellizzonicodetf"
  resource_group_name      = var.service_name
  location                 = var.service_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    manager = "Terraform"
  }
}

resource "azurerm_storage_container" "storage" {
  name                  = "tf-blob-pellizzonicode"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}

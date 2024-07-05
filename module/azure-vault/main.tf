locals {
  full_vault_name = "${var.vault_name}-${random_id.vault_key_name.hex}-${var.environment}"
  full_tags       = merge({ manager = "Terraform" }, var.extra_tags)
}

data "azurerm_client_config" "current" {

}

resource "random_id" "vault_key_name" {
  byte_length = 4
  keepers = {
    vault = "${var.vault_name}"
  }
}

resource "azurerm_key_vault" "vault" {
  name                       = local.full_vault_name
  location                   = var.vault_location
  resource_group_name        = var.resource_group_name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"
  soft_delete_retention_days = var.delete_retention_days

  tags = local.full_tags

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Create",
      "Get",
      "List"
    ]

    secret_permissions = [
      "Set",
      "Get",
      "Delete",
      "Purge",
      "Recover",
      "List"
    ]
  }
}

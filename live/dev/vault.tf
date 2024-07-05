module "vault" {
  source = "../../module/azure-vault"
  vault_location = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  vault_name = "pllzz-vault"
  environment = "dev"
  extra_tags = {
    environment = "dev"
    creator = "pellizzoni"
  }
}
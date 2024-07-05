module "app1" {
  source = "../../module/services"
  service_name = "app-pellizzoni"
  environment = "dev"
  service_location = azurerm_resource_group.main.location
  service_group = azurerm_resource_group.main.name
  docker_image = "ikauzak/poupadev-api"
  docker_image_tag = "v1.1.0"
  key_vault_id = module.vault.id
}
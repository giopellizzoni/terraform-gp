module "app1" {
  source = "../../module/services"
  service_name = "app-pellizzoni"
  environment = "dev"
  service_location = module.resources.resource_location
  service_group = module.resources.resource_name
  docker_image = "ikauzak/poupadev-api"
  docker_image_tag = "v1.1.0"
  key_vault_id = module.vault.id

  depends_on = [ module.resources ]
}
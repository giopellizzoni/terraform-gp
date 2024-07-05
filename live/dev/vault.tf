module "vault" {
  source = "../../module/azure-vault"
  vault_location = module.resources.resource_location
  resource_group_name = module.resources.resource_location
  vault_name = "pllzz-vault"
  environment = "dev"
  extra_tags = {
    environment = "dev"
    creator = "pellizzoni"
  }

  depends_on = [ module.resources ]
}
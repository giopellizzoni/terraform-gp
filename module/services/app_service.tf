resource "azurerm_service_plan" "main" {
  name                = "${local.full_name}-plan"
  location            = var.service_location
  resource_group_name = var.service_group
  os_type             = "Linux"
  sku_name            = "S1"
}

resource "azurerm_linux_web_app" "main" {
  name                = "${local.full_name}-app"
  location            = var.service_location
  resource_group_name = var.service_group
  service_plan_id     = azurerm_service_plan.main.id
  app_settings = {
    ConnectionStrings__PoupaDevCs = local.db_connection_string
  }

  site_config {
    application_stack {
      docker_image     = var.docker_image
      docker_image_tag = var.docker_image_tag
    }
  }

  tags = local.full_tags
}

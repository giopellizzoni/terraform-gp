resource "azurerm_resource_group" "main" {
  name     = var.resource_name
  location = var.resource_location
  tags = {
    terraform = "true"
    manager   = "terraform"
  }
}

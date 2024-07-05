output "resource_name" {
    description = "Resource group name"
    value = azurerm_resource_group.main.name
}

output "resource_location" {
    description = "Resource group location"
    value = azurerm_resource_group.main.location
}
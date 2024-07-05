
locals {
  full_name = "${var.service_name}-${var.environment}"
  full_tags = merge({manager = "terraform"}, var.extra_tags)
  db_connection_string = "Server=${azurerm_mssql_server.dbserver.fully_qualified_domain_name};Database=${azurerm_mssql_database.database.name};User ID=${var.db_username};Password=${random_password.db_pass.result}"
}
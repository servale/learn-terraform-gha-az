output "resource_group_id" {
  value       = azurerm_resource_group.main.id
  description = "The ID of the created resource group"
}

output "resource_group_name" {
  value       = azurerm_resource_group.main.name
  description = "The name of the created resource group"
}

output "environment_info" {
  value = {
    environment = var.environment_name
    location    = var.primary_location
    project     = var.application_name
  }
  description = "Environment information"
}

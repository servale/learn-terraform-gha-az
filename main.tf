resource "azurerm_resource_group" "main" {
  name     = "rg-${var.application_name}-${var.environment_name}-test"
  location = var.primary_location


  tags = merge(
    var.tags,
    {
      Environment = var.environment_name
      Project     = var.application_name
    }
  )
}
resource "random_string" "suffix" {
  length  = 10
  upper   = false
  special = false
}

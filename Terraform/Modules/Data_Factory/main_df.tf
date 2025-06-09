resource "azurerm_data_factory" "data_factory" {
  name                = "${var.project_name}-${var.environment}-df"
  location            = var.location
  resource_group_name = var.resource_group_name

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = var.environment
    project     = var.project_name
  }

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
  
}
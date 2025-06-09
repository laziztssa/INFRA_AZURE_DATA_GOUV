resource "azurerm_databricks_workspace" "databricks_ws" {
    name                = "dbks-${var.project_name}-${var.environment}"
    location            = var.location
    resource_group_name = var.resource_group_name
    sku                 = var.sku
    
    managed_resource_group_name = "databricks-dbks-${var.project_name}-${var.environment}-managed"
    
    custom_parameters {
        no_public_ip = true
    }
    
    tags = {
        project     = var.project_name
        environment = var.environment
    }
  
}
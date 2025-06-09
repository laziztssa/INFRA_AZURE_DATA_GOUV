output "name" {
  value = azurerm_databricks_workspace.databricks_ws.name
  
}

output "url" {
  value = azurerm_databricks_workspace.databricks_ws.workspace_url
}
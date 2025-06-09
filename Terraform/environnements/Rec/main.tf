provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "rg" {
  source       = "../../Modules/Resource_Group"
  location     = var.location
  project_name = var.project_name
  environment  = var.environment
}

module "storage" {
  source              = "../../Modules/Storage_Account"
  name                = "stg${var.project_name}${var.environment}"
  location            = module.rg.location
  resource_group_name = module.rg.name
}


module "databricks" {
  source = "../../Modules/Databricks"
  project_name = var.project_name
  environment  = var.environment
  location     = module.rg.location
  sku          = var.sku
  resource_group_name = module.rg.name
}

module "data_factory" {
  source              = "../../Modules/Data_Factory"
  project_name        = var.project_name
  environment         = var.environment
  location            = module.rg.location
  resource_group_name = module.rg.name
}

module "keyvaulds" {
  source              = "../../Modules/Key_Vaulds"
  project_name        = var.project_name
  environment         = var.environment
  location            = module.rg.location
  sku                 = var.sku
  resource_group_name = module.rg.name
  subscription_id = var.subscription_id
  tenant_id          = var.tenant_id
  object_id          = var.object_id
  depends_on = [module.databricks, module.data_factory, module.storage, module.rg]
}

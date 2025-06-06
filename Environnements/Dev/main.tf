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

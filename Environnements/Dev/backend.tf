terraform {
    backend "azurerm" {
        resource_group_name  = "rg-terraform-state-datagouv"
        storage_account_name = "stterraformstatedatagouv"
        container_name       = "tfstatedatagouv"
        key                  = "datagouv-dev.terraform.tfstate"
    }
}
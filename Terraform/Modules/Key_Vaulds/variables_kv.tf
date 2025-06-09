variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "location" {
  type = string
}

variable "sku" {
    type = string
    default = "standard"
    validation {
        condition     = contains(["standard", "premium"], var.sku)
        error_message = "The SKU must be either 'standard' or 'premium'."
    }
}

variable "resource_group_name" {
  type = string
}

variable "tenant_id" {
  type = string
  description = "The Azure Active Directory tenant ID."
}

variable "subscription_id" {
  type = string
  description = "The Azure subscription ID."
  
}

variable "object_id" {
  type = string
  description = "The object ID of the Azure Active Directory user or service principal."
}

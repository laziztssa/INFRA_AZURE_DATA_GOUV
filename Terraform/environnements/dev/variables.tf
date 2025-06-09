variable "location" {
  type = string
  default = "france central"
}

variable "project_name" {
  type = string
  default = "datagouv"
}

variable "subscription_id" {
  type = string
  default = ""
}

variable "environment" {
  type = string
  default = "dev"
}

variable "sku" {
  type = string
  default = "premium"
}

variable "tenant_id" {
  type = string
  description = "The Azure Active Directory tenant ID."
}


variable "object_id" {
  type = string
  description = "The object ID of the Azure Active Directory user or service principal."
}

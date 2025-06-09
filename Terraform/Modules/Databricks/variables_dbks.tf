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
}

variable "resource_group_name" {
  type = string
}
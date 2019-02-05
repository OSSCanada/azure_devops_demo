# Defaults

variable "azure_storage_account_name" {
  default = "tfstorage"
}

variable "azure_storage_account_container_name" {
  default = "tfbackend"
}

variable "terraform_key_name" {
  default = "test.terraform.tfstate"
}

# Azure Specifics

variable "azure_resource_group_name" {
  default = "rkdevopsdemo"
}

variable "azure_dc_location" {
  default = "Canada Central"
}

variable "app_service_plan_name" {
  default = "azure_devops_demo"
}


variable "azure_app_service_plan_tier" {
  default = "Standard"
}

variable "azure_app_service_plan_size" {
  default = "S1"
}

variable "azure_app_service_plan_kind" {
  default = "Linux"
}

variable "azure_app_service_plan_reserved" {
  default = "true"
}

variable "webapp_container_image_name" {
  default = "nginx"
}

variable "webapp_container_image_tag" {
  default = "latest"
}

variable "apiapp_container_image_name" {
  default = "nginx"
}

variable "apiapp_container_image_tag" {
  default = "latest"
}

variable "mongodb_connection_string" {
  default = "mongodb://127.0.0.1:27017"
}




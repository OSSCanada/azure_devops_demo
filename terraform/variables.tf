variable "azure_resource_group_name" {
  default = "rkdevopsdemo"
}

variable "azure_dc_location" {
  default = "Canada Central"
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




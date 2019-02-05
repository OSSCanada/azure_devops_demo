terraform {
  required_version = ">= 0.11.10"
}

provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=1.21.0"
}

resource "azurerm_resource_group" "default" {
  name     = "${var.azure_resource_group_name}"
  location = "${var.azure_dc_location}"
}


resource "azurerm_cosmosdb_account" "default" {
  name                = "rkcosmosdbdemo"
  location            = "${azurerm_resource_group.default.location}"
  resource_group_name = "${azurerm_resource_group.default.name}"
  offer_type          = "Standard"
  kind                = "MongoDB"
  
  consistency_policy {
    consistency_level = "Session"
  }


  geo_location {
    location = "Canada Central"
    priority = 0
  }


  tags {
    tier = "Storage"
  }
}

output "endpoint" {
  value = "${azurerm_cosmosdb_account.default.endpoint}"
}

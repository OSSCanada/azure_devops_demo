resource "azurerm_resource_group" "dataingestion" {
  name     = "resourceGroup1"
  location = "West US"
}

resource "azurerm_eventhub_namespace" "dataingestion" {
  name                = "acceptanceTestEventHubNamespace"
  location            = "${azurerm_resource_group.dataingestion.location}"
  resource_group_name = "${azurerm_resource_group.dataingestion.name}"
  sku                 = "Standard"
  capacity            = 1
  kafka_enabled       = true

  tags {
    environment = "Production"
  }
}

resource "azurerm_eventhub" "dataingestion" {
  name                = "acceptanceTestEventHub"
  namespace_name      = "${azurerm_eventhub_namespace.ingeazurerm_resource_group.dataingestion.name}"
  resource_group_name = "${azurerm_resource_group.dataingestion.name}"
  partition_count     = 2
  message_retention   = 1
}
resource "azurerm_app_service_plan" "passport2model" {
  name                = "passport2model"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.default.name}"

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_function_app" "passport2model" {
  name                      = "passport2model"
  location                  = "${azurerm_resource_group.default.location}"
  resource_group_name       = "${azurerm_resource_group.default.name}"
  app_service_plan_id       = "${azurerm_app_service_plan.passport2model.id}"
  storage_connection_string = "${azurerm_storage_account.passport2model.primary_connection_string}"
}

resource "azurerm_storage_account" "passport2model" {
  name                     = "passport2model"
  resource_group_name      = "${azurerm_resource_group.default.name}"
  location                 = "${azurerm_resource_group.default.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

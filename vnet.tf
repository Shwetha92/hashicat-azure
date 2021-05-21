
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.prefix}-vnet"
  location            = "eastus"
  address_space       = [var.address_space]
  resource_group_name = "Gaurav"
}

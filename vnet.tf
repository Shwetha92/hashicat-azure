
resource "azurerm_resource_group" "myresourcegroup1" {
  name     = "${var.prefix}-workshop"
  location = var.location

  tags = {
    environment = "Production"
  }
}
resource "azurerm_virtual_network" "Gaurav" {
  name                = "${var.prefix}-vnet"
  location            = azurerm_resource_group.myresourcegroup1.location
  address_space       = [var.address_space]
  resource_group_name = azurerm_resource_group.myresourcegroup1.name
}
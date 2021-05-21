
resource "azurerm_resource_group" "myresourcegroup1" {
  name     = "${var.prefix}-workshop"
  location = var.location

  tags = {
    environment = "Production"
  }
}
module "vnet1" {
  source  = "Shwetha92/vnet/azurerm"
  version = "2.4.0"
  resource_group_name = azurerm_resource_group.myresourcegroup1.name
}
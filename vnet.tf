module "network" {
  source  = "Shwetha92/network/azurerm"
  version = "3.0.1"
  # insert the 1 required variable here
  resource_group_name = "myresourcegroup"
}

resource "azurerm_virtual_network" "user21-net" {
    name = "user21-vnet"
    address_space = ["40.0.0.0/16"]
    location = azurerm_resource_group.user21-rg.location
    resource_group_name = azurerm_resource_group.user21-rg.name
}

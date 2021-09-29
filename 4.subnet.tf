resource "azurerm_subnet" "user21-subnet1" {
    name = "user21-mysubnet1"
    resource_group_name = azurerm_resource_group.user21-rg.name
    virtual_network_name = azurerm_virtual_network.user21-net.name
    address_prefixes = ["40.0.1.0/24"]
}

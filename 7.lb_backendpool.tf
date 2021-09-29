resource "azurerm_lb_backend_address_pool" "user21-bpepool" {
    loadbalancer_id = azurerm_lb.user21-lb.id
    name = "user21-BackEndAddressPool"
}

resource "azurerm_subnet" "vmSubnet" {
name 			= "vmSubnet"
resource_group_name 	= "${azurerm_resource_group.main.name}"
virtual_network_name 	= "${azurerm_virtual_network.main.name}"
address_prefix 		= "10.0.2.0/24"
}

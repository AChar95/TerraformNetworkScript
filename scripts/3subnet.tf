resource "azurer_virtual_network" "vmSubnet" {
name 			= "vmSubnet"
resource_group_name 	= "${azurerm_resource.main.location}"
virtual_network_name 	= "${azurerm_virtual_network.main.name}"
address_prefix 		= "10.0.2.0/24"
}

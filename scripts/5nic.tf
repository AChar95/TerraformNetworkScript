resource "azurerm_network_interface" "main" {
	name				= "${var.prefix}-nic"
	location			= "${azurerm_resource_group.main.location}"
	resource_group_name		= "${azurerm_resource_group.name}"
	network_securiy_group_id 	= "${azurerm_network_security_group.main.id}"

	ip_configuration {
		name		 		= "${var.prefix}-ip"
		subnet_id			= "${azurerm_subnet.vmSubnet.id}"
		private_ip_address_allocation	= "Dynamic"
	}
}

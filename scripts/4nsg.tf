resource "azurerm_network_security_group" "main" {
name				= "${var.prefix}-nsg"
location			= "${azurerm_resource_group.main.location}"
resource_group_name 		= "${azurerm_resource_group.main.location}"
}

resource "azurerm_network-security_rule" "main" {
name				= "SSH"
priority 			= 500
source_port_range 		= 22
source_address_prefix 		= "AzureLoadBalancer"
destination_port_range 		= "*"
access 				= "Allow"
direction			= "Inbound"
protocol 			= "Ssh"
resource_group_name		= "${azurerm_resource_group.main.name}"
network_security_group_name 	= "${azurerm_network_security_group.main.name}"
}

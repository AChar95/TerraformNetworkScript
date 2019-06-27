resource "azurerm_network_security_group" "main" {
name				= "${var.prefix}-nsg"
location			= "${azurerm_resource_group.main.location}"
resource_group_name 		= "${azurerm_resource_group.main.name}"

security_rule {
name				= "SSH"
priority 			= 500
source_port_range 		= 22
source_address_prefix 		= "AzureLoadBalancer"
destination_port_range 		= "*"
destination_address_prefix	= "*"
access 				= "Allow"
direction			= "Inbound"
protocol 			= "Tcp"
}
security_rule {
name 				= "HTTP"
priority			= 450
source_port_range		= 8080
source_address_prefix 		= "AzureLoadBalancer"
destination_port_range 		= "*"
destination_address_prefix	= "*"
access 				= "Allow"
direction			= "Inbound"
protocol 			= "Tcp"
}
}

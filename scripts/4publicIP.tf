resource "azurerm_public_ip" "main" {
name			= "myPublicIP"
location		= "${azurerm_resource_group.main.location}"
resource_group_name	= "${azurerm_resource_group.main.name}"
allocation_method	= "Dynamic"
domain_name_label = "al-${formatdate("DDMMYYhhmmss", timestamp())}"

tags = {
environment = "staging"
}
}

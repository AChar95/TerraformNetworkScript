resource "azurerm_virtual_machine" "main" {
name			= "${var.prefix}-vm1"
location 		= "${azurerm_resource_group.main.location}"
resource_group_name	= "${azurerm_resource_group.main.name}"
network_interface_ids 	= ["${azurerm_network_interface.main.id}"]
vm_size			= "Standard_DS1_v2"
storage_image_reference {
publisher = "Canonical"
offer = "UbuntuServer"
sku	= "18.04-LTS"
version = "latest"
}
storage_os_disk {
name = "myosdisk1"
caching = "ReadWrite"
create_option = "FromImage"
managed_disk_type = "Standard_LRS"
}

os_profile {
computer_name = "jenkinsVM"
admin_username = "admin123"
admin_password = "Password123456789!"
}
os_profile_linux_config {
disable_password_authentication = false
}
tags = {
environment = "staging"
}
}


variable "prefix" {
default = "vmACex"
}
 
resource "azurerm_virtual_group" "main" {
name 		= "${var.prefix}-resources"
location	= "uksouth"
}


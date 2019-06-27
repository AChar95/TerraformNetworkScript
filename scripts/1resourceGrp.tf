variable "prefix" {
default = "vmACex"
}
 
resource "azurerm_resource_group" "main" {
name 		= "${var.prefix}-resources"
location	= "uksouth"
}


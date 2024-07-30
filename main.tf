resource "azurerm_resource_group" "rg" {
  name     = "myResourceGroup"
  location = "East US"
}
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]

}
resource "azurerm_subnet" "subnet1" {
  name = "subnet1"
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = ["10.0.1.0/24"]
  
}
output "location" {
  value = azurerm_resource_group.rg.location
}

output "name" {
  value = azurerm_resource_group.rg.name
}

output "address_space" {
  value = azurerm_virtual_network.vnet.address_space
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "address_prefixes" {
  value = azurerm_subnet.subnet.address_prefixes
}

output "subnet" {
  value = azurerm_subnet.subnet.name
}

output "azurerm_network_security_group" {
  value = azurerm_network_security_group.nsg
}

output "aazurerm_public_ip" {
  value = azurerm_public_ip.pip.id
}

output "azurerm_network_interface" {
  value = azurerm_network_interface.nic.id
}

output "azurerm_linux_virtual_machine" {
  value = azurerm_linux_virtual_machine.lin-vm.name
}

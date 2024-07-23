output "postgresql_server_id" {
  description = "The ID of the PostgreSQL Server"
  value       = azurerm_postgresql_flexible_server.server.id
}

output "vnet_link_id" {
  description = "The ID of the virtual network link"
  value       = azurerm_private_dns_zone_virtual_network_link.vnet_link.id
}



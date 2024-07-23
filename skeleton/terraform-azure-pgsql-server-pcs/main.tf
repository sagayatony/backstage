# resource "azurerm_resource_group" "resource"{
#   name     = var.resource_group_name
#   location = var.location
# }
resource "azurerm_postgresql_flexible_server" "server"{
  name                          = var.postgresql_flexible_server_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  version                       = var.postgresql_version
  delegated_subnet_id           = var.subnetId
  private_dns_zone_id           = azurerm_private_dns_zone.private_dns.id
  public_network_access_enabled = false
  administrator_login           = var.adminUserName
  administrator_password        = var.adminPassword
  zone                          = "2"
  storage_mb                    = var.storageSize
  storage_tier                  = var.storageTier
  sku_name                      = var.skuName
  tags                          = var.tagSpecifications
}
# resource "azurerm_virtual_network" "vnet" {
#   name                = var.vnet_name
#   location            = var.vnet_location
#   resource_group_name = var.vnet_resource_group_name
#   address_space       = ["100.74.7.96/27"]
# }
resource "azurerm_private_dns_zone" "private_dns" {
  name                = var.privateDNSZoneName
  resource_group_name = var.DNS_resource_group_name
}

# resource "azurerm_subnet" "subnet" {
#    name                 = var.subnet_name
#    resource_group_name  = var.vnet_resource_group_name
#    virtual_network_name = var.vnet_name
#    address_prefixes     = ["100.74.7.96/28"]
#    delegation {
#      name = "fs"
#      service_delegation {
#        name = "Microsoft.DBforPostgreSQL/flexibleServers"
#        actions = [
#          "Microsoft.Network/virtualNetworks/subnets/join/action",
#        ]
#      }
#    }
#  }
resource "azurerm_private_dns_zone_virtual_network_link" "vnet_link"{
  name                  = var.vnetLinkName
  resource_group_name   = var.vnet_resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.private_dns.name
  virtual_network_id    = var.vnet_Id
}
resource "azurerm_postgresql_flexible_server_database" "database"{
  name      = var.databaseforPostgreSQL
  server_id = azurerm_postgresql_flexible_server.server.id
  collation = var.collation
  charset   = var.charset
}


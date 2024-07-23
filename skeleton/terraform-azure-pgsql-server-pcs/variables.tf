variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default      = "rg-ai-demo"
}
variable "location" {
  description = "The location of the resource group"
  type        = string
  default      = "eastUS"
}
variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default       = "VNET-cs-MSDN-64056"
}

variable "vnet_resource_group_name" {
  description = "The name of the vnet resource group"
  type        = string
  default       = "RG-Networking"
}
variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default      = "App2"
}
variable "subnetId"{
  description = "The Id of the subnet"
  type        = string
  default      = "/subscriptions/35f97aaa-4e0f-4a4f-8296-5f6e088427d5/resourceGroups/RG-Networking/providers/Microsoft.Network/virtualNetworks/VNET-cs-MSDN-64056/subnets/APP2"
}
# variable "privateDNSZoneId" {
#   description = "The Id of the privateDNSZone"
#   type        = string
#   #default      = NULL
# }
variable "privateDNSZoneName" {
  description = "The name of the private DNS Zone"
  type        = string
  default     = "privatelink.postgres.database.azure.com"
}
variable "vnetLinkName" {
  description = "The name of the vnetlink"
  type        = string
  default     = "vnlink-vnet-cs-msdn-64056"
}
variable "postgresql_flexible_server_name" {
  description = "The name of the PostgreSQL Server"
  type        = string
  default     = "postgresqlsrv-64056"
}
variable "DNS_resource_group_name" {
  description = "The name of the DNS resource group"
  type        = string
  default       = "RG-Networking"
}
variable "postgresql_version" {
  description = "The version of PostgreSQL to use"
  type        = string
  default     = "12"
}
variable "adminUserName"{
  description = "The Administrator Login for the PostgreSQL Server"
  type        = string
  default     = "TerrformAdmin"
}
variable "adminPassword"{
  description = "The Administrator Login Password for the PostgreSQL Server"
  type        = string
  default     = "Idontknow@99"
}
variable "storageSize"{
  description = "The storage size for the database"
  type        = number
  default     = 32768
}
variable "storageTier"{
  description = "The storage tier for the database"
  type        = string
  default     = "P4"
}
variable "skuName"{
  description = "The SKU name for the PostgreSQL Server"
  type        = string
  default     = "GP_Standard_D4s_v3"
}
variable "databaseforPostgreSQL" {
  description = "The name of the database"
  type        = string
  default     = "postgreDatabase"
}
variable "collation" {
  description = "The collation for the database"
  type        = string
  default       ="en_US.utf8"
}
variable "charset" {
  description = "The charset for the database"
  type        = string
  default       ="utf8"
}
variable "vnet_Id" {
  description = "The ID of the virtual network"
  type        = string
  default     ="/subscriptions/35f97aaa-4e0f-4a4f-8296-5f6e088427d5/resourceGroups/RG-Networking/providers/Microsoft.Network/virtualNetworks/VNET-cs-MSDN-64056"
}
variable "tagSpecifications" {
  type        = map(string)
  description = "list of Tags specifications"
  default     = {
    INFY_EA_Requester            = "uma_sundaram"
    INFY_EA_ProjectCode          = "SOUCNS23"
    INFY_EA_BusinessUnit         = "CISCLD"
    #INFY_EA_CostCenter           = "cs-ppcazu0001"
    INFY_EA_Purpose              = "Testing"
    #INFY_EA_Tenant_ID            = "305"
    INFY_EA_Tenant_Name          = "Infosys Limited"
    INFY_EA_Tenant_organization  = "Infosys Limited"
    #INFY_EA_Created_Using        = "OneStop"
  }
}


variable "tenant_id" {
    type = string
    description = "Tenant ID"
}

variable "subscription_id" {
    type = string
    description = "Subscription ID"
}

variable "resource_group_name" {
    type = string
    description = "Name of the Resource Group Name"
    default = "rg-glaisne-demo-logging-bootstrap"
}

variable "location" {
    type = string
    description = "Location (or region) for the Azure resources"
    default = "eastus2"
}


#
#   Storage Account
#


variable "storage_account_name" {
    type = string
    description = "The name of the Storage Account"
    default = "asndfasdfas"
}

variable "storage_account_tier" {
    type = string
    description = "The sku of the Storage Account"
    default = "Premium"
}

variable "storage_account_access_tier" {
    type = string
    description = "The Access Tier of the Storage Account"
    default = "Hot"
}

variable "storage_account_replication" {
    type = string
    description = "Replication type of the Storage Account"
    default = "LRS"
}

variable "storage_account_tags" {
    type = map(string)
    description = "Map of tags to be applied to the Storage Account"
    default = {}
}


#
#   Storage Account Blob Container
#


variable "storage_account_container_name" {
    type = string
    description = "The name of the Storage Account Container"
    default = "logs"
}

# variable "storage_account_connection_string" {
#     type = string
#     description = "The Connection String of the Storage Account"
# }

variable "storage_account_container_access_type" {
    type = string
    description = "The access typ for the container. Options: blob, container or private"
    default = "private"
}


#
#   Log Analytics
#


variable "log_analytics_workspace_name" {
    type = string
    description = "The name of the Log Analytics Workspace"
    default = "log-asdfnwoanwd"
}

variable "log_analytics_workspace_access_tier" {
    type = string
    description = "The sku of the Log Analytics Workspace"
    default = "Premium"
}

variable "log_analytics_workspace_sku" {
    type = string
    description = "The sku of the Log Analytics Workspace"
    default = "PerGB2018"
}

variable "log_analytics_workspace_retention_in_days" {
    type = string
    description = "Retention (in days) of Log Analytics Workspace data"
    default = "30"
}

variable "log_analytics_workspace_tags" {
    type = map(string)
    description = "Map of tags to be applied to the Log Analytics Workspace"
    default = {}
}
locals {
  now = timestamp()
}

resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.location
}

resource "azurerm_storage_account" "sa" {
    name = var.storage_account_name
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    account_tier = var.storage_account_tier
    account_replication_type = var.storage_account_replication
    access_tier = var.storage_account_access_tier

    tags = var.storage_account_tags
}

resource "azurerm_storage_container" "container" {
    name = var.storage_account_container_name
    storage_account_id = azurerm_storage_account.sa.id
    container_access_type  = var.storage_account_container_access_type
}

data "azurerm_storage_account_blob_container_sas" "sas_read" {
    connection_string = azurerm_storage_account.sa.primary_connection_string
    container_name = var.storage_account_container_name
    https_only = true

    start = local.now
    expiry = timeadd(local.now, "1h")

    permissions {
        read   = true
        add    = false
        create = false
        write  = false
        delete = false
        list   = true
    }
}

data "azurerm_storage_account_blob_container_sas" "sas_write" {
    connection_string = azurerm_storage_account.sa.primary_connection_string
    container_name = var.storage_account_container_name
    https_only = true

    start = local.now
    expiry = timeadd(local.now, "1h")

    permissions {
        read   = true
        add    = true
        create = true
        write  = true
        delete = false
        list   = false
    }
}

resource "azurerm_log_analytics_workspace" "law" {
    name = var.log_analytics_workspace_name
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    sku = var.log_analytics_workspace_sku
    retention_in_days = var.log_analytics_workspace_retention_in_days

    tags = var.log_analytics_workspace_tags
}



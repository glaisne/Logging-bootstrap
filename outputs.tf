output "storage_account_container_sas_url_read" {
    value = nonsensitive(format("https://%s.blob.core.windows.net/%s%s", var.storage_account_name, var.storage_account_container_name, data.azurerm_storage_account_blob_container_sas.sas_read.sas))
}

output "storage_account_container_sas_url_write" {
    value = nonsensitive(format("https://%s.blob.core.windows.net/%s%s", var.storage_account_name, var.storage_account_container_name, data.azurerm_storage_account_blob_container_sas.sas_write.sas))
}

output "storage_account_container_connection_string" {
    # This is a demo, nonsensitive() so you can see it.
    # ToDo: You should remove the nonsensitive()
    value = nonsensitive(azurerm_storage_account.sa.primary_connection_string)
}


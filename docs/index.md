# 🟢 **Project: Logging Bootstrap App**

**Goal**: Deploy basic infrastructure for storing application logs.

## Requirements

* A resource group to hold all resources.
* A storage account with a container for logs.
* A Log Analytics workspace for future telemetry use.
* Output the container SAS URL and connection string.

**Azure Resources**:

![Diagram](https://github.com/glaisne/Logging-bootstrap/blob/main/diagrams/digram.png)

* `azurerm_resource_group`
* `azurerm_storage_account`
* `azurerm_storage_container`
* `azurerm_log_analytics_workspace`

**Terraform Concepts**:

* Providers
* Variables
* Outputs
* Remote backends (intro)

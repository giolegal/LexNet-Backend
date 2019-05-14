provider "azurerm" {
    version = "~>1.5"
}

terraform {
    backend "azurerm" {
        // storage_account_name (required)
        // access_key (required)
        // provide parameters below as part of *terraform init*
        // https://www.terraform.io/docs/backends/types/azurerm.html
        container_name = "tfstate"
        key            = "codelab.microsoft.tfstate"
    }
}

// Resource group to contain all resources created by the project.
// In created resources - simply reuse the group name as resources's group name.
resource "azurerm_resource_group" "default" {
    name     = "${terraform.workspace}-${var.resource_group_name}"
    location = "${var.location}"
}

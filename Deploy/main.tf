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
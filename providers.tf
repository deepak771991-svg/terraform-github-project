terraform {
 backend "azurerm" {
   resource_group_name  = "deepak-resource-group-one"
   storage_account_name = "deepakstoragenewaccount1"
   container_name       = "tfstate"
   key                  = "terraform.tfstate"
 }
}




provider "azurerm" {
   features {}
 }

resource "azurerm_resource_group" "one" {
   name     = "deepak-resource-githubaction"
   location = "West US"
}

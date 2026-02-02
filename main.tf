resource "azurerm_storage_account" "st2" {
   name = "myterraformbackendsa"
   resource_group_name      = azurerm_resource_group.rs1.name
   location                 = azurerm_resource_group.rs1.location
   account_tier             = "Standard"
   account_replication_type = "LRS"
 }


resource "azurerm_storage_container" "sc2" {
   name                  = "tfstate"
   storage_account_id  = azurerm_storage_account.st2.id
   container_access_type = "private"
 }

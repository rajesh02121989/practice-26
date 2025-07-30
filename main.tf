terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "azurerm" {
  features {}
  
}

resource "azurerm_resource_group" "priya" {
  name     = "priyarg"
  location = "West US"
}
resource "azurerm_resource_group" "priya2" {
  name     = "priyarg2"
  location = "West US"
}
resource "azurerm_storage_account" "priya" {
  name                     = "priyastorageacct"
  resource_group_name      = azurerm_resource_group.priya.name
  location                 = azurerm_resource_group.priya.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_account" "sjvn" {
  name                     = "priyastorageacct"
  resource_group_name      = azurerm_resource_group.sjvn.name
  location                 = azurerm_resource_group.sjvn.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_resource_group" "appraisal" {
  name     = "appraisalrg"
  location = "West US"
}
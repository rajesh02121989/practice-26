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
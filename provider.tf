terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
       version = "4.14.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "162a85a7-dadd-45c6-9175-6911af8553a1"
  features {

  }
}

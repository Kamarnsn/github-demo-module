terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.30.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-demo-action"
    storage_account_name = "stgdemoaction"
    container_name       = "container-demo-action"
    key                  = "tf.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "20049c80-9bc0-4b13-807f-fe974b90495d"
}
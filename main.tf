terraform {
  backend "remote" {
     organization = "ecp-shell-prod"
      workspaces {
        name  = "dev-workspace"
      }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 0.15"
}

provider "azurerm" {
  features {}
  subscription_id = '1af33bc5-933a-4adb-a1d8-c918bb130617'
  client_id       = '9dcb2e79-45a0-44e7-af6f-9c5cb8e80448'
  client_secret   = 'eVD8Q~HIWN2qlQgb47M4NoWc58mR83iOGfwbAayq'
  tenant_id       = '537d52c8-0006-44bf-9eb7-7183bc5d2b46'
}

resource "azurerm_resource_group" "rg" {
  name     = "Testing"
  location = "westus2"
}
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
}

resource "azurerm_resource_group" "rg" {
  name     = "Testing"
  location = "westus2"
}
terraform {
  cloud {
     organization = "ecp-shell-prod"

     workspaces {
         name = "dev-workspace"
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
  skip_provider_registration = true
}

variable "prefix"{
  default = "azure"
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-TestRG"
  location = "westus2"
}

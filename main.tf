locals {
  workspace_name = "${var.workspace_name}
}

terraform {
  backend "remote" {
     organization = "ecp-shell-prod"
     workspaces {
        name  = local.workspace_name
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
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

variable "prefix"{
  default = "azure"
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-RG"
  location = "westus2"
}

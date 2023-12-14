terraform {
  backend "remote" {}
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

variable "prefix"{
  default = "azure"
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-TestRG"
  location = "westus2"
}

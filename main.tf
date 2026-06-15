# Configure the Terraform runtime requirements.
terraform {
  required_version = ">= 1.1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.117"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "2.3.3"
    }
  }
}

# Azure Provider
provider "azurerm" {
  features {}
}

# Cloud-init Provider
provider "cloudinit" {
}



variable "labelPrefix" {
  description = "yang0371"
  type        = string
}

variable "region" {
  description = "Azure region for all resources."
  type        = string
  default     = "eastus"
}

variable "admin_username" {
  description = "Admin username for the Linux VM."
  type        = string
  default     = "azureadmin"
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.labelPrefix}-A05-RG"
  location = var.region
}
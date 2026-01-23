# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0" # Optional but recommended in production
    }
  }

  backend "azurerm" {
    resource_group_name  = "MyResourceGroup"
    storage_account_name = "mystorageaccount20260123"
    container_name       = "mycontainer"
    key                  = "terraform.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "fee3badb-324c-44d6-9f37-855eced24ba1"
  features {}
}

# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name     = "my-demo-rg1"
}


resource "azurerm_resource_group" "my_demo_rg2" {
  location = "eastus"
  name     = "my-demo-rg2"
}

resource "azurerm_resource_group" "my_demo_rg4" {
  location = "eastus"
  name     = "my-demo-rg4"
}

# check status
# updated app2 cred

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = "264ca8c4-5043-4120-acab-f8420a443da0"
  client_secret   = "Dr48Q~FlRCNK4Xidp~q57x-PxdvFW1iWENWbFcPO"
  tenant_id       = "fb7f402e-a854-4429-92fe-3ed1e88e402a"
  subscription_id = "53d10f2d-7d56-4d45-a103-34e5a1bce523"
}

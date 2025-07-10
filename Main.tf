terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {

  features {}
}

variable "ip_config" {
  type = list (object({
    name = string
    private_ip_address_allocation = string
  }))
  default =[
    {
      name = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
    }
  ]
  
}



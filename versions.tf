terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.51.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.6.3"
    }
  }
  backend "azurerm" {
    # key              = "terraform.tfstate"
    use_oidc = true
    # use_azuread_auth = true
  }
}

provider "azurerm" {
  features {}
}



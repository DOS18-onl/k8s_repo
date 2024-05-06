# Tell terraform to use the provider and select a version.
terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~>5.28.0"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.99.0"
    }
  }
   backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "tfstatexdata9p0mo"
      container_name       = "tfstate"
      key                  = "gcp_gke.tfstate"
  }
}

provider "google" {
  project = "dos18-414414"
}

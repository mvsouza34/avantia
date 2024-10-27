terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.80.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1"
    }
  }
}

# Configure the local provider
provider "local" {}

provider "google" {
  region      = var.region_id
  zone        = var.zone_01_id
}

##################################################
# Just a random id for the project's name suffix #
##################################################
resource "random_id" "name_suffix" {
  byte_length = 2
}



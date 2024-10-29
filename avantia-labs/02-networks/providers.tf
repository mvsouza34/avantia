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

locals {
  # Projects
  avantia_host_project   = jsondecode(file("../local/avantia_host_project.json"))
  avantia_service_project   = jsondecode(file("../local/avantia_service_project.json"))
  # output_nat_ip          = jsondecode(file("../local/output_nat_ip.json"))
}

# Configure the Google Cloud Provider
provider "google" {
  region = var.region_id
  #zone   = var.zone_01_id
}
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
  avantia_host_project   = jsondecode(file("../../../avantia-foundation/local/avantia_host_project.json"))
  avantia_service_project   = jsondecode(file("../../../avantia-foundation/local/avantia_service_project.json"))
  avantia_prd_service_project = jsondecode(file("../../../avantia-foundation/local/avantia_prd_service_project.json"))
  lab_shared_vpc    = jsondecode(file("../../../avantia-foundation/local/lab_shared_vpc.json"))
  dev_gke_subnets_us_central1-a    = jsondecode(file("../../../avantia-foundation/local/dev_gke_subnets_us_central1-a.json"))
  dev_gke_subnets_us_central1-b   = jsondecode(file("../../../avantia-foundation/local/dev_gke_subnets_us_central1-b.json"))


  #shared_vpcs = jsondecode(file("../../local/shared_vpcs.json"))
  # output_nat_ip          = jsondecode(file("../local/output_nat_ip.json"))
}

# Configure the Google Cloud Provider
provider "google" {
  region = var.region_id
  #zone   = var.zone_01_id
}
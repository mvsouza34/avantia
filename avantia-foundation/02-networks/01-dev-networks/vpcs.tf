#################################
# Create Avantia's VPC Networks #
#################################
# Create a google vpc network
resource "google_compute_network" "vpc_network_avantia_dev" {
  name    = "infra-${var.env}"
  project = local.avantia_host_project.host_project_name
  auto_create_subnetworks = false

  routing_mode = "GLOBAL"
}

output "avantia-vpc-network" {
  value = google_compute_network.vpc_network_avantia_dev.self_link
}

########################################################
# Create a Output Files to reuse generated information #
########################################################
resource "local_file" "lab_export_network" {
  content = jsonencode({
    avantia_vpc_self_link = google_compute_network.vpc_network_avantia_dev.self_link
    avantia_vpc_id        = google_compute_network.vpc_network_avantia_dev.id
  })
  filename = "../../local/lab_shared_vpc.json"
}



resource "google_compute_network" "vpc_network_avantia_prd" {
  name    = "infra-${var.prd_env}"
  project = var.host_project_id
  auto_create_subnetworks = false

  routing_mode = "GLOBAL"
}

output "avantia-prd-vpc-network" {
  value = google_compute_network.vpc_network_avantia_prd.self_link
}

########################################################
# Create a Output Files to reuse generated information #
########################################################
resource "local_file" "prd_export_network" {
  content = jsonencode({
    avantia_prd_vpc_self_link = google_compute_network.vpc_network_avantia_prd.self_link
    avantia_prd_vpc_id        = google_compute_network.vpc_network_avantia_prd.id
  })
  filename = "../../local/prod_shared_vpc.json"
  
}
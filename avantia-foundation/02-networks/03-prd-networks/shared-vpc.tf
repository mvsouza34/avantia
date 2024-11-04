###############################
# Create a shared VPC network #
###############################
# Create a resource shared VPC network in the host project.
resource "google_compute_shared_vpc_host_project" "shared_vpc_host_project_dev" {
  project = local.avantia_host_project.host_project_name
}

# # Define the shared VPC network in the service project avantia_project_id
# resource "google_compute_shared_vpc_service_project" "avantia_service_project_dev" {
#   service_project = local.avantia_service_project.service_project_name
#   host_project    = local.avantia_host_project.host_project_name

#   depends_on = [ google_compute_network.vpc_network_avantia_dev,
#                  google_compute_shared_vpc_host_project.shared_vpc_host_project_dev ]
# }

# Define the shared VPC network in the production service project avantia_project_id
resource "google_compute_shared_vpc_service_project" "avantia_service_project_prd" {
  service_project = local.avantia_prd_service_project.prd_service_project_name
  host_project    = local.avantia_host_project.host_project_name

  depends_on = [ google_compute_network.vpc_network_avantia_prd,
                 google_compute_shared_vpc_host_project.shared_vpc_host_project_dev ]
}

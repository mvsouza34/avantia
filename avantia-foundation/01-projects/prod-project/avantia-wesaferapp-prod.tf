resource "google_project" "avantia_wesaferapp_project" {
  auto_create_network = false
  billing_account     = "${var.billing_account}"                                        # Validar a conta de faturamento
  folder_id           = "${var.prd_folder_shared_id}"                                      
  name                = "${var.avantia_wesaferapp_project_id}"
  project_id          = "${var.avantia_wesaferapp_project_id}"

  # deletion_policy = "DELETE"
}

output "avantia_wesaferapp_prd_project_id" {
  value = "${google_project.avantia_prd_service_project.id}"
}
output "avantia_wesaferapp_project_name" {
  value = "${google_project.avantia_prd_service_project.name}"
}
output "avantia_wesaferapp_project_number" {
  value = "${google_project.avantia_prd_service_project.number}"
}
# output "prd_serrvice_name_suffix" {
#   value = "${random_id.name_suffix.hex}"
# }

########################################################
# Create a Output Files to reuse generated information #
########################################################
resource "local_file" "avantia_wesaferapp_project" {
  content = jsonencode({
    avantia_wesaferapp_project_id = google_project.avantia_wesaferapp_project.id
    avantia_wesaferapp_project_name = google_project.avantia_wesaferapp_project.name
    avantia_wesaferapp_project_number = google_project.avantia_wesaferapp_project.number
    #name_suffix = random_id.name_suffix.hex
  })

  filename = "../../local/avantia_wesaferapp_project.json"
}

################################
# Enable the required services #
################################

# Enable Compute Engine API
resource "google_project_service" "compute_google_api_avantia_wesaferapp" {
  project = google_project.avantia_wesaferapp_project.name
  service = "compute.googleapis.com"
  disable_on_destroy = false
}
# Enable Kubernetes Engine API
resource "google_project_service" "container_google_api_avantia_wesaferapp" {
  project = google_project.avantia_wesaferapp_project.name
  service = "container.googleapis.com"
  disable_on_destroy = false
}
# Enable Nework Management API
resource "google_project_service" "networkmanagement_google_api_avantia_wesaferapp" {
  project = google_project.avantia_wesaferapp_project.name
  service = "networkmanagement.googleapis.com"
  disable_on_destroy = false
}
# Enable Service Networking API
resource "google_project_service" "servicenetworking_google_api_avantia_wesaferapp" {
  project = google_project.avantia_wesaferapp_project.name
  service = "servicenetworking.googleapis.com"
  disable_on_destroy = false
}
# Enable Cloud resource Manager API
resource "google_project_service" "cloudresourcemanager_google_api_avantia_wesaferapp" {
  project = google_project.avantia_wesaferapp_project.name
  service = "cloudresourcemanager.googleapis.com"
  disable_on_destroy = false
}
# Enable Service Usage API
resource "google_project_service" "serviceusage_google_api_avantia_wesaferapp" {
  project = google_project.avantia_wesaferapp_project.name
  service = "serviceusage.googleapis.com"
  disable_on_destroy = false
}
# Enable Cloud Storage API
resource "google_project_service" "storage_google_api_avantia_wesaferapp" {
  project = google_project.avantia_wesaferapp_project.name
  service = "storage-component.googleapis.com"
  disable_on_destroy = false
}
# Enable Cloud Billing API
resource "google_project_service" "cloudbilling_google_api_avantia_wesaferapp" {
  project = google_project.avantia_wesaferapp_project.name
  service = "cloudbilling.googleapis.com"
  disable_on_destroy = false
}
# Enable Cloud IAM API
resource "google_project_service" "iam_google_api_avantia_wesaferapp" {
  project = google_project.avantia_wesaferapp_project.name
  service = "iam.googleapis.com"
  disable_on_destroy = false
}
# Enable networkservices.googleapis.com
resource "google_project_service" "networkservices_google_api_avantia_wesaferapp" {
  project = google_project.avantia_wesaferapp_project.name
  service = "networkservices.googleapis.com"
  disable_on_destroy = false
}
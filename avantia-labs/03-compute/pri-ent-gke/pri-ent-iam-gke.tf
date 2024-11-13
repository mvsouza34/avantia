# #############################
# # Access to Service Account #
# #############################
resource "google_project_iam_member" "host-proj-security-admin-ent" {
  project = local.avantia_host_project.host_project_id
  role = "roles/compute.securityAdmin"
  member  = "serviceAccount:service-${local.avantia_service_project.service_project_number}@container-engine-robot.iam.gserviceaccount.com"
}
resource "google_project_iam_member" "host-proj-network-user-ent" {
  project = local.avantia_host_project.host_project_id
  role = "roles/compute.networkUser"
  member  = "serviceAccount:service-${local.avantia_service_project.service_project_number}@container-engine-robot.iam.gserviceaccount.com"
}
resource "google_project_iam_member" "host-proj-k8s-agent-user-ent" {
  project = local.avantia_host_project.host_project_id
  role = "roles/container.hostServiceAgentUser"
  member  = "serviceAccount:service-${local.avantia_service_project.service_project_number}@container-engine-robot.iam.gserviceaccount.com"
}
resource "google_project_iam_member" "host-proj-k8s-agent-ent" {
    project = local.avantia_host_project.host_project_id
    role = "roles/container.serviceAgent"
    member  = "serviceAccount:service-${local.avantia_host_project.host_project_number}@container-engine-robot.iam.gserviceaccount.com"
}
resource "google_project_iam_member" "service-proj-k8s-agent-ent" {
    project = local.avantia_service_project.service_project_id
    role = "roles/container.serviceAgent"
    member  = "serviceAccount:service-${local.avantia_service_project.service_project_number}@container-engine-robot.iam.gserviceaccount.com"
}
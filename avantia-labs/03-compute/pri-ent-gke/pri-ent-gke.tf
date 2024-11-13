resource "google_project_service" "ent-apis-activation" {
  project = local.avantia_service_project.service_project_name
  for_each = toset([
    "anthos.googleapis.com",
    "gkehub.googleapis.com"
  ])

  service            = each.value
  disable_on_destroy = true
}

resource "google_container_cluster" "avantia_pri_dev_gke_ent" {
  name = "avantia-pri-enterprise-gke-${var.env}"
  project = local.avantia_service_project.service_project_name

  network    = local.lab_shared_vpc.avantia_vpc_id
  subnetwork = local.dev_gke_subnets_us_central1-b.subnet_gke_avanuv_pri_gke_us_ce1_b1_name
  location = var.zone_02_id
  remove_default_node_pool = true
  enable_l4_ilb_subsetting = true
  initial_node_count = 1
  enable_multi_networking = true
  datapath_provider = "ADVANCED_DATAPATH"

  
  private_cluster_config {
        enable_private_endpoint = true
        enable_private_nodes    = true
        master_ipv4_cidr_block  = var.subnet_cidr_cluster_range_control 
    } 

  ip_allocation_policy {
    stack_type = "IPV4"
    services_secondary_range_name   = local.dev_gke_subnets_us_central1-a.subnet_gke_avanuv_pri_name_services_range
    cluster_secondary_range_name    = local.dev_gke_subnets_us_central1-a.subnet_gke_avanuv_pri_name_pod_range
  }

  workload_identity_config {
    workload_pool = "${local.avantia_service_project.service_project_name}.svc.id.goog"
  }

    master_authorized_networks_config {
    cidr_blocks {
      cidr_block    = var.cidr_block
      display_name = "Default GCP Network"
    }
  }

  release_channel {
  channel = "REGULAR"
}

deletion_protection = false

depends_on = [ 
    google_project_iam_member.host-proj-k8s-agent-ent,
    google_project_iam_member.host-proj-k8s-agent-user-ent,
    google_project_iam_member.host-proj-network-user-ent,
    google_project_iam_member.host-proj-security-admin-ent,
    google_project_iam_member.service-proj-k8s-agent-ent
    ]

}

resource "google_container_node_pool" "avantia_pri_dev_gke_preemptible_nodes" {
  project = local.avantia_service_project.service_project_name
  name       = "node-pool-01"
  location   = var.region_id
  cluster    = google_container_cluster.avantia_pri_dev_gke_ent.id
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
    tags = ["gke"]
  }
  depends_on = [ google_container_cluster.avantia_pri_dev_gke_ent ]
}
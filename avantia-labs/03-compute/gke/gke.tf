resource "google_container_cluster" "avantia_pri_dev_gke" {
  name = "avantia-private-cluster-${var.env}-staging"
  project = local.avantia_service_project.service_project_name
  #project = var.service_project_id
#   network    = local.lab_shared_vpc.avantia_vpc_id
#   subnetwork = local.dev_gke_subnets_us_central1-a.subnet_gke_avanuv_pri_name

network = var.stag_service_vpc_name
subnetwork = var.stag_subnet_cluster_name

  location = var.zone_01_id
  remove_default_node_pool = true
  enable_l4_ilb_subsetting = true
  initial_node_count = 1

  addons_config {
    gce_persistent_disk_csi_driver_config {
      enabled = true
    }
    network_policy_config {
      disabled = true
    }
  }
  cluster_autoscaling {
   # enabled = true
    autoscaling_profile = "BALANCED"
    # resource_limits {
    #   resource_type = "cpu"
    #   minimum = 1
    #   maximum = 2
    # }
    # resource_limits {
    #   resource_type = "memory"
    #   minimum = 1
    #   maximum = 6
    # }
  }
  database_encryption {
    state = "DECRYPTED"
  }
  default_max_pods_per_node = 40
  default_snat_status {
    disabled = false
  }

  node_config {
    disk_size_gb    = 100
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    logging_variant = "DEFAULT"
    machine_type    = "n1-standard-2"
    metadata = {
      disable-legacy-endpoints = "true"
    }
    oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    service_account = "default"
    shielded_instance_config {
      enable_integrity_monitoring = true
    }
    tags = ["gke"]
    workload_metadata_config {
      mode          = "GKE_METADATA"
    }
  }
  #node_locations = ["us-central1-a", "us-central1-c", "us-central1-f"]

  private_cluster_config {
        enable_private_endpoint = true
        enable_private_nodes    = true
        master_ipv4_cidr_block  = var.stag_subnet_control_range
    } 

  ip_allocation_policy {
    stack_type = "IPV4"
    services_secondary_range_name   = "avantia-infr-stg-gke-wecloud-defaultservice-pri-us-ce1-1"
    cluster_secondary_range_name    = "avantia-infr-stg-gke-wecloud-defaultpod-pri-us-ce1-1"
  }

  workload_identity_config {
    workload_pool = "${local.avantia_service_project.service_project_name}.svc.id.goog"
    #workload_pool = "avantia-avanuv-labs.svc.id.goog"
  }

    master_authorized_networks_config {
    cidr_blocks {
      cidr_block    = var.lab_subnet_cidr_environment
      display_name = "avantia-infr-stg-gke-wecloud-defaultnodepod-pri-us-ce1-1"
    }
  }

  release_channel {
  channel = "REGULAR"
}

deletion_protection = false

depends_on = [ 
    google_project_iam_member.host-proj-k8s-agent,
    google_project_iam_member.host-proj-k8s-agent-user,
    google_project_iam_member.host-proj-network-user,
    google_project_iam_member.host-proj-security-admin,
    google_project_iam_member.service-proj-k8s-agent
    ]
}

resource "google_container_node_pool" "avva-app-hoint" {
  name       = "avva-app-hoint"
  project = var.service_project_id
  cluster    = google_container_cluster.avantia_pri_dev_gke.id
  node_count = 0
  location   = "us-central1"

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.243.48.0/21"
    pod_range            = "avantia-infr-stag-gke-wecloud-defaultpod-pri-us-ce1-1"
  }
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 35
  node_config {
    preemptible  = true
    tags = ["avva-app-hoint"]
    machine_type = "t2a-standard-2"
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb    = 30
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    metadata = {
      disable-legacy-endpoints = "true"
    }
    oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    service_account = "default"
    shielded_instance_config {
      enable_integrity_monitoring = true
    }
  }
}
resource "google_container_node_pool" "avanuv-box-staging" {
  name       = "avanuv-box-staging"
  project = var.service_project_id
  cluster    = google_container_cluster.avantia_pri_dev_gke.id
  node_count = 0
  location   = "us-central1"

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.243.56.0/21"
    pod_range            = "avantia-infr-stag-gke-wecloud-weavaintpod-pri-us-ce1-1"
  }
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 20
  node_config {
    preemptible  = true
    tags = ["avanuv-box-staging"]
    machine_type = "t2a-standard-2"
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb    = 30
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    metadata = {
      disable-legacy-endpoints = "true"
    }
    oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    service_account = "default"
    shielded_instance_config {
      enable_integrity_monitoring = true
    }
  }
}
resource "google_container_node_pool" "avanuv-app-staging" {
  name       = "avanuv-app-staging"
  project = var.service_project_id
  cluster    = google_container_cluster.avantia_pri_dev_gke.id
  node_count = 0
  location   = "us-central1"

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.243.64.0/21"
    pod_range            = "avantia-infr-stag-gke-wecloud-wecloudpod-pri-us-ce1-1"
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 25
  node_config {
    preemptible  = true
    tags = ["avanuv-app-staging"]
    machine_type = "t2a-standard-2"
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb    = 30
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    metadata = {
      disable-legacy-endpoints = "true"
    }
    oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    service_account = "default"
    shielded_instance_config {
      enable_integrity_monitoring = true
    }
  }
}

resource "google_container_node_pool" "classifier-staging" {
  name       = "classifier-staging"
  project = var.service_project_id
  cluster    = google_container_cluster.avantia_pri_dev_gke.id
  node_count = 0
  location   = "us-central1"

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.243.72.0/21"
    pod_range            = "avantia-infr-stag-gke-wecloud-classfierspod-pri-us-ce1-1"
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 15
  node_config {
    preemptible  = true
    tags = ["classifier-staging"]
    machine_type = "n1-standard-4"
    guest_accelerator {
      type = "nvidia-tesla-t4"
      count = 1
      gpu_sharing_config {
        gpu_sharing_strategy = "MPS"
        max_shared_clients_per_gpu = 10
      }
    }
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb    = 100
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    metadata = {
      disable-legacy-endpoints = "true"
    }
    oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    service_account = "default"
    shielded_instance_config {
      enable_integrity_monitoring = true
    }
  }
}
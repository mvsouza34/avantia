resource "google_container_cluster" "avantia_pri_prod_gke" {
  name = "avantia-private-cluster-prod"
  project = var.prod_project_id
  network = var.prod_service_vpc_name
  subnetwork = var.prod_subnet_cluster_name

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

  private_cluster_config {
        enable_private_endpoint = true
        enable_private_nodes    = true
        master_ipv4_cidr_block  = var.prod_subnet_control_range
    } 

  ip_allocation_policy {
    stack_type = "IPV4"
    services_secondary_range_name   = "avantia-infr-prod-gke-wecloud-defaultservice-pri-us-ce1-1"
    cluster_secondary_range_name    = "avantia-infr-prod-gke-wecloud-defaultpod-pri-us-ce1-1"
  }

  workload_identity_config {
    workload_pool = "${var.prod_project_id}.svc.id.goog"
  }

    master_authorized_networks_config {
    cidr_blocks {
      cidr_block    = var.prod_subnet_cidr_environment
      display_name = "avantia-infr-prod-gke-wecloud-cluster-pri-us-ce1-a-1"
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

resource "google_container_node_pool" "avva_app_int" {
  name       = "avva-app-int"
  project = var.prod_project_id
  cluster    = google_container_cluster.avantia_pri_prod_gke.id
  node_count = 0
  location   = "us-central1"

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.242.16.0/21"
    pod_range            = "avantia-infr-prod-gke-wecloud-weavaintpod-pri-us-ce1-1"
  }
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 25
  node_config {
    preemptible  = true
    tags = ["avva-app-int"]
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
resource "google_container_node_pool" "avanuv_production" {
  name       = "avanuv-production"
  project = var.prod_project_id
  cluster    = google_container_cluster.avantia_pri_prod_gke.id
  node_count = 0
  location   = "us-central1"

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.240.64.0/19"
    pod_range            = "avantia-infr-prod-gke-wecloud-boxpod-pri-us-ce1-1"
  }
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 11
  node_config {
    preemptible  = true
    tags = ["avanuv-production"]
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
resource "google_container_node_pool" "avva_cameras_int" {
  name       = "avva-cameras-int"
  project = var.prod_project_id
  cluster    = google_container_cluster.avantia_pri_prod_gke.id
  node_count = 0
  location   = "us-central1"

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.242.48.0/21"
    pod_range            = "avantia-infr-prod-gke-wecloud-avva-cameras-int-pri-us-ce1-1"
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 30
  node_config {
    preemptible  = true
    tags = ["avva-cameras-int"]
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

resource "google_container_node_pool" "avanuv_app_production" {
  name       = "avanuv-app-production"
  project = var.prod_project_id
  cluster    = google_container_cluster.avantia_pri_prod_gke.id
  node_count = 0
  location   = "us-central1"

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.242.24.0/21"
    pod_range            = "avantia-infr-prod-gke-wecloud-wecloudpod-pri-us-ce1-1"
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 25
  node_config {
    preemptible  = true
    tags = ["avanuv-app-production"]
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

resource "google_container_node_pool" "classifier" {
  name       = "classifier"
  project = var.prod_project_id
  cluster    = google_container_cluster.avantia_pri_prod_gke.id
  node_count = 0
  location   = "us-central1"

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.242.32.0/21"
    pod_range            = "avantia-infr-prod-gke-wecloud-classfierspod-pri-us-ce1-1"
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 16
  node_config {
    preemptible  = true
    tags = ["classifier"]
    machine_type = "n1-standard-8"
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

resource "google_container_node_pool" "servicos_prod" {
  autoscaling {
    location_policy      = "ANY"
    total_max_node_count = 5
  }
  cluster            = google_container_cluster.avantia_pri_prod_gke.id
  initial_node_count = 0
  location           = "us-central1-a"
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 20
  name              = "servicos"
  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.242.40.0/21"
    pod_range            = "avantia-infr-prod-gke-wecloud-servicos-pri-us-ce1-1"
  }
  node_config {
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb = 30
    disk_type    = "pd-balanced"
    ephemeral_storage_local_ssd_config {
      local_ssd_count = 1
    }
    image_type = "COS_CONTAINERD"
    labels = {
      application = "servicos"
    }
    logging_variant = "DEFAULT"
    machine_type    = "n1-standard-1"
    metadata = {
      disable-legacy-endpoints = "true"
    }
    oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    service_account = "default"
    shielded_instance_config {
      enable_integrity_monitoring = true
    }
    workload_metadata_config {
      mode          = "GKE_METADATA"
    }
  }
  node_locations = ["us-central1-a"]
  project        = var.prod_project_id
  upgrade_settings {
    max_surge = 1
    strategy  = "SURGE"
  }
  version = "1.30.5-gke.1443001"
}
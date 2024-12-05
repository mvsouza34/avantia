resource "google_container_node_pool" "avva-app-hoint" {
  name       = "avva-app-hoint"
  project = var.service_project_id
  cluster    = var.stg_cluster
  node_count = 11
  location   = var.zone_01_id

  autoscaling {
    location_policy      = "ANY"
    total_max_node_count = 15
  }
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
  cluster    = var.stg_cluster
  node_count = 1
  location   = var.zone_01_id

  autoscaling {
    location_policy      = "ANY"
    total_max_node_count = 10
  }

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
  cluster    = var.stg_cluster
  node_count = 1
  location   = var.zone_01_id

  autoscaling {
    location_policy      = "ANY"
    total_max_node_count = 10
  }

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
  cluster    = var.stg_cluster
  node_count = 1
  location   = var.zone_01_id

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

# ##################################### EXPORTED NODE POOL ############################################
resource "google_container_node_pool" "servicos" {
  autoscaling {
    location_policy      = "ANY"
    total_max_node_count = 5
  }
  cluster            = var.stg_cluster
  initial_node_count = 1
  location           = "us-central1-a"
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 20
  name              = "servicos"
  network_config {
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.243.24.0/24"
    pod_range            = "avantia-infr-stg-gke-wecloud-defaultpod-pri-us-ce1-1"
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
    machine_type    = "e2-medium"
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
  node_count     = 1
  node_locations = ["us-central1-a"]
  project        = "avantia-avanuv-labs"
  upgrade_settings {
    max_surge = 1
    strategy  = "SURGE"
  }
  version = "1.30.5-gke.1443001"
}
resource "google_container_node_pool" "avva_app_int" {
  name       = "avva-app-int"
  project = var.prod_project_id
  cluster    = var.prod_cluster
  node_count = 1
  location   = var.zone_01_id

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
    preemptible  = false
    tags = ["avva-app-int"]
    machine_type = "t2a-standard-2"
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb    = 30
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    labels = {
      application = "avva-app-int"
    }
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
  cluster    = var.prod_cluster
  node_count = 0
  location   = var.zone_01_id

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
    preemptible  = false
    tags = ["avanuv-production"]
    machine_type = "t2a-standard-2"
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb    = 30
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    labels = {
      application = "avanuv-production"
    }
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
  cluster    = var.prod_cluster
  node_count = 0
  location   = var.zone_01_id

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
    preemptible  = false
    tags = ["avva-cameras-int"]
    machine_type = "t2a-standard-2"
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb    = 30
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    labels = {
      application = "avva-cameras-int"
    }
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
  cluster    = var.prod_cluster
  node_count = 0
  location   = var.zone_01_id

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
    preemptible  = false
    tags = ["avanuv-app-production"]
    machine_type = "t2a-standard-2"
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb    = 30
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    labels = {
      application = "avanuv-app-production"
    }
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
autoscaling {
    location_policy      = "ANY"
    total_max_node_count = 15
  }
  name       = "classifier"
  project = var.prod_project_id
  cluster    = var.prod_cluster
  node_count = 8
  location   = var.zone_01_id

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
    preemptible  = false
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
    labels = {
      application = "classifier"
    }
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
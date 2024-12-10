resource "google_container_node_pool" "avva_app_int" {
  name       = var.avva_app_int_name
  project = var.prod_project_id
  cluster    = var.prod_cluster
  node_count = 1
  location   = var.zone_01_id

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = var.avva_app_int_pod_cidr_block
    pod_range            = var.avva_app_int_cidr_block_name
  }
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 25
  node_config {
    tags = ["avva-app-int"]
    machine_type = var.avva_app_int_t2_machine_type
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
  name       = var.avanuv_production_name
  project = var.prod_project_id
  cluster    = var.prod_cluster
  node_count = 0
  location   = var.zone_01_id

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = var.avanuv_production_pod_cidr_block
    pod_range            = var.avanuv_production_cidr_block_name
  }
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 11
  node_config {
    
    tags = ["avanuv-production"]
    machine_type = var.avanuv_production_t2_machine_type
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
  name       = var.avva_cameras_int_name
  project = var.prod_project_id
  cluster    = var.prod_cluster
  node_count = 0
  location   = var.zone_01_id

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = var.avva_cameras_int_pod_cidr_block
    pod_range            = var.avva_cameras_int_cidr_block_name
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 30
  node_config {
    
    tags = ["avva-cameras-int"]
    machine_type = var.avva_cameras_int_t2_machine_type
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
  name       = var.avanuv_app_production_name
  project = var.prod_project_id
  cluster    = var.prod_cluster
  node_count = 0
  location   = var.zone_01_id

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = var.avanuv_app_production_pod_cidr_block
    pod_range            = var.avanuv_app_production_cidr_block_name
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 25
  node_config {
    
    tags = ["avanuv-app-production"]
    machine_type = var.avanuv_app_production_t2_machine_type
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
  name       = var.classifier_name
  project = var.prod_project_id
  cluster    = var.prod_cluster
  node_count = 8
  location   = var.zone_01_id

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = var.classifier_pod_cidr_block
    pod_range            = var.classifier_cidr_block_name
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 20
  node_config {
    tags = ["classifier"]
    machine_type = var.classifier_n1_machine_type
    guest_accelerator {
      type = var.classifier_n1_accelerator
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
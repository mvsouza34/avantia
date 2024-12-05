resource "google_container_node_pool" "avva_app_devl_dev" {
  autoscaling {
    location_policy      = "ANY"
    total_max_node_count = 15
  }
  name       = var.avva_app_devl_node_pool_name
  project = var.service_project_id
  cluster    = var.dev_cluster_id
  node_count = 1
  location   = var.zone_01_id

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = var.avva_app_devl_pod_cidr_block
    pod_range            = var.avva_app_devl_pod_cidr_block_name
  }
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 35
  node_config {
    
    tags = ["avva-app-devl"]
    machine_type = var.avva_app_devl_machine_type
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb    = 30
    disk_type       = "pd-balanced"
    image_type      = var.linux_image
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
resource "google_container_node_pool" "avanuv_box_testing_dev" {
  autoscaling {
    location_policy      = "ANY"
    total_max_node_count = 10
  }
  name       = var.avanuv_box_testing_node_pool_name
  project = var.service_project_id
  cluster    = var.dev_cluster_id
  node_count = 0
  location   = var.zone_01_id

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = var.avanuv_box_testing_pod_cidr_block
    pod_range            = var.avanuv_box_testing_pod_cidr_block_name
  }
  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 20
  node_config {
    tags = ["avanuv-box-testing"]
    machine_type = var.avanuv_box_testing_machine_type
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb    = 30
    disk_type       = "pd-balanced"
    image_type      = var.linux_image
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
resource "google_container_node_pool" "avanuv_app_testing" {
  autoscaling {
    location_policy      = "ANY"
    total_max_node_count = 10
  }
  name       = var.avanuv_app_testing_node_pool_name
  project = var.service_project_id
  cluster    = var.dev_cluster_id
  node_count = 1
  location   = var.zone_01_id

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = var.avanuv_app_testing_pod_cidr_block
    pod_range            = var.avanuv_app_testing_pod_cidr_block_name
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 25
  node_config {
    tags = ["avanuv-app-testing"]
    machine_type = var.avanuv_app_testing_machine_type
    advanced_machine_features {
      threads_per_core = 0
    }
    disk_size_gb    = 30
    disk_type       = "pd-balanced"
    image_type      = var.linux_image
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

resource "google_container_node_pool" "classifier_testing_dev" {
  name       = var.classifier_testing_node_pool_name
  project = var.service_project_id
  cluster    = var.dev_cluster_id
  node_count = 0
  location   = var.zone_01_id

  network_config {
    create_pod_range = true
    enable_private_nodes = true
    pod_ipv4_cidr_block  = var.classifier_testing_pod_cidr_block
    pod_range            = var.classifier_testing_pod_cidr_block_name
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
  max_pods_per_node = 15
  node_config {
    tags = ["classifier-testing"]
    machine_type = var.classifier_testing_machine_type
    guest_accelerator {
      type = var.classifier_testing_guest_accelerator_type
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
    image_type      = var.linux_image
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
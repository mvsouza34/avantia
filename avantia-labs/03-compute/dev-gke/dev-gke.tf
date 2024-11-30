resource "google_container_cluster" "avantia_pri_development_gke" {
  name = "avantia-private-cluster-${var.env}-dev"
  project = local.avantia_service_project.service_project_name

network = var.dev_service_vpc_name
subnetwork = var.dev_subnet_cluster_name

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
        master_ipv4_cidr_block  = var.dev_subnet_control_range
    } 

  ip_allocation_policy {
    stack_type = "IPV4"
    services_secondary_range_name   = "avantia-infr-dev-gke-wecloud-defaultservice-pri-us-ce1-1"
    cluster_secondary_range_name    = "avantia-infr-dev-gke-wecloud-defaultpod-pri-us-ce1-1"
  }

  workload_identity_config {
    workload_pool = "${local.avantia_service_project.service_project_name}.svc.id.goog"
    #workload_pool = "avantia-avanuv-labs.svc.id.goog"
  }

    master_authorized_networks_config {
    cidr_blocks {
      cidr_block    = var.lab_subnet_cidr_environment
      display_name = "avantia-infr-dev-gke-wecloud-defaultnodepod-pri-us-ce1-1"
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

resource "google_container_node_pool" "avva_app_devl" {
  autoscaling {
    location_policy      = "ANY"
    total_max_node_count = 15
  }
  name       = var.avva_app_devl_node_pool_name
  project = var.service_project_id
  cluster    = var.dev_cluster_id
  node_count = 0
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
    preemptible  = false
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
  depends_on = [ google_container_cluster.avantia_pri_development_gke ]
}
resource "google_container_node_pool" "avanuv_box_testing" {
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
    preemptible  = false
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
  depends_on = [ google_container_cluster.avantia_pri_development_gke ]
}
resource "google_container_node_pool" "avanuv_app_testing" {
  autoscaling {
    location_policy      = "ANY"
    total_max_node_count = 10
  }
  name       = var.avanuv_app_testing_node_pool_name
  project = var.service_project_id
  cluster    = var.dev_cluster_id
  node_count = 0
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
    preemptible  = false
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
  depends_on = [ google_container_cluster.avantia_pri_development_gke ]
}

resource "google_container_node_pool" "classifier_testing" {
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
    preemptible  = false
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
  depends_on = [ google_container_cluster.avantia_pri_development_gke ]
}

##################################### EXPORTED NODE POOL ############################################
# resource "google_container_node_pool" "servicos_dev" {
#   autoscaling {
#     location_policy      = "ANY"
#     total_max_node_count = 5
#   }
#   cluster            = "avantia-private-cluster-lab-staging"
#   initial_node_count = 0
#   location           = "us-central1-a"
#   management {
#     auto_repair  = true
#     auto_upgrade = true
#   }
#   max_pods_per_node = 20
#   name              = "servicos-dev"
#   network_config {
#     create_pod_range = true
#     enable_private_nodes = true
#     pod_ipv4_cidr_block  = "10.243.120.0/21"
#     pod_range            = "avantia-infr-dev-gke-wecloud-servicos-dev-pri-us-ce1-1"
#   }
#   node_config {
#     advanced_machine_features {
#       threads_per_core = 0
#     }
#     disk_size_gb = 30
#     disk_type    = "pd-balanced"
#     ephemeral_storage_local_ssd_config {
#       local_ssd_count = 1
#     }
#     image_type = "COS_CONTAINERD"
#     labels = {
#       application = "servicos"
#     }
#     logging_variant = "DEFAULT"
#     machine_type    = "n1-standard-1"
#     metadata = {
#       disable-legacy-endpoints = "true"
#     }
#     oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
#     service_account = "default"
#     shielded_instance_config {
#       enable_integrity_monitoring = true
#     }
#     workload_metadata_config {
#       mode          = "GKE_METADATA"
#     }
#   }
#   node_count     = 0
#   node_locations = ["us-central1-a"]
#   project        = "avantia-avanuv-labs"
#   upgrade_settings {
#     max_surge = 1
#     strategy  = "SURGE"
#   }
#   version = "1.30.5-gke.1443001"
# }
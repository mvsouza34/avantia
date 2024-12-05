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

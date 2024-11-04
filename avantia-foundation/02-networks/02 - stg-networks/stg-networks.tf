################### STG GKE NETWORKS - US CENTRAL1 A ###################

# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pri_stg_gke_us_ce1_a1" {
  name          = var.subnet_gke_weava_pri_stg_gke_us_ce1_a1_name
  description   = "Subnet for use of GKE from us-central1-c zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_weava_pri_stg_gke_us_ce1_a1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer

  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.weava_pri_stg_gke_us_ce1_a1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.weava_pri_stg_gke_us_ce1_a1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pri_stg_gke_us_ce1_a1" {
  value = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_a1.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pub_stg_gke_us_ce1_a1" {
  name          = var.subnet_gke_weava_pub_stg_gke_us_ce1_a1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_weava_pub_stg_gke_us_ce1_a1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.weava_pub_stg_gke_us_ce1_a1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.weava_pub_stg_gke_us_ce1_a1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pub_stg_gke_us_ce1_a1" {
  value = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_a1.self_link
}

# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_avanuv_pri_stg_gke_us_ce1_a1" {
  name          = var.subnet_gke_avanuv_pri_stg_gke_us_ce1_a1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_avanuv_pri_stg_gke_us_ce1_a1idr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.avanuv_pri_stg_gke_us_ce1_a1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.avanuv_pri_stg_gke_us_ce1_a1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_applicationstg_gke_us_ce1_a1" {
  value = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_a1.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_a1" {
  name          = var.subnet_gke_avanuv_pub_stg_gke_us_ce1_a1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_avanuv_pub_stg_gke_us_ce1_a1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.avanuv_pub_stg_gke_us_ce1_a1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.avanuv_pub_stg_gke_us_ce1_a1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_a1" {
  value = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_a1.name
}


# # Create a private google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_a1" {
  name          = var.subnet_gke_shrd_pri_stg_gke_us_ce1_a1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_shrd_pri_stg_gke_us_ce1_a1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.shrd_pri_stg_gke_us_ce1_a1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.shrd_pri_stg_gke_us_ce1_a1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_a1" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_a1.self_link
}

# Create a public VPC Subnetwork for GKE 
resource "google_compute_subnetwork" "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_a1" {
  name = var.subnet_gke_shrd_pub_stg_gke_us_ce1_a1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_shrd_pub_stg_gke_us_ce1_a1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.shrd_pub_stg_gke_us_ce1_a1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.shrd_pub_stg_gke_us_ce1_a1_secondary_range_pods
  }
}

output "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_a1_self_link" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_a1.self_link
}
output "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_a1_service_range" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_a1.secondary_ip_range[0].range_name
}
output "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_a1_pod_range" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_a1.secondary_ip_range[1].range_name
} 

######################################################
# Create Output Files to reuse generated information #
######################################################
resource "local_file" "export_subnet_stg_gke_us_ce1_a1" {
  content = jsonencode({
    subnet_gke_weava_pri_stg_gke_us_ce1_a1_name       = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_a1.self_link
    subnet_gke_weava_pub_stg_gke_us_ce1_a1_name       = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_a1.self_link
    subnet_gke_avanuv_pri_stg_gke_us_ce1_a1_name      = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_a1.self_link
    subnet_gke_avanuv_pub_stg_gke_us_ce1_a1_name      = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_a1.self_link
    subnet_gke_shrd_pri_stg_gke_us_ce1_a1_name        = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_a1.self_link
    subnet_gke_shrd_pub_stg_gke_us_ce1_a1_name        = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_a1.id

    subnet_gke_weava_pri_stg_gke_us_ce1_a1_name_services_range  = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_a1.secondary_ip_range[0].range_name
    subnet_gke_weava_pri_stg_gke_us_ce1_a1_name_pod_range       = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_a1.secondary_ip_range[1].range_name
    subnet_gke_weava_pub_stg_gke_us_ce1_a1_name_services_range  = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_a1.secondary_ip_range[0].range_name
    subnet_gke_weava_pub_stg_gke_us_ce1_a1_name_pod_range       = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_a1.secondary_ip_range[1].range_name
    subnet_gke_avanuv_pri_stg_gke_us_ce1_a1_name_services_range = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_a1.secondary_ip_range[0].range_name
    subnet_gke_avanuv_pri_stg_gke_us_ce1_a1_name_pod_range      = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_a1.secondary_ip_range[1].range_name
    subnet_gke_avanuv_pub_stg_gke_us_ce1_a1_name_services_range = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_a1.secondary_ip_range[0].range_name
    subnet_gke_avanuv_pub_stg_gke_us_ce1_a1_name_pod_range      = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_a1.secondary_ip_range[1].range_name
    subnet_gke_shrd_pri_stg_gke_us_ce1_a1_name_services_range   = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_a1.secondary_ip_range[0].range_name
    subnet_gke_shrd_pri_stg_gke_us_ce1_a1_name_pod_range        = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_a1.secondary_ip_range[1].range_name
    subnet_gke_shrd_pub_stg_gke_us_ce1_a1_name_services_range   = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_a1.secondary_ip_range[0].range_name
    subnet_gke_shrd_pub_stg_gke_us_ce1_a1_name_pod_range        = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_a1.secondary_ip_range[1].range_name
  })
  filename = "../../local/stg_gke_subnets_us_central1-a.json"
}

################### STG GKE NETWORKS - US CENTRAL1 B ###################

# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pri_stg_gke_us_ce1_b1" {
  name          = var.subnet_gke_weava_pri_stg_gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-c zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_weava_pri_stg_gke_us_ce1_b1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer

  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.weava_pri_stg_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.weava_pri_stg_gke_us_ce1_b1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pri_stg_gke_us_ce1_b1" {
  value = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_b1.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pub_stg_gke_us_ce1_b1" {
  name          = var.subnet_gke_weava_pub_stg_gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_weava_pub_stg_gke_us_ce1_b1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.weava_pub_stg_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.weava_pub_stg_gke_us_ce1_b1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pub_stg_gke_us_ce1_b1" {
  value = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_b1.self_link
}

# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_avanuv_pri_stg_gke_us_ce1_b1" {
  name          = var.subnet_gke_avanuv_pri_stg_gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_avanuv_pri_stg_gke_us_ce1_b1idr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.avanuv_pri_stg_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.avanuv_pri_stg_gke_us_ce1_b1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_applicationstg_gke_us_ce1_b1" {
  value = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_b1.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_b1" {
  name          = var.subnet_gke_avanuv_pub_stg_gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_avanuv_pub_stg_gke_us_ce1_b1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.avanuv_pub_stg_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.avanuv_pub_stg_gke_us_ce1_b1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_b1" {
  value = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_b1.name
}

# Create a private google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_b1" {
  name          = var.subnet_gke_shrd_pri_stg_gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_shrd_pri_stg_gke_us_ce1_b1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.shrd_pri_stg_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.shrd_pri_stg_gke_us_ce1_b1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_b1" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_b1.self_link
}

# Create a public VPC Subnetwork for GKE 
resource "google_compute_subnetwork" "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_b1" {
  name = var.subnet_gke_shrd_pub_stg_gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_shrd_pub_stg_gke_us_ce1_b1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.shrd_pub_stg_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.shrd_pub_stg_gke_us_ce1_b1_secondary_range_pods
  }
}

output "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_b1_self_link" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_b1.self_link
}
output "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_b1_service_range" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_b1.secondary_ip_range[0].range_name
}
output "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_b1_pod_range" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_b1.secondary_ip_range[1].range_name
} 

######################################################
# Create Output Files to reuse generated information #
######################################################
resource "local_file" "export_subnet_stg_gke_us_ce1_b1" {
  content = jsonencode({
    subnet_gke_weava_pri_stg_gke_us_ce1_b1_name       = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_b1.self_link
    subnet_gke_weava_pub_stg_gke_us_ce1_b1_name       = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_b1.self_link
    subnet_gke_avanuv_pri_stg_gke_us_ce1_b1_name      = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_b1.self_link
    subnet_gke_avanuv_pub_stg_gke_us_ce1_b1_name      = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_b1.self_link
    subnet_gke_shrd_pri_stg_gke_us_ce1_b1_name        = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_b1.self_link
    subnet_gke_shrd_pub_stg_gke_us_ce1_b1_name        = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_b1.id

    subnet_gke_weava_pri_stg_gke_us_ce1_b1_name_services_range  = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_b1.secondary_ip_range[0].range_name
    subnet_gke_weava_pri_stg_gke_us_ce1_b1_name_pod_range       = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_b1.secondary_ip_range[1].range_name
    subnet_gke_weava_pub_stg_gke_us_ce1_b1_name_services_range  = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_b1.secondary_ip_range[0].range_name
    subnet_gke_weava_pub_stg_gke_us_ce1_b1_name_pod_range       = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_b1.secondary_ip_range[1].range_name
    subnet_gke_avanuv_pri_stg_gke_us_ce1_b1_name_services_range = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_b1.secondary_ip_range[0].range_name
    subnet_gke_avanuv_pri_stg_gke_us_ce1_b1_name_pod_range      = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_b1.secondary_ip_range[1].range_name
    subnet_gke_avanuv_pub_stg_gke_us_ce1_b1_name_services_range = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_b1.secondary_ip_range[0].range_name
    subnet_gke_avanuv_pub_stg_gke_us_ce1_b1_name_pod_range      = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_b1.secondary_ip_range[1].range_name
    subnet_gke_shrd_pri_stg_gke_us_ce1_b1_name_services_range   = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_b1.secondary_ip_range[0].range_name
    subnet_gke_shrd_pri_stg_gke_us_ce1_b1_name_pod_range        = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_b1.secondary_ip_range[1].range_name
    subnet_gke_shrd_pub_stg_gke_us_ce1_b1_name_services_range   = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_b1.secondary_ip_range[0].range_name
    subnet_gke_shrd_pub_stg_gke_us_ce1_b1_name_pod_range        = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_b1.secondary_ip_range[1].range_name
  })
  filename = "../../local/stg_gke_subnets_us_central1-b.json"
}

################### STG GKE NETWORKS - US CENTRAL1 C ###################

# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pri_stg_gke_us_ce1_c1" {
  name          = var.subnet_gke_weava_pri_stg_gke_us_ce1_c1_name
  description   = "Subnet for use of GKE from us-central1-c zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_weava_pri_stg_gke_us_ce1_c1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer

  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.weava_pri_stg_gke_us_ce1_c1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.weava_pri_stg_gke_us_ce1_c1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pri_stg_gke_us_ce1_c1" {
  value = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_c1.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pub_stg_gke_us_ce1_c1" {
  name          = var.subnet_gke_weava_pub_stg_gke_us_ce1_c1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_weava_pub_stg_gke_us_ce1_c1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.weava_pub_stg_gke_us_ce1_c1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.weava_pub_stg_gke_us_ce1_c1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pub_stg_gke_us_ce1_c1" {
  value = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_c1.self_link
}

# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_avanuv_pri_stg_gke_us_ce1_c1" {
  name          = var.subnet_gke_avanuv_pri_stg_gke_us_ce1_c1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_avanuv_pri_stg_gke_us_ce1_c1idr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.avanuv_pri_stg_gke_us_ce1_c1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.avanuv_pri_stg_gke_us_ce1_c1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_applicationstg_gke_us_ce1_c1" {
  value = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_c1.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_c1" {
  name          = var.subnet_gke_avanuv_pub_stg_gke_us_ce1_c1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_avanuv_pub_stg_gke_us_ce1_c1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.avanuv_pub_stg_gke_us_ce1_c1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.avanuv_pub_stg_gke_us_ce1_c1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_c1" {
  value = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_c1.name
}

# # Create a private google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_c1" {
  name          = var.subnet_gke_shrd_pri_stg_gke_us_ce1_c1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_shrd_pri_stg_gke_us_ce1_c1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.shrd_pri_stg_gke_us_ce1_c1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.shrd_pri_stg_gke_us_ce1_c1_secondary_range_pods
  }

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_c1" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_c1.self_link
}

# Create a public VPC Subnetwork for GKE 
resource "google_compute_subnetwork" "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_c1" {
  name = var.subnet_gke_shrd_pub_stg_gke_us_ce1_c1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_shrd_pub_stg_gke_us_ce1_c1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.shrd_pub_stg_gke_us_ce1_c1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.shrd_pub_stg_gke_us_ce1_c1_secondary_range_pods
  }
}

output "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_c1_self_link" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_c1.self_link
}
output "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_c1_service_range" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_c1.secondary_ip_range[0].range_name
}
output "gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_c1_pod_range" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_c1.secondary_ip_range[1].range_name
} 

######################################################
# Create Output Files to reuse generated information #
######################################################
resource "local_file" "export_subnetstg_gke_us_ce1_c1" {
  content = jsonencode({
    subnet_gke_weava_pri_stg_gke_us_ce1_c1_name       = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_c1.self_link
    subnet_gke_weava_pub_stg_gke_us_ce1_c1_name       = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_c1.self_link
    subnet_gke_avanuv_pri_stg_gke_us_ce1_c1_name      = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_c1.self_link
    subnet_gke_avanuv_pub_stg_gke_us_ce1_c1_name      = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_c1.self_link
    subnet_gke_shrd_pri_stg_gke_us_ce1_c1_name        = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_c1.self_link
    subnet_gke_shrd_pub_stg_gke_us_ce1_c1_name        = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_c1.id

    subnet_gke_weava_pri_stg_gke_us_ce1_c1_name_services_range  = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_c1.secondary_ip_range[0].range_name
    subnet_gke_weava_pri_stg_gke_us_ce1_c1_name_pod_range       = google_compute_subnetwork.subnet_avantia_weava_pri_stg_gke_us_ce1_c1.secondary_ip_range[1].range_name
    subnet_gke_weava_pub_stg_gke_us_ce1_c1_name_services_range  = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_c1.secondary_ip_range[0].range_name
    subnet_gke_weava_pub_stg_gke_us_ce1_c1_name_pod_range       = google_compute_subnetwork.subnet_avantia_weava_pub_stg_gke_us_ce1_c1.secondary_ip_range[1].range_name
    subnet_gke_avanuv_pri_stg_gke_us_ce1_c1_name_services_range = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_c1.secondary_ip_range[0].range_name
    subnet_gke_avanuv_pri_stg_gke_us_ce1_c1_name_pod_range      = google_compute_subnetwork.subnet_avantia_avanuv_pri_stg_gke_us_ce1_c1.secondary_ip_range[1].range_name
    subnet_gke_avanuv_pub_stg_gke_us_ce1_c1_name_services_range = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_c1.secondary_ip_range[0].range_name
    subnet_gke_avanuv_pub_stg_gke_us_ce1_c1_name_pod_range      = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_stg_gke_us_ce1_c1.secondary_ip_range[1].range_name
    subnet_gke_shrd_pri_stg_gke_us_ce1_c1_name_services_range   = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_c1.secondary_ip_range[0].range_name
    subnet_gke_shrd_pri_stg_gke_us_ce1_c1_name_pod_range        = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_stg_gke_us_ce1_c1.secondary_ip_range[1].range_name
    subnet_gke_shrd_pub_stg_gke_us_ce1_c1_name_services_range   = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_c1.secondary_ip_range[0].range_name
    subnet_gke_shrd_pub_stg_gke_us_ce1_c1_name_pod_range        = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_stg_gke_us_ce1_c1.secondary_ip_range[1].range_name
  })
  filename = "../../local/stg_gke_subnets_us_central1-c.json"
}

################# STG GCE's NETWORK SETTINGS FROM US CENTRAL1 A #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_gce_pri_cea" {
  name          = var.subnet_stg_gce_pri_cea_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_gce_pri_cea_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_gce_pri_cea_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pri_cea.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_gce_pub_cea" {
  name          = var.subnet_stg_gce_pub_cea_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_gce_pub_cea_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_gce_pub_cea_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pub_cea.self_link
}

resource "local_file" "export_stg_gce_subnets_cea" {
  content = jsonencode({
    subnet_stg_gce_pri_cea_name     = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pri_cea.self_link
    subnet_stg_gce_pub_cea_name     = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pub_cea.self_link
  })
  filename = "../../local/stg_gce_subnets_us_central1-a.json"
}

################# STG GCE's NETWORK SETTINGS FROM US CENTRAL1 B #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_gce_pri_ceb" {
  name          = var.subnet_stg_gce_pri_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_gce_pri_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_gce_pri_ceb_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pri_ceb.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_gce_pub_ceb" {
  name          = var.subnet_stg_gce_pub_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_gce_pub_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_gce_pub_ceb_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pub_ceb.self_link
}

resource "local_file" "export_stg_gce_subnets_ceb" {
  content = jsonencode({
    subnet_stg_gce_pri_ceb_name       = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pri_ceb.self_link
    subnet_stg_gce_pub_ceb_name       = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pub_ceb.self_link
  })
  filename = "../../local/stg_gce_subnets_us_central1-b.json"
}

################# STG GCE's NETWORK SETTINGS FROM US CENTRAL1 C #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_gce_pri_cec" {
  name          = var.subnet_stg_gce_pri_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_gce_pri_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_gce_pri_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pri_cec.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_gce_pub_cec" {
  name          = var.subnet_stg_gce_pub_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_gce_pub_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_gce_pub_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pub_cec.self_link
}

resource "local_file" "export_stg_gce_subnets_cec" {
  content = jsonencode({
    subnet_stg_gce_pri_cec_name       = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pri_cec.self_link
    subnet_stg_gce_pub_cec_name       = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_gce_pub_cec.self_link
  })
  filename = "../../local/stg_gce_subnets_us_central1-c.json"
}

################# STG ENDPOINTS AND SVCS's NETWORK SETTINGS FROM US CENTRAL1 A #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_end_svc_pri_cea" {
  name          = var.subnet_stg_end_svc_pri_cea_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_end_svc_pri_cea_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_end_svc_pri_cea_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pri_cea.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_end_svc_pub_cea" {
  name          = var.subnet_stg_end_svc_pub_cea_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_end_svc_pub_cea_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_end_svc_pub_cea_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pub_cea.self_link
}

resource "local_file" "export_stg_end_svc_subnets_cea" {
  content = jsonencode({
    subnet_stg_end_svc_pri_cea_name     = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pri_cea.self_link
    subnet_stg_end_svc_pub_cea_name     = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pub_cea.self_link
  })
  filename    = "../../local/stg_end_svc_subnets_us_central1-a.json"
}


################# STG ENDPOINTS AND SVCS's NETWORK SETTINGS FROM US CENTRAL1 B #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_end_svc_pri_ceb" {
  name          = var.subnet_stg_end_svc_pri_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_end_svc_pri_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_end_svc_pri_ceb_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pri_ceb.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_end_svc_pub_ceb" {
  name          = var.subnet_stg_end_svc_pub_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_end_svc_pub_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_end_svc_pub_ceb_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pub_ceb.self_link
}

resource "local_file" "export_stg_end_svc_subnets_ceb" {
  content = jsonencode({
    subnet_stg_end_svc_pri_ceb_name   = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pri_ceb.self_link
    subnet_stg_end_svc_pub_ceb_name   = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pub_ceb.self_link
  })
  filename = "../../local/stg_end_svc_subnets_us_central1-b.json"
}

################# STG ENDPOINTS AND SVCS's NETWORK SETTINGS FROM US CENTRAL1 C #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_end_svc_pri_cec" {
  name          = var.subnet_stg_end_svc_pri_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_end_svc_pri_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_end_svc_pri_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pri_cec.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_end_svc_pub_cec" {
  name          = var.subnet_stg_end_svc_pub_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_end_svc_pub_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_end_svc_pub_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pub_cec.self_link
}

resource "local_file" "export_stg_end_svc_subnets_cec" {
  content = jsonencode({
    subnet_stg_end_svc_pri_cec_name   = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pri_cec.self_link
    subnet_stg_end_svc_pub_cec_name   = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_end_svc_pub_cec.self_link
  })
  filename = "../../local/stg_end_svc_subnets_us_central1-c.json"
}


################# STG VPN PEER SRVCS's NETWORK SETTINGS FROM US CENTRAL1 A #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_cea" {
  name          = var.subnet_stg_vpn_peer_srvcs_pub_cea_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_vpn_peer_srvcs_pub_cea_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_cea_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_cea.self_link
}

resource "local_file" "export_stg_vpn_peer_srvcs_subnets_cea" {
  content = jsonencode({
    subnet_stg_vpn_peer_srvcs_pub_cea_name    = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_cea.self_link
  })
  filename = "../../local/stg_vpn_peer_srvcs_subnets_us_central1-a.json"
}


################# STG VPN PEER SRVCS's NETWORK SETTINGS FROM US CENTRAL1 B #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_ceb" {
  name          = var.subnet_stg_vpn_peer_srvcs_pub_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_vpn_peer_srvcs_pub_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_ceb_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_ceb.self_link
}

resource "local_file" "export_stg_vpn_peer_srvcs_subnets_ceb" {
  content = jsonencode({
    subnet_stg_vpn_peer_srvcs_pub_ceb_name    = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_ceb.self_link
  })
  filename =  "../../local/stg_vpn_peer_srvcs_subnets_us_central1-b.json"
}

################# STG VPN PEER SRVCS's NETWORK SETTINGS FROM US CENTRAL1 C #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_cec" {
  name          = var.subnet_stg_vpn_peer_srvcs_pub_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_vpn_peer_srvcs_pub_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_cec.self_link
}

resource "local_file" "export_stg_vpn_peer_srvcs_subnets_cec" {
  content = jsonencode({
    subnet_stg_vpn_peer_srvcs_pub_cec_name    = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_vpn_peer_srvcs_pub_cec.self_link
  })
  filename = "../../local/stg_vpn_peer_srvcs_subnets_us_central1-c.json"
}


################# STG NAT GATEWAY's NETWORK SETTINGS FROM US CENTRAL1 A #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_nat_gtw_pub_cea" {
  name          = var.subnet_stg_nat_gtw_pub_cea_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_nat_gtw_pub_cea_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_nat_gtw_pub_cea_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_nat_gtw_pub_cea.self_link
}

resource "local_file" "export_stg_nat_gtw_subnets_cea" {
  content = jsonencode({
    subnet_stg_nat_gtw_pub_cea_name   = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_nat_gtw_pub_cea.self_link
  })
  filename = "../../local/stg_nat_gtw_subnets_us_central1-a.json"
}


################# STG NAT GATEWAY's NETWORK SETTINGS FROM US CENTRAL1 B #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_nat_gtw_pub_ceb" {
  name          = var.subnet_stg_nat_gtw_pub_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_nat_gtw_pub_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_nat_gtw_pub_ceb_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_nat_gtw_pub_ceb.self_link
}

resource "local_file" "export_stg_nat_gtw_subnets_ceb" {
  content = jsonencode({
    subnet_stg_nat_gtw_pub_ceb_name   = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_nat_gtw_pub_ceb.self_link
  })
  filename = "../../local/stg_nat_gtw_subnets_us_central1-b.json"
}

################ STG NAT GATEWAY's NETWORK SETTINGS FROM US CENTRAL1 C #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_stg_nat_gtw_pub_cec" {
  name          = var.subnet_stg_nat_gtw_pub_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_stg_nat_gtw_pub_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = local.lab_shared_vpc.avantia_vpc_id

  # depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_stg_nat_gtw_pub_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_nat_gtw_pub_cec.self_link
}

resource "local_file" "export_stg_nat_gtw_subnets_cec" {
  content = jsonencode({
    subnet_stg_nat_gtw_pub_cec_name   = google_compute_subnetwork.shared_vpc_subnet_avantia_stg_nat_gtw_pub_cec.self_link
  })
  filename = "../../local/stg_nat_gtw_subnets_us_central1-c.json"
}
# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pri" {
  name          = var.subnet_gke_weava_pri_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_weava_pri_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer

  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.weava_pri_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.weava_pri_secondary_range_pods
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pri" {
  value = google_compute_subnetwork.subnet_avantia_weava_pri.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pub" {
  name          = var.subnet_gke_weava_pub_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_weava_pub_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.weava_pub_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.weava_pub_secondary_range_pods
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pub" {
  value = google_compute_subnetwork.subnet_avantia_weava_pub.self_link
}


# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_avanuv_pri" {
  name          = var.subnet_gke_avanuv_pri_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_avanuv_pri_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.avanuv_pri_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.avanuv_pri_secondary_range_pods
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_application" {
  value = google_compute_subnetwork.subnet_avantia_avanuv_pri.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avanuv_pub" {
  name          = var.subnet_gke_avanuv_pub_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_avanuv_pub_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.avanuv_pub_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.avanuv_pub_secondary_range_pods
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avanuv_pub" {
  value = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub.name
}


# # Create a private google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_shrd_pri" {
  name          = var.subnet_gke_shrd_pri_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_shrd_pri_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.shrd_pri_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.shrd_pri_secondary_range_pods
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_shrd_pri" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri.self_link
}

# Create a public VPC Subnetwork for GKE 
resource "google_compute_subnetwork" "gke_vpc_subnet_shrd_pub" {
  name = var.subnet_gke_shrd_pub_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_shrd_pub_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.shrd_pub_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.shrd_pub_secondary_range_pods
  }
}

output "gke_vpc_subnet_shrd_pub_self_link" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub.self_link
}
output "gke_vpc_subnet_shrd_pub_service_range" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub.secondary_ip_range[0].range_name
}
output "gke_vpc_subnet_shrd_pub_pod_range" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub.secondary_ip_range[1].range_name
} 

########################################################
# Create a Output Files to reuse generated information #
########################################################
resource "local_file" "export_subnet" {
  content = jsonencode({
    subnet_gke_weava_pri_name       = google_compute_subnetwork.subnet_avantia_weava_pri.self_link
    subnet_gke_weava_pub_name       = google_compute_subnetwork.subnet_avantia_weava_pub.self_link
    subnet_gke_avanuv_pri_name      = google_compute_subnetwork.subnet_avantia_avanuv_pri.self_link
    subnet_gke_avanuv_pub_name      = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub.self_link
    subnet_gke_shrd_pri_name        = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri.self_link
    subnet_gke_shrd_pub_name        = google_compute_subnetwork.gke_vpc_subnet_shrd_pub.id
    gke_vpc_subnet_shrd_pub_services_range   = google_compute_subnetwork.gke_vpc_subnet_shrd_pub.secondary_ip_range[0].range_name
    gke_vpc_subnet_shrd_pub_pod_range        = google_compute_subnetwork.gke_vpc_subnet_shrd_pub.secondary_ip_range[1].range_name
  })
  filename = "../local/subnets.json"
}

########################################################################## END OF NETWORKS FOR USE OF GKE FROM US-CENTRAL1-A   ##########################################################################
########################################################################## START OF NETWORKS FOR USE OF GKE FROM US-CENTRAL1-B ##########################################################################


# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pri_gke_us_ce1_b1" {
  name          = var.subnet_gke_weava_pri_gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_weava_pri_gke_us_ce1_b1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer

  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.weava_pri_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.weava_pri_gke_us_ce1_b1_secondary_range_pods
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pri_gke_us_ce1_b1" {
  value = google_compute_subnetwork.subnet_avantia_weava_pri_gke_us_ce1_b1.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pub_gke_us_ce1_b1" {
  name          = var.subnet_gke_weava_pub__gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_weava_pub_gke_us_ce1_b1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.weava_pub_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.weava_pub_gke_us_ce1_b1_secondary_range_pods
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pub_gke_us_ce1_b1" {
  value = google_compute_subnetwork.subnet_avantia_weava_pub_gke_us_ce1_b1.self_link
}


# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_avanuv_pri_gke_us_ce1_b1" {
  name          = var.subnet_gke_avanuv_pri_gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_avanuv_pri_gke_us_ce1_b1idr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.avanuv_pri_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.avanuv_pri_gke_us_ce1_b1_secondary_range_pods
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_application_gke_us_ce1_b1" {
  value = google_compute_subnetwork.subnet_avantia_avanuv_pri_gke_us_ce1_b1.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avanuv_pub_gke_us_ce1_b1" {
  name          = var.subnet_gke_avanuv_pub_gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_avanuv_pub_gke_us_ce1_b1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.avanuv_pub_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.avanuv_pub_gke_us_ce1_b1_secondary_range_pods
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avanuv_pub_gke_us_ce1_b1" {
  value = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_gke_us_ce1_b1.name
}


# # Create a private google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_shrd_pri_gke_us_ce1_b1" {
  name          = var.subnet_gke_shrd_pri_gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_shrd_pri_gke_us_ce1_b1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.shrd_pri_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.shrd_pri_gke_us_ce1_b1_secondary_range_pods
  }

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_subnet_avantia_shrd_pri_gke_us_ce1_b1" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_gke_us_ce1_b1.self_link
}

# Create a public VPC Subnetwork for GKE 
resource "google_compute_subnetwork" "gke_vpc_subnet_shrd_pub_gke_us_ce1_b1" {
  name = var.subnet_gke_shrd_pub_gke_us_ce1_b1_name
  description   = "Subnet for use of GKE from us-central1-b zone"
  project = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_gke_shrd_pub_gke_us_ce1_b1_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_dev.id
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.shrd_pub_gke_us_ce1_b1_secondary_range_services
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = var.shrd_pub_gke_us_ce1_b1_secondary_range_pods
  }
}

output "gke_vpc_subnet_shrd_pub_gke_us_ce1_b1_self_link" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_gke_us_ce1_b1.self_link
}
output "gke_vpc_subnet_shrd_pub_gke_us_ce1_b1_service_range" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_gke_us_ce1_b1.secondary_ip_range[0].range_name
}
output "gke_vpc_subnet_shrd_pub_gke_us_ce1_b1_pod_range" {
  value = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_gke_us_ce1_b1.secondary_ip_range[1].range_name
} 

########################################################
# Create a Output Files to reuse generated information #
########################################################
resource "local_file" "export_subnet_gke_us_ce1_b1" {
  content = jsonencode({
    subnet_gke_weava_pri_gke_us_ce1_b1_name       = google_compute_subnetwork.subnet_avantia_weava_pri_gke_us_ce1_b1.self_link
    subnet_gke_weava_pub__gke_us_ce1_b1_name      = google_compute_subnetwork.subnet_avantia_weava_pub_gke_us_ce1_b1.self_link
    subnet_gke_avanuv_pri_gke_us_ce1_b1_name      = google_compute_subnetwork.subnet_avantia_avanuv_pri_gke_us_ce1_b1.self_link
    subnet_gke_avanuv_pub_gke_us_ce1_b1_name      = google_compute_subnetwork.shared_vpc_subnet_avanuv_pub_gke_us_ce1_b1.self_link
    subnet_gke_shrd_pri_gke_us_ce1_b1_name        = google_compute_subnetwork.shared_vpc_subnet_avantia_shrd_pri_gke_us_ce1_b1.self_link
    subnet_gke_shrd_pub_gke_us_ce1_b1_name        = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_gke_us_ce1_b1.id
    gke_vpc_subnet_shrd_pub__gke_us_ce1_b1_services_range   = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_gke_us_ce1_b1.secondary_ip_range[0].range_name
    gke_vpc_subnet_shrd_pub__gke_us_ce1_b1_pod_range        = google_compute_subnetwork.gke_vpc_subnet_shrd_pub_gke_us_ce1_b1.secondary_ip_range[1].range_name
  })
  filename = "../local/subnets_gke_us_ce1_b1.json"
}
# # Create a private google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_box_pri_cea" {
  name          = var.subnet_prd_gke_box_pri_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_box_pri_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_box_pri_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_box_pri_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_box_pri_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_box_pri_cea.self_link
}


# Create a private google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_weava_pri_cea" {
  name          = var.subnet_prd_gke_weava_pri_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_weava_pri_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_weava_pri_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_weava_pri_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_weava_pri_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pri_cea.self_link
}


# Create a private google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_classifiers_pri_cea" {
  name          = var.subnet_prd_gke_classifiers_pri_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_classifiers_pri_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_classifiers_pri_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_classifiers_pri_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_classifiers_pri_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_classifiers_pri_cea.self_link
}


# Create a private google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_srvcs_pri_cea" {
  name          = var.subnet_prd_gke_srvcs_pri_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_srvcs_pri_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_srvcs_pri_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_srvcs_pri_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_srvcs_pri_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_srvcs_pri_cea.self_link
}

############################ END OF SUBNETS FOR USE OF GKE FROM US CENTRAL1-A ############################
############################ START OF SUBNETS FOR USE OF GKE FROM US CENTRAL1-B ##########################

# Create a private google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_box_pri_ceb" {
  name          = var.subnet_prd_gke_box_pri_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_box_pri_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_box_pri_ceb_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_box_pri_ceb_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_box_pri_ceb_ceb" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_box_pri_ceb.self_link
}


# Create a private google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_classifiers_pri_ceb" {
  name          = var.subnet_prd_gke_classifiers_pri_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_classifiers_pri_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_classifiers_pri_ceb_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_classifiers_pri_ceb_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_classifiers_pri_ceb_ceb" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_classifiers_pri_ceb.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_box_pub_ceb" {
  name          = var.subnet_prd_gke_box_pub_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_box_pub_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_box_pub_ceb_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_box_pub_ceb_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_box_pub_ceb_ceb" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_box_pub_ceb.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_weava_pri_ceb" {
  name          = var.subnet_prd_gke_weava_pri_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_weava_pri_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_weava_pri_ceb_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_weava_pri_ceb_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_weava_pri_ceb_ceb" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pri_ceb.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_weava_pub_ceb" {
  name          = var.subnet_prd_gke_weava_pub_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_weava_pub_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_weava_pub_ceb_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_weava_pub_ceb_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_weava_pub_ceb_ceb" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pub_ceb.self_link
}

############################ END OF SUBNETS FOR USE OF GKE FROM US CENTRAL1-B ############################
############################ START OF SUBNETS FOR USE OF GKE FROM US CENTRAL1-C ##########################


# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_box_pri_cec" {
  name          = var.subnet_prd_gke_box_pri_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_box_pri_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_box_pri_cec_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_box_pri_cec_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_box_pri_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_box_pri_cec.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_classifiers_pri_cec" {
  name          = var.subnet_prd_gke_classifiers_pri_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_classifiers_pri_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_classifiers_pri_cec_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_classifiers_pri_cec_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_classifiers_pri_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_classifiers_pri_cec.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_box_pub_cec" {
  name          = var.subnet_prd_gke_box_pub_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_box_pub_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_box_pub_cec_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_box_pub_cec_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_box_pub_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_box_pub_cec.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_weava_pri_cec" {
  name          = var.subnet_prd_gke_weava_pri_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_weava_pri_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_weava_pri_cec_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_weava_pri_cec_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_weava_pri_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pri_cec.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_weava_pri_02_cec" {
  name          = var.subnet_prd_gke_weava_pri_02_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_weava_pri_02_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_weava_pri_02_cec_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_weava_pri_02_cec_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_weava_pri_02_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pri_02_cec.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gke_weava_pub_cec" {
  name          = var.subnet_prd_gke_weava_pub_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gke_weava_pub_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id
  secondary_ip_range {
    range_name    = "prd-services-range"
    ip_cidr_range = var.subnet_prd_gke_weava_pub_cec_name_cidr_services_range
  }

  secondary_ip_range {
    range_name    = "prd-pod-ranges"
    ip_cidr_range = var.subnet_prd_gke_weava_pub_cec_name_cidr_pods_range
  }

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gke_weava_pub_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pub_cec.self_link
}

################# PROD GCE's NETWORK SETTINGS FROM US CENTRAL1 A #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gce_pri_cea" {
  name          = var.subnet_prd_gce_pri_cea_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gce_pri_cea_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gce_pri_cea_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pri_cea.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gce_pub_cea" {
  name          = var.subnet_prd_gce_pub_cea_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gce_pub_cea_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gce_pub_cea_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pub_cea.self_link
}

################# PROD GCE's NETWORK SETTINGS FROM US CENTRAL1 B #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gce_pri_ceb" {
  name          = var.subnet_prd_gce_pri_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gce_pri_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gce_pri_ceb_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pri_ceb.self_link
}


# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gce_pub_ceb" {
  name          = var.subnet_prd_gce_pub_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gce_pub_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gce_pub_ceb_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pub_ceb.self_link
}

################# PROD GCE's NETWORK SETTINGS FROM US CENTRAL1 C #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gce_pri_cec" {
  name          = var.subnet_prd_gce_pri_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gce_pri_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gce_pri_cec_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pri_cec.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_gce_pub_cec" {
  name          = var.subnet_prd_gce_pub_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_gce_pub_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_gce_pub_cec_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pub_cec.self_link
}


################# PROD ENDPOINTS AND SERVICES SETTINGS FROM US CENTRAL1 A #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_pub_end_svc_cea" {
  name          = var.subnet_prd_pub_end_svc_cea_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_pub_end_svc_cea_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_pub_end_svc_cea_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_end_svc_cea.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_pri_end_svc_cea" {
  name          = var.subnet_prd_pri_end_svc_cea_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_pri_end_svc_cea_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_pri_end_svc_cea_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_pri_end_svc_cea.self_link
}

################# PROD ENDPOINTS AND SERVICES SETTINGS FROM US CENTRAL1 B #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_pub_end_svc_ceb" {
  name          = var.subnet_prd_pub_end_svc_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_pub_end_svc_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_pub_end_svc_ceb_ceb" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_end_svc_ceb.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_pri_end_svc_ceb" {
  name          = var.subnet_prd_pri_end_svc_ceb_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_pri_end_svc_ceb_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_pri_end_svc_ceb_ceb" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_pri_end_svc_ceb.self_link
}

################# PROD ENDPOINTS AND SERVICES SETTINGS FROM US CENTRAL1 C #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_pri_end_svc_cec" {
  name          = var.subnet_prd_pri_end_svc_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_pri_end_svc_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_pri_end_svc_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_pri_end_svc_cec.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_pub_end_svc_cec" {
  name          = var.subnet_prd_pub_end_svc_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_pub_end_svc_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_pub_end_svc_cec_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_end_svc_cec.self_link
}



################# PROD VPN PEER SERVICES SETTINGS FROM US CENTRAL1 A #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_pub_vpn_peer_srvcs" {
  name          = var.subnet_prd_pub_vpn_peer_srvcs_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_pub_vpn_peer_srvcs_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_pub_vpn_peer_srvcs_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_vpn_peer_srvcs.self_link
}

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_pub_nat_gtw" {
  name          = var.subnet_prd_pri_nat_gtw_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_pri_nat_gtw_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_pri_nat_gtw_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_nat_gtw.self_link
}

################# PROD NAT GATEWAY SETTINGS FROM US CENTRAL1 B #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_pub_nat_gtw_ceb" {
  name          = var.subnet_prd_pub_nat_gtw_name_ceb
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_pub_nat_gtw_name_ceb_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_pub_nat_gtw_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_nat_gtw_ceb.self_link
}


################# PROD VPN PEER SERVICES AND NAT GATEWAY SETTINGS FROM US CENTRAL1 C #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_pub_vpn_peer_srvcs_cec" {
  name          = var.subnet_prd_pub_vpn_peer_srvcs_cec_name
  description   = "Subnet for use of GKE from us-central1-a zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_pub_vpn_peer_srvcs_cec_name_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_pub_vpn_peer_srvcs_cec_cea" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_vpn_peer_srvcs_cec.self_link
}


################# PROD NAT GATEWAY SETTINGS FROM US CENTRAL1 C #################

# Create a public google vpc subnet
resource "google_compute_subnetwork" "shared_vpc_subnet_avantia_pub_nat_gtw_cec" {
  name          = var.subnet_prd_pub_nat_gtw_name_cec
  description   = "Subnet for use of GKE from us-central1-b zone"
  project       = local.avantia_host_project.host_project_name
  ip_cidr_range = var.subnet_prd_pub_nat_gtw_name_cec_cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  # ipv6_access_type = "INTERNAL" 
  # Change to "EXTERNAL" if creating an external loadbalancer
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_subnet_avantia_pub_nat_gtw_cec" {
  value = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_nat_gtw_cec.self_link
}




######################################################
# Create Output Files to reuse generated information #
######################################################
resource "local_file" "export_subnet_gke_box_pri_name" {
  content = jsonencode({
    subnet_gke_box_pri_name = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_box_pri_cea.self_link
    subnet_gke_weava_pri_name = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pri_cea.self_link
    subnet_gke_classifiers_pri_name = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_classifiers_pri_cea.self_link
    subnet_prd_gke_srvcs_pri_name   = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_srvcs_pri_cea.self_link
    subnet_prd_gke_box_pri_ceb_name = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_box_pri_ceb.self_link
    subnet_prd_gke_classifiers_pri_ceb_name = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_classifiers_pri_ceb.self_link
    subnet_prd_gke_box_pub_ceb_name         = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_box_pub_ceb.self_link
    subnet_prd_gke_weava_pri_ceb_name       = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pri_ceb.self_link
    subnet_prd_gke_weava_pub_ceb_name       = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pub_ceb.self_link
    subnet_prd_gke_box_pri_cec_name         = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_box_pri_cec.self_link
    subnet_prd_gke_classifiers_pri_cec_name = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_classifiers_pri_cec.self_link
    subnet_prd_gke_box_pub_cec_name         = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_box_pub_cec.self_link
    subnet_prd_gke_weava_pri_cec_name       = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pri_cec.self_link
    subnet_prd_gke_weava_pri_02_cec_name    = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pri_02_cec.self_link
    subnet_prd_gke_weava_pub_cec_name       = google_compute_subnetwork.shared_vpc_subnet_avantia_gke_weava_pub_cec.self_link

    subnet_prd_gce_pri_cea_name             = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pri_cea.self_link
    subnet_prd_gce_pub_cea_name             = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pub_cea.self_link
    subnet_prd_gce_pri_ceb_name             = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pri_ceb.self_link
    subnet_prd_gce_pub_ceb_name             = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pub_ceb.self_link
    subnet_prd_gce_pri_cec_name             = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pri_cec.self_link
    subnet_prd_gce_pub_cec_name             = google_compute_subnetwork.shared_vpc_subnet_avantia_gce_pub_cec.self_link

    subnet_prd_pub_end_svc_cea_name         = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_end_svc_cea.self_link
    subnet_prd_pri_end_svc_cea_name         = google_compute_subnetwork.shared_vpc_subnet_avantia_pri_end_svc_cea.self_link
    subnet_prd_pub_end_svc_ceb_name         = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_end_svc_ceb.self_link
    subnet_prd_pri_end_svc_ceb_name         = google_compute_subnetwork.shared_vpc_subnet_avantia_pri_end_svc_ceb.self_link
    subnet_prd_pri_end_svc_cec_name         = google_compute_subnetwork.shared_vpc_subnet_avantia_pri_end_svc_cec
    subnet_prd_pub_end_svc_cec_name         = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_end_svc_cec

    subnet_prd_pub_vpn_peer_srvcs_name      = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_vpn_peer_srvcs.self_link
    subnet_prd_pri_nat_gtw_name             = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_nat_gtw.self_link

    subnet_prd_pub_vpn_peer_srvcs_cec_name  = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_vpn_peer_srvcs_cec.self_link
    subnet_prd_pub_nat_gtw_name_cec         = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_nat_gtw_cec.self_link

    subnet_prd_pub_nat_gtw_name_ceb         = google_compute_subnetwork.shared_vpc_subnet_avantia_pub_nat_gtw_ceb.self_link

  })
  filename = "../local/prd_subnets_us_central1-a.json"
}
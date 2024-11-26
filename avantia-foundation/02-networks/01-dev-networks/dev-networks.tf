# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_dev_weava_pri" {
  name          = var.wecloud-dev-node-pools-name
  project       = var.host_project_id
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  purpose = "PRIVATE"

  ip_cidr_range = var.wecloud-dev-node-pools-range
  region        = var.region_id
  
  stack_type       = "IPV4_ONLY"

  network = google_compute_network.vpc_network_avantia_dev.self_link
  
  secondary_ip_range {
    range_name    = var.weava-dev-default-services-name
    ip_cidr_range = var.weava-dev-default-services-range
  }
  
  secondary_ip_range {
    range_name    = var.wecloud-dev-default-pods-name
    ip_cidr_range = var.wecloud-dev-default-pods-range
  }
############################### Comentar daqui pra baixo ###############################
  # secondary_ip_range {
  #   range_name    = var.wecloud-dev-app-name
  #   ip_cidr_range = var.wecloud-dev-app-range
  # }

  # secondary_ip_range {
  #   range_name    = var.wecloud-dev-hoint-pods-name
  #   ip_cidr_range = var.wecloud-dev-hoint-pods-range
  # }


  # secondary_ip_range {
  #   range_name    = var.wecloud-dev-box-pods-name
  #   ip_cidr_range = var.wecloud-dev-box-pods-range
  # }

  # secondary_ip_range {
  #   range_name    = var.wecloud-dev-pods-name
  #   ip_cidr_range = var.wecloud-dev-pods-range
  # }
############################### Comentar daqui pra cima ###############################
  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_dev_weava_pri" {
  value = google_compute_subnetwork.subnet_avantia_dev_weava_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_wecloud_dev_pri_gce" {
  name          = var.wecloud-dev-pri-gce-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-dev-pri-gce-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_wecloud_dev_pri_gce" {
  value = google_compute_subnetwork.shared_vpc_wecloud_dev_pri_gce.self_link
}

resource "google_compute_subnetwork" "shared_vpc_wecloud_dev_pub_gce" {
  name          = var.wecloud-dev-pub-gce-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-dev-pub-gce-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_wecloud_dev_pub_gce" {
  value = google_compute_subnetwork.shared_vpc_wecloud_dev_pub_gce.self_link
}

resource "google_compute_subnetwork" "shared_vpc_dev_endpnts_e_svc_pri" {
  name          = var.wecloud-dev-pri-endpoint-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-dev-pri-endpoint-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_dev_endpnts_e_svc_pri" {
  value = google_compute_subnetwork.shared_vpc_dev_endpnts_e_svc_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_dev_endpnts_e_svc_pub" {
  name          = var.wecloud-dev-pub-enpoint-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-dev-pub-enpoint-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_dev_endpnts_e_svc_pub" {
  value = google_compute_subnetwork.shared_vpc_dev_endpnts_e_svc_pub.self_link
}

resource "google_compute_subnetwork" "shared_vpc_dev_functions_pri" {
  name          = var.wecloud-dev-functions-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-dev-functions-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_dev_functions_pri" {
  value = google_compute_subnetwork.shared_vpc_dev_functions_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_dev_cloudsql_pri" {
  name          = var.wecloud-dev-cloudsql-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-dev-cloudsql-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_dev_cloudsql_pri" {
  value = google_compute_subnetwork.shared_vpc_dev_cloudsql_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_dev_vpn_peer_srvcs_pri" {
  name          = var.wecloud-dev-vpn-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-dev-vpn-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_dev_vpn_peer_srvcs_pri" {
  value = google_compute_subnetwork.shared_vpc_dev_vpn_peer_srvcs_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_dev_cluster_control_range_pri" {
  name          = var.subnet_dev_control_name
  project       = var.host_project_id
  ip_cidr_range = var.subnet_dev_control_range
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_dev_cluster_control_range_pri" {
  value = google_compute_subnetwork.shared_vpc_dev_cluster_control_range_pri.self_link
}

############################################## STG NETWORKS ##################################
# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_stg_weava_pri" {
  name          = var.wecloud-stg-node-pools-name
  project       = var.host_project_id
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  purpose = "PRIVATE"

  ip_cidr_range = var.wecloud-stg-node-pools-range
  region        = var.region_id
  
  stack_type       = "IPV4_ONLY"

  network = google_compute_network.vpc_network_avantia_dev.self_link
  
  secondary_ip_range {
    range_name    = var.weava-stg-default-services-name
    ip_cidr_range = var.weava-stg-default-services-range
  }
  
  secondary_ip_range {
    range_name    = var.wecloud-stg-default-pods-name
    ip_cidr_range = var.wecloud-stg-default-pods-range
  }
############################### Comentar daqui pra baixo ###############################
  # secondary_ip_range {
  #   range_name    = var.wecloud-stg-app-name
  #   ip_cidr_range = var.wecloud-stg-app-range
  # }

  # secondary_ip_range {
  #   range_name    = var.wecloud-stg-hoint-pods-name
  #   ip_cidr_range = var.wecloud-stg-hoint-pods-range
  # }


  # secondary_ip_range {
  #   range_name    = var.wecloud-stg-box-pods-name
  #   ip_cidr_range = var.wecloud-stg-box-pods-range
  # }

  # secondary_ip_range {
  #   range_name    = var.wecloud-stg-pods-name
  #   ip_cidr_range = var.wecloud-stg-pods-range
  # }
############################### Comentar daqui pra cima ###############################
  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_stg_weava_pri" {
  value = google_compute_subnetwork.subnet_avantia_stg_weava_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_wecloud_stg_pri_gce" {
  name          = var.wecloud-stg-pri-gce-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-pri-gce-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_wecloud_stg_pri_gce" {
  value = google_compute_subnetwork.shared_vpc_wecloud_stg_pri_gce.self_link
}

resource "google_compute_subnetwork" "shared_vpc_wecloud_stg_pub_gce" {
  name          = var.wecloud-stg-pub-gce-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-pub-gce-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_wecloud_stg_pub_gce" {
  value = google_compute_subnetwork.shared_vpc_wecloud_stg_pub_gce.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_endpnts_e_svc_pri" {
  name          = var.wecloud-stg-pri-endpoint-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-pri-endpoint-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_endpnts_e_svc_pri" {
  value = google_compute_subnetwork.shared_vpc_stg_endpnts_e_svc_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_endpnts_e_svc_pub" {
  name          = var.wecloud-stg-pub-enpoint-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-pub-enpoint-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_endpnts_e_svc_pub" {
  value = google_compute_subnetwork.shared_vpc_stg_endpnts_e_svc_pub.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_functions_pri" {
  name          = var.wecloud-stg-functions-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-functions-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_functions_pri" {
  value = google_compute_subnetwork.shared_vpc_stg_functions_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_cloudsql_pri" {
  name          = var.wecloud-stg-cloudsql-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-cloudsql-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_cloudsql_pri" {
  value = google_compute_subnetwork.shared_vpc_stg_cloudsql_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_vpn_peer_srvcs_pri" {
  name          = var.wecloud-stg-vpn-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-stg-vpn-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_vpn_peer_srvcs_pri" {
  value = google_compute_subnetwork.shared_vpc_stg_vpn_peer_srvcs_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_stg_cluster_control_range_pri" {
  name          = var.subnet_stg_control_name
  project       = var.host_project_id
  ip_cidr_range = var.subnet_stg_control_range
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_dev.id

  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "shared_vpc_stg_cluster_control_range_pri" {
  value = google_compute_subnetwork.shared_vpc_stg_cluster_control_range_pri.self_link
}


########################################  PRD NETWORKS ######################################

# Create a private google vpc subnet
resource "google_compute_subnetwork" "subnet_avantia_weava_pri" {
  name          = var.subnet_cluster_name
  project       = var.host_project_id
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  purpose = "PRIVATE"

  ip_cidr_range = var.wecloud-primary-range
  region        = var.region_id
  
  stack_type       = "IPV4_ONLY"

  network = google_compute_network.vpc_network_avantia_prd.self_link
  
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = var.wecloud-services-range
  }
  
  secondary_ip_range {
    range_name    = "pods-range"
    ip_cidr_range = var.wecloud-pods-range
  }
############################### Comentar daqui pra baixo ###############################
  # secondary_ip_range {
  #   range_name    = "weava-pods-range"
  #   ip_cidr_range = var.weava-pods-range
  # }

  # secondary_ip_range {
  #   range_name    = "wecloud-app-pods-range"
  #   ip_cidr_range = var.wecloud-app-pods-range
  # }


  # secondary_ip_range {
  #   range_name    = "wecloud-classifiers-pods-range"
  #   ip_cidr_range = var.wecloud-classifiers-pods-range
  # }

  # secondary_ip_range {
  #   range_name    = "wecloud-box-pods-range"
  #   ip_cidr_range = var.wecloud-box-pods-range
  # }
############################### Comentar daqui pra cima ###############################
  depends_on = [google_compute_network.vpc_network_avantia_dev]
}
output "subnet_avantia_weava_pri" {
  value = google_compute_subnetwork.subnet_avantia_weava_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_wecloud_pri_gce" {
  name          = var.wecloud-pri-gce-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-pri-gce-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_wecloud_pri_gce" {
  value = google_compute_subnetwork.shared_vpc_wecloud_pri_gce.self_link
}

resource "google_compute_subnetwork" "shared_vpc_wecloud_pub_gce" {
  name          = var.wecloud-pub-gce-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-pub-gce-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_wecloud_pub_gce" {
  value = google_compute_subnetwork.shared_vpc_wecloud_pub_gce.self_link
}

resource "google_compute_subnetwork" "shared_vpc_endpnts_e_svc_pri" {
  name          = var.wecloud-pri-endpoint-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-pri-endpoint-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_endpnts_e_svc_pri" {
  value = google_compute_subnetwork.shared_vpc_endpnts_e_svc_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_endpnts_e_svc_pub" {
  name          = var.wecloud-pub-enpoint-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-pub-endpoint-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = false
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_endpnts_e_svc_pub" {
  value = google_compute_subnetwork.shared_vpc_endpnts_e_svc_pub.self_link
}

resource "google_compute_subnetwork" "shared_vpc_functions_pri" {
  name          = var.wecloud-functions-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-functions-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_functions_pri" {
  value = google_compute_subnetwork.shared_vpc_functions_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_cloudsql_pri" {
  name          = var.wecloud-cloudsql-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-cloudsql-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_cloudsql_pri" {
  value = google_compute_subnetwork.shared_vpc_cloudsql_pri.self_link
}

resource "google_compute_subnetwork" "shared_vpc_vpn_peer_srvcs_pri" {
  name          = var.wecloud-vpn-name
  project       = var.host_project_id
  ip_cidr_range = var.wecloud-vpn-cidr
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_vpn_peer_srvcs_pri" {
  value = google_compute_subnetwork.shared_vpc_vpn_peer_srvcs_pri.self_link
}

# resource "google_compute_subnetwork" "shared_vpc_redis_pri" {
#   name          = var.wecloud-redis-name
#   project       = var.host_project_id
#   ip_cidr_range = var.wecloud-redis-cidr
#   region        = var.region_id
#   stack_type       = "IPV4_ONLY"
#   private_ip_google_access = true
#   network = google_compute_network.vpc_network_avantia_prd.id

#   depends_on = [google_compute_network.vpc_network_avantia_prd]
# }
# output "shared_vpc_redis_pri" {
#   value = google_compute_subnetwork.shared_vpc_redis_pri.self_link
# }
resource "google_compute_subnetwork" "shared_vpc_cluster_control_range_pri" {
  name          = var.subnet_control_name
  project       = var.host_project_id
  ip_cidr_range = var.subnet_control_range
  region        = var.region_id
  stack_type       = "IPV4_ONLY"
  private_ip_google_access = true
  network = google_compute_network.vpc_network_avantia_prd.id

  depends_on = [google_compute_network.vpc_network_avantia_prd]
}
output "shared_vpc_cluster_control_range_pri" {
  value = google_compute_subnetwork.shared_vpc_cluster_control_range_pri.self_link
}
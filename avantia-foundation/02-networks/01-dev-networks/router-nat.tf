resource "google_compute_router" "avantia_router" {
  project = var.host_project_id
  name    = "avantia-router"
  region  = var.region_id
  network = google_compute_network.vpc_network_avantia_dev.id

  bgp {
    asn = 64514
  }
}

resource "google_compute_router_nat" "nat" {
  project = var.host_project_id  
  name                               = "avantia-nat"
  router                             = google_compute_router.avantia_router.name
  region                             = var.region_id
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}
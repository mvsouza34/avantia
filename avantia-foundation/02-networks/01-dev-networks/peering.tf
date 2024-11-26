resource "google_compute_network_peering" "peering_to_prod_vpc" {
  name         = "peering1"
  network      = google_compute_network.vpc_network_avantia_dev.self_link
  peer_network = var.service_vpc_id
}
resource "google_compute_network_peering" "peering_to_lab_vpc" {
  name         = "peering2"
  network      = google_compute_network.vpc_network_avantia_prd.self_link
  peer_network = var.host_vpc_id
}
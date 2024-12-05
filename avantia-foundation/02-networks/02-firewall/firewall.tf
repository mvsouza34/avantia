############################################ EXPORTED SETTINGS #################################################

resource "google_compute_firewall" "allow_full_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  allow {
    protocol = "icmp"
  }
  direction     = "INGRESS"
  name          = "allow-full-ssh"
  network       = var.host_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh-full", "ssh-public"]
}
# terraform import google_compute_firewall.allow_full_ssh projects/avantia-infra-network/global/firewalls/allow-full-ssh
resource "google_compute_firewall" "allow_full_ssh_prd" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  allow {
    protocol = "icmp"
  }
  direction     = "INGRESS"
  name          = "allow-full-ssh-prd"
  network       = var.service_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh-full", "ssh-public"]
}
# terraform import google_compute_firewall.allow_full_ssh_prd projects/avantia-infra-network/global/firewalls/allow-full-ssh-prd
resource "google_compute_firewall" "allow_local_opensearch" {
  allow {
    ports    = ["9200", "9300", "5601"]
    protocol = "tcp"
  }
  allow {
    ports    = ["9200", "9300"]
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  direction     = "INGRESS"
  name          = "allow-local-opensearch"
  network       = var.service_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.242.0.0/16"]
  target_tags   = ["opensearch-local"]
}
# terraform import google_compute_firewall.allow_local_opensearch projects/avantia-infra-network/global/firewalls/allow-local-opensearch
resource "google_compute_firewall" "allow_local_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  allow {
    protocol = "icmp"
  }
  description   = "Default  Local Allow SSH Access\n"
  direction     = "INGRESS"
  name          = "allow-local-ssh"
  network       = var.host_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.243.0.0/16", "35.191.0.0/16", "35.235.240.0/20"]
  target_tags   = ["ssh-local"]
}
# terraform import google_compute_firewall.allow_local_ssh projects/avantia-infra-network/global/firewalls/allow-local-ssh
resource "google_compute_firewall" "allow_local_ssh_prd" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  allow {
    protocol = "icmp"
  }
  description   = "Default Local Allow SSH Access"
  direction     = "INGRESS"
  name          = "allow-local-ssh-prd"
  network       = var.service_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.243.0.0/16", "35.191.0.0/16", "35.235.240.0/20"]
  target_tags   = ["ssh-local"]
}
# terraform import google_compute_firewall.allow_local_ssh_prd projects/avantia-infra-network/global/firewalls/allow-local-ssh-prd
resource "google_compute_firewall" "allow_public_graylog_server" {
  allow {
    ports    = ["12201", "12202", "5555", "514"]
    protocol = "udp"
  }
  allow {
    ports    = ["443", "27017", "12201", "12202", "514", "5601", "5555", "22"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  name          = "allow-public-graylog-server"
  network       = var.service_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["graylog-public"]
}
# terraform import google_compute_firewall.allow_public_graylog_server projects/avantia-infra-network/global/firewalls/allow-public-graylog-server
resource "google_compute_firewall" "allow_public_wowza" {
  allow {
    ports    = ["8086-8089", "80", "443", "554", "1935"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  name          = "allow-public-wowza"
  network       = var.host_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["wowza-public"]
}
# terraform import google_compute_firewall.allow_public_wowza projects/avantia-infra-network/global/firewalls/allow-public-wowza
resource "google_compute_firewall" "allow_public_wowza_prd" {
  allow {
    ports    = ["80", "443", "554", "1935", "8086-8089"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  name          = "allow-public-wowza-prd"
  network       = var.service_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["wowza-public"]
}
# terraform import google_compute_firewall.allow_public_wowza_prd projects/avantia-infra-network/global/firewalls/allow-public-wowza-prd
resource "google_compute_firewall" "allow_reverse_gke" {
  allow {
    ports    = ["8888", "8887"]
    protocol = "tcp"
  }
  allow {
    protocol = "icmp"
  }
  direction     = "INGRESS"
  name          = "allow-reverse-gke"
  network       = var.host_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.243.0.0/16", "35.235.240.0/20"]
  target_tags   = ["reverse-gke"]
}
# terraform import google_compute_firewall.allow_reverse_gke projects/avantia-infra-network/global/firewalls/allow-reverse-gke
resource "google_compute_firewall" "allow_reverse_gke_prd" {
  allow {
    ports    = ["8890"]
    protocol = "tcp"
  }
  allow {
    protocol = "icmp"
  }
  direction     = "INGRESS"
  name          = "allow-reverse-gke-prd"
  network       = var.service_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.242.0.0/16", "35.235.240.0/20"]
  target_tags   = ["reverse-gke"]
}
# terraform import google_compute_firewall.allow_reverse_gke_prd projects/avantia-infra-network/global/firewalls/allow-reverse-gke-prd
resource "google_compute_firewall" "gke_avantia_private_cluster_lab_dev_ee37b29c_all" {
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "sctp"
  }
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-lab-dev-ee37b29c-all"
  network       = var.host_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.243.104.0/21", "10.243.112.0/21", "10.243.128.0/21", "10.243.2.0/24", "10.243.96.0/21"]
  target_tags   = ["gke-avantia-private-cluster-lab-dev-ee37b29c-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_lab_dev_ee37b29c_all projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-lab-dev-ee37b29c-all
resource "google_compute_firewall" "gke_avantia_private_cluster_lab_dev_ee37b29c_exkubelet" {
  deny {
    ports    = ["10255"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-lab-dev-ee37b29c-exkubelet"
  network       = var.host_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-avantia-private-cluster-lab-dev-ee37b29c-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_lab_dev_ee37b29c_exkubelet projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-lab-dev-ee37b29c-exkubelet
resource "google_compute_firewall" "gke_avantia_private_cluster_lab_dev_ee37b29c_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-lab-dev-ee37b29c-inkubelet"
  network       = var.host_vpc_id
  priority      = 999
  project       = var.host_project_id
  source_ranges = ["10.243.104.0/21", "10.243.112.0/21", "10.243.128.0/21", "10.243.2.0/24", "10.243.96.0/21"]
  source_tags   = ["gke-avantia-private-cluster-lab-dev-ee37b29c-node"]
  target_tags   = ["gke-avantia-private-cluster-lab-dev-ee37b29c-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_lab_dev_ee37b29c_inkubelet projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-lab-dev-ee37b29c-inkubelet
resource "google_compute_firewall" "gke_avantia_private_cluster_lab_dev_ee37b29c_vms" {
  allow {
    ports    = ["1-65535"]
    protocol = "tcp"
  }
  allow {
    ports    = ["1-65535"]
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-lab-dev-ee37b29c-vms"
  network       = var.host_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.243.0.0/23"]
  target_tags   = ["gke-avantia-private-cluster-lab-dev-ee37b29c-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_lab_dev_ee37b29c_vms projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-lab-dev-ee37b29c-vms
resource "google_compute_firewall" "gke_avantia_private_cluster_lab_staging_2ef03b15_all" {
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "sctp"
  }
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-lab-staging-2ef03b15-all"
  network       = var.host_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.243.120.0/21", "10.243.24.0/24", "10.243.48.0/21", "10.243.56.0/21", "10.243.64.0/21", "10.243.72.0/21"]
  target_tags   = ["gke-avantia-private-cluster-lab-staging-2ef03b15-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_lab_staging_2ef03b15_all projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-lab-staging-2ef03b15-all
resource "google_compute_firewall" "gke_avantia_private_cluster_lab_staging_2ef03b15_exkubelet" {
  deny {
    ports    = ["10255"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-lab-staging-2ef03b15-exkubelet"
  network       = var.host_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-avantia-private-cluster-lab-staging-2ef03b15-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_lab_staging_2ef03b15_exkubelet projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-lab-staging-2ef03b15-exkubelet
resource "google_compute_firewall" "gke_avantia_private_cluster_lab_staging_2ef03b15_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-lab-staging-2ef03b15-inkubelet"
  network       = var.host_vpc_id
  priority      = 999
  project       = var.host_project_id
  source_ranges = ["10.243.120.0/21", "10.243.24.0/24", "10.243.48.0/21", "10.243.56.0/21", "10.243.64.0/21", "10.243.72.0/21"]
  source_tags   = ["gke-avantia-private-cluster-lab-staging-2ef03b15-node"]
  target_tags   = ["gke-avantia-private-cluster-lab-staging-2ef03b15-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_lab_staging_2ef03b15_inkubelet projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-lab-staging-2ef03b15-inkubelet
resource "google_compute_firewall" "gke_avantia_private_cluster_lab_staging_2ef03b15_vms" {
  allow {
    ports    = ["1-65535"]
    protocol = "tcp"
  }
  allow {
    ports    = ["1-65535"]
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-lab-staging-2ef03b15-vms"
  network       = var.host_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.243.22.0/23"]
  target_tags   = ["gke-avantia-private-cluster-lab-staging-2ef03b15-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_lab_staging_2ef03b15_vms projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-lab-staging-2ef03b15-vms
resource "google_compute_firewall" "gke_avantia_private_cluster_prod_6906c027_all" {
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "sctp"
  }
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-prod-6906c027-all"
  network       = var.service_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.240.64.0/19", "10.242.16.0/21", "10.242.24.0/21", "10.242.32.0/21", "10.242.4.0/22", "10.242.40.0/21", "10.242.48.0/21"]
  target_tags   = ["gke-avantia-private-cluster-prod-6906c027-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_prod_6906c027_all projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-prod-6906c027-all
resource "google_compute_firewall" "gke_avantia_private_cluster_prod_6906c027_exkubelet" {
  deny {
    ports    = ["10255"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-prod-6906c027-exkubelet"
  network       = var.service_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-avantia-private-cluster-prod-6906c027-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_prod_6906c027_exkubelet projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-prod-6906c027-exkubelet
resource "google_compute_firewall" "gke_avantia_private_cluster_prod_6906c027_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-prod-6906c027-inkubelet"
  network       = var.service_vpc_id
  priority      = 999
  project       = var.host_project_id
  source_ranges = ["10.240.64.0/19", "10.242.16.0/21", "10.242.24.0/21", "10.242.32.0/21", "10.242.4.0/22", "10.242.40.0/21", "10.242.48.0/21"]
  source_tags   = ["gke-avantia-private-cluster-prod-6906c027-node"]
  target_tags   = ["gke-avantia-private-cluster-prod-6906c027-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_prod_6906c027_inkubelet projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-prod-6906c027-inkubelet
resource "google_compute_firewall" "gke_avantia_private_cluster_prod_6906c027_vms" {
  allow {
    ports    = ["1-65535"]
    protocol = "tcp"
  }
  allow {
    ports    = ["1-65535"]
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-prod-6906c027-vms"
  network       = var.service_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.242.0.0/22"]
  target_tags   = ["gke-avantia-private-cluster-prod-6906c027-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_prod_6906c027_vms projects/avantia-infra-network/global/firewalls/gke-avantia-private-cluster-prod-6906c027-vms
resource "google_compute_firewall" "iap_proxy_api_prod" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  description   = "IAP Proxy APIs"
  direction     = "INGRESS"
  name          = "iap-proxy-api-prod"
  network       = var.service_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["35.235.240.0/20"]
  target_tags   = ["allow-iap"]
}
# terraform import google_compute_firewall.iap_proxy_api_prod projects/avantia-infra-network/global/firewalls/iap-proxy-api-prod
resource "google_compute_firewall" "k8s_33042307051fcbcd_node_http_hc" {
  allow {
    ports    = ["10256"]
    protocol = "tcp"
  }
  description        = "{\"kubernetes.io/cluster-id\":\"33042307051fcbcd\"}"
  destination_ranges = ["35.238.139.140"]
  direction          = "INGRESS"
  name               = "k8s-33042307051fcbcd-node-http-hc"
  network            = var.host_vpc_id
  priority           = 1000
  project            = var.host_project_id
  source_ranges      = ["130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22", "35.191.0.0/16"]
  target_tags        = ["gke-avantia-private-cluster-lab-dev-ee37b29c-node"]
}
# terraform import google_compute_firewall.k8s_33042307051fcbcd_node_http_hc projects/avantia-infra-network/global/firewalls/k8s-33042307051fcbcd-node-http-hc
resource "google_compute_firewall" "k8s_7ab02b85d7d15721_node_http_hc" {
  allow {
    ports    = ["10256"]
    protocol = "tcp"
  }
  description        = "{\"kubernetes.io/cluster-id\":\"7ab02b85d7d15721\"}"
  destination_ranges = ["34.132.163.192"]
  direction          = "INGRESS"
  name               = "k8s-7ab02b85d7d15721-node-http-hc"
  network            = var.host_vpc_id
  priority           = 1000
  project            = var.host_project_id
  source_ranges      = ["130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22", "35.191.0.0/16"]
  target_tags        = ["gke-avantia-private-cluster-lab-staging-2ef03b15-node"]
}
# terraform import google_compute_firewall.k8s_7ab02b85d7d15721_node_http_hc projects/avantia-infra-network/global/firewalls/k8s-7ab02b85d7d15721-node-http-hc
resource "google_compute_firewall" "k8s_fw_a435fef8dbc8b43bc972ff0dce56246a" {
  allow {
    ports    = ["80", "443"]
    protocol = "tcp"
  }
  description        = "{\"kubernetes.io/service-name\":\"kong/kong-ingress-gateway-proxy\", \"kubernetes.io/service-ip\":\"34.132.163.192\"}"
  destination_ranges = ["34.132.163.192"]
  direction          = "INGRESS"
  name               = "k8s-fw-a435fef8dbc8b43bc972ff0dce56246a"
  network            = var.host_vpc_id
  priority           = 1000
  project            = var.host_project_id
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-avantia-private-cluster-lab-staging-2ef03b15-node"]
}
# terraform import google_compute_firewall.k8s_fw_a435fef8dbc8b43bc972ff0dce56246a projects/avantia-infra-network/global/firewalls/k8s-fw-a435fef8dbc8b43bc972ff0dce56246a
resource "google_compute_firewall" "k8s_fw_a8af28e24701e426da18d602329e6e95" {
  allow {
    ports    = ["80", "443"]
    protocol = "tcp"
  }
  description        = "{\"kubernetes.io/service-name\":\"kong/kong-gateway-proxy\", \"kubernetes.io/service-ip\":\"34.173.40.1\"}"
  destination_ranges = ["34.173.40.1"]
  direction          = "INGRESS"
  name               = "k8s-fw-a8af28e24701e426da18d602329e6e95"
  network            = var.service_vpc_id
  priority           = 1000
  project            = var.host_project_id
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-avantia-private-cluster-prod-6906c027-node"]
}
# terraform import google_compute_firewall.k8s_fw_a8af28e24701e426da18d602329e6e95 projects/avantia-infra-network/global/firewalls/k8s-fw-a8af28e24701e426da18d602329e6e95
resource "google_compute_firewall" "k8s_fw_ab9476573ce8d4a588a8c88773e0401f" {
  allow {
    ports    = ["80", "443"]
    protocol = "tcp"
  }
  description        = "{\"kubernetes.io/service-name\":\"kong/kong-gateway-proxy\", \"kubernetes.io/service-ip\":\"35.238.139.140\"}"
  destination_ranges = ["35.238.139.140"]
  direction          = "INGRESS"
  name               = "k8s-fw-ab9476573ce8d4a588a8c88773e0401f"
  network            = var.host_vpc_id
  priority           = 1000
  project            = var.host_project_id
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-avantia-private-cluster-lab-dev-ee37b29c-node"]
}
# terraform import google_compute_firewall.k8s_fw_ab9476573ce8d4a588a8c88773e0401f projects/avantia-infra-network/global/firewalls/k8s-fw-ab9476573ce8d4a588a8c88773e0401f
resource "google_compute_firewall" "local_allow_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  allow {
    protocol = "icmp"
  }
  direction     = "INGRESS"
  name          = "local-allow-ssh"
  network       = var.host_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.243.0.0/16", "35.191.0.0/16", "35.235.240.0/20"]
}
# terraform import google_compute_firewall.local_allow_ssh projects/avantia-infra-network/global/firewalls/local-allow-ssh  ###
resource "google_compute_firewall" "local_allow_ssh_prd" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  allow {
    protocol = "icmp"
  }
  direction     = "INGRESS"
  name          = "local-allow-ssh-prd"
  network       = var.service_vpc_id
  priority      = 1000
  project       = var.host_project_id
  source_ranges = ["10.243.0.0/16", "35.191.0.0/16", "35.235.240.0/20"]
}
# terraform import google_compute_firewall.local_allow_ssh_prd projects/avantia-infra-network/global/firewalls/local-allow-ssh-prd
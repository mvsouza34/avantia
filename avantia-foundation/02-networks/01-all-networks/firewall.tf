# # Primeira regra listada na planilha
# resource "google_compute_firewall" "gke-cluster-sg-devl-gke-avnt-avanuv-cluster" {
#     description = "Regras para o gke wecloud"
#     allow {
#       protocol = "ALL"
#     }

#     target_tags = ["gke"]

#     direction = "INGRESS"
#     name = "gke-cluster-sg-devl-gke-avnt-avanuv-cluster"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["10.243.0.0/16"]
# }

# # Segunda regra listada na planilha
# resource "google_compute_firewall" "gke-cluster-sg-devl-gke-avnt-avanuv-cluster-egress" {
#   description = "Regra padrão na rede será usada para gke serviços em geral na conta e computação"

#     allow {
#       protocol = "ALL"
#     }

#     target_tags = ["gke"]

#     direction = "EGRESS"
#     name = "gke-cluster-sg-devl-gke-avnt-avanuv-cluster-egress"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["0.0.0.0/0"]
# }

# # Terceira regra listada na planilha
# resource "google_compute_firewall" "gke-cluster-sg-devl-pri-default-all-lan-1" {
#     description = "Regra padrão na rede será usada para gke serviços em geral na conta e computação "
#     allow {
#       protocol = "ALL"
#     }

#     direction = "INGRESS"
#     name = "gke-cluster-sg-devl-pri-default-all-lan-1"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["10.243.0.0/16"]
# }

# # Quarta regra listada na planilha
# resource "google_compute_firewall" "gke-cluster-sg-devl-pri-default-all-lan-1-egress" {
#   description = "Regra padrão na rede será usada para gke serviços em geral na conta e computação"

#     allow {
#       protocol = "ALL"
#     }

#     direction = "EGRESS"
#     name = "gke-cluster-sg-devl-pri-default-all-lan-1-egress"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["0.0.0.0/0"]
# }

# # Quinta regra listada na planilha
# resource "google_compute_firewall" "mediasvc-sg-devl-pub-internet-wowza-access" {
#     allow {
#       protocol = "TCP"
#       ports    = ["8087", "554", "8087-8089", "443", "80"]
#     }

#     allow {
#       protocol = "UDP"
#       ports    = ["1935"]
#     }

#     target_tags = ["wowza"]

#     direction = "INGRESS"
#     name = "mediasvc-sg-devl-pub-internet-wowza-access"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["0.0.0.0/0"]
# }

# # Regra contida na quinta, porém, para toda a rede de produção
# resource "google_compute_firewall" "mediasvc-sg-devl-pub-internet-wowza-access-all-prd-network" {
#   description = "Liberação da rede privada inteira"
#     allow {
#       protocol = "ALL"
#     }

#     direction = "INGRESS"
#     name = "mediasvc-sg-devl-pub-internet-wowza-access-all-prd-network"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["10.243.0.0/16"]
# }

# # Regra contida na quinta, porém, com negação de saída
# # resource "google_compute_firewall" "mediasvc-sg-devl-pub-internet-wowza-access-egress" {
# #   description = "Liberação da rede privada inteira"
# #     deny {
# #       protocol = "ALL"
# #     }

# #     direction = "EGRESS"
# #     name = "mediasvc-sg-devl-pub-internet-wowza-access-egress"
# #     network = var.lab_vpc_id
# #     priority = 1000
# #     project = var.host_project_id
# # }

# # Setima regra da planilha
# resource "google_compute_firewall" "avanunv-sg-devl-pub-internet-http-lb-1" {
#     allow {
#       protocol = "TCP"
#       ports    = ["80", "443", "8090"]
#     }

#     target_tags = ["lb"]

#     direction = "INGRESS"
#     name = "avanunv-sg-devl-pub-internet-http-lb-1"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["0.0.0.0/0"]
# }

# # Setima regra da planilha
# resource "google_compute_firewall" "avanunv-sg-devl-pub-internet-http-lb-1-private-network-access" {
#   description = "Regras para acesso a internet load balance gke"
#     allow {
#       protocol = "ALL"
#     }

#     target_tags = ["lb"]

#     direction = "INGRESS"
#     name = "avanunv-sg-devl-pub-internet-http-lb-1-private-network-access"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["10.243.0.0/16"]
# }

# resource "google_compute_firewall" "avanunv-sg-devl-pub-internet-http-lb-1-egress" {
#   description = "Regras para acesso a internet load balance gke"
#     allow {
#       protocol = "ALL"
#     }

#     target_tags = ["lb"]

#     direction = "EGRESS"
#     name = "avanunv-sg-devl-pub-internet-http-lb-1-egress"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["0.0.0.0/0"]
# }

# resource "google_compute_firewall" "avanuv-sg-devl-pri-rds-all-lan-1" {
#   description = "Regras de acesso Banco de dados"
#     allow {
#       protocol = "TCP"
#       ports    = ["5432"]
#     }

#     target_tags = ["rds"]

#     direction = "INGRESS"
#     name = "avanuv-sg-devl-pri-rds-all-lan-1"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["10.243.0.0/16"]
# }

# resource "google_compute_firewall" "avanuv-sg-devl-pri-rds-all-lan-1-egress" {
#   description = "Regras de acesso Banco de dados"
#     allow {
#       protocol = "ALL"
#     }

#     target_tags = ["rds"]

#     direction = "EGRESS"
#     name = "avanuv-sg-devl-pri-rds-all-lan-1-egress"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["0.0.0.0/0"]
# }

# # IAP Proxy APIs allow ingress
# resource "google_compute_firewall" "iap-proxy-api-lab" {
#   description = "IAP Proxy APIs"
#     allow {
#       protocol = "tcp"
#       ports = [ "22" ]
#     }

#     target_tags = [ "allow-iap" ]

#     direction = "INGRESS"
#     name = "iap-proxy-api-lab"
#     network = "avantia-avanuv-labs"
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["35.235.240.0/20"]
# }

# resource "google_compute_firewall" "default-allow-internal" {
#   description = "IAP Proxy APIs"
#     allow {
#       protocol = "tcp"
#       ports = [ "0-65535" ]
#     }
#     allow {
#       protocol = "udp"
#       ports = [ "0-65535" ]
#     }

#     direction = "INGRESS"
#     name = "default-allow-internal"
#     network = var.lab_vpc_id
#     priority = 65534
#     project = var.host_project_id
#     source_ranges = ["0.0.0.0/0"]
# }

# #########Troubleshooting com o Ítalo################

# resource "google_compute_firewall" "valida-licenca-wowza" {
#     allow {
#       protocol = "TCP"
#       ports    = ["80"]
#     }
#     direction = "EGRESS"
#     name = "valida-licenca-wowza"
#     network = var.lab_vpc_id
#     priority = 1000
#     project = var.host_project_id
#     source_ranges = ["0.0.0.0/0"]
# }
# Primeira regra listada na planilha
resource "google_compute_firewall" "gke-cluster-sg-gke-avnt-avanuv-cluster" {
    description = "Regras para o gke wecloud"
    allow {
      protocol = "ALL"
    }

    target_tags = ["gke"]

    direction = "INGRESS"
    name = "gke-cluster-sg-gke-avnt-avanuv-cluster"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["10.242.0.0/16"]
}

# Segunda regra listada na planilha
resource "google_compute_firewall" "gke-cluster-sg-gke-avnt-avanuv-cluster-egress" {
  description = "Regra padrão na rede será usada para gke serviços em geral na conta e computação"

    allow {
      protocol = "ALL"
    }

    target_tags = ["gke"]

    direction = "EGRESS"
    name = "gke-cluster-sg-gke-avnt-avanuv-cluster-egress"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}

# Terceira regra listada na planilha
resource "google_compute_firewall" "gke-cluster-sg-prod-pri-default-all-lan-1" {
    description = "Regras para o gke wecloud"
    allow {
      protocol = "ALL"
    }

    direction = "INGRESS"
    name = "gke-cluster-sg-prod-pri-default-all-lan-1"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["10.242.0.0/16"]
}

# Quarta regra listada na planilha
resource "google_compute_firewall" "gke-cluster-sg-gke-avnt-avanuv-cluster-egress-all-lan-1" {
  description = "Regra padrão na rede será usada para gke serviços em geral na conta e computação"

    allow {
      protocol = "ALL"
    }

    direction = "EGRESS"
    name = "gke-cluster-sg-gke-avnt-avanuv-cluster-egress-all-lan-1"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}

# Quinta regra listada na planilha
resource "google_compute_firewall" "mediasvc-sg-prod-pub-internet-wowza-access" {
    allow {
      protocol = "TCP"
      ports    = ["8087", "554", "8088", "1935", "443", "80"]
    }

    allow {
      protocol = "UDP"
      ports    = ["554", "1935"]
    }

    target_tags = ["wowza"]

    direction = "INGRESS"
    name = "mediasvc-sg-prod-pub-internet-wowza-access"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}

# Regra contida na quinta, porém, para toda a rede de produção
resource "google_compute_firewall" "mediasvc-sg-prod-pub-internet-wowza-access-all-prd-network" {
  description = "Liberação da rede privada inteira"
    allow {
      protocol = "ALL"
    }

    direction = "INGRESS"
    name = "mediasvc-sg-prod-pub-internet-wowza-access-all-prd-network"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["10.242.0.0/16"]
}

# Regra contida na quinta, porém, com negação de saída
resource "google_compute_firewall" "mediasvc-sg-prod-pub-internet-wowza-egress" {
  description = "Liberação da rede privada inteira"
    deny {
      protocol = "ALL"
    }

    direction = "EGRESS"
    name = "mmediasvc-sg-prod-pub-internet-wowza-egress"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
}

# Setima regra da planilha
resource "google_compute_firewall" "avanunv-sg-prod-pub-internet-http-lb-1" {
    allow {
      protocol = "TCP"
      ports    = ["80", "443", "8090"]
    }

    target_tags = ["lb"]

    direction = "INGRESS"
    name = "avanunv-sg-prod-pub-internet-http-lb-1"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}

# Setima regra da planilha
resource "google_compute_firewall" "avanunv-sg-prod-pub-internet-http-lb-1-private-network-access" {
  description = "Regras para acesso a internet load balance gke"
    allow {
      protocol = "ALL"
    }

    target_tags = ["lb"]

    direction = "INGRESS"
    name = "avanunv-sg-prod-pub-internet-http-lb-1-private-network-access"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["10.242.0.0/16"]
}

resource "google_compute_firewall" "avanunv-sg-prod-pub-internet-http-lb-1-egress" {
  description = "Regras para acesso a internet load balance gke"
    allow {
      protocol = "ALL"
    }

    target_tags = ["lb"]

    direction = "EGRESS"
    name = "avanunv-sg-prod-pub-internet-http-lb-1-egress"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "avanuv-sg-prod-pri-rds-all-lan-1" {
  description = "Regras de acesso Banco de dados"
    allow {
      protocol = "TCP"
      ports    = ["5432"]
    }

    target_tags = ["rds"]

    direction = "INGRESS"
    name = "avanuv-sg-prod-pri-rds-all-lan-1"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["10.242.0.0/16"]
}

resource "google_compute_firewall" "avanuv-sg-prod-pri-rds-all-lan-1-egress" {
  description = "Regras de acesso Banco de dados"
    allow {
      protocol = "ALL"
    }

    target_tags = ["rds"]

    direction = "EGRESS"
    name = "avanuv-sg-prod-pri-rds-all-lan-1-egress"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "avanuv-sg-prod-pri-bastion-all-lan-1" {
  description = "Regras de acesso bastiom"
    allow {
      protocol = "tcp"
      ports    = ["22"] 
    }

    target_tags = ["ssh"]

    direction = "INGRESS"
    name = "avanuv-sg-prod-pri-bastion-all-lan-1"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["177.126.7.98/32", "177.38.34.73/32", "177.38.34.66/32", "179.185.12.130/32", "177.52.16.114/32"]
}

resource "google_compute_firewall" "avanuv-sg-prod-pri-bastion-all-lan-1-egress" {
  description = "Regras de acesso Banco de dados"
    allow {
      protocol = "ALL"
    }

    target_tags = ["ssh"]

    direction = "EGRESS"
    name = "avanuv-sg-prod-pri-bastion-all-lan-1-egress"
    network = var.prod_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}
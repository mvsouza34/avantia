# Primeira regra listada na planilha
resource "google_compute_firewall" "gke-cluster-sg-devl-gke-avnt-avanuv-cluster" {
    description = "Regras para o gke wecloud"
    allow {
      protocol = "ALL"
    }

    target_tags = ["gke"]

    direction = "INGRESS"
    name = "gke-cluster-sg-devl-gke-avnt-avanuv-cluster"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["10.242.0.0/16"]
}

# Segunda regra listada na planilha
resource "google_compute_firewall" "gke-cluster-sg-devl-gke-avnt-avanuv-cluster-egress" {
  description = "Regra padrão na rede será usada para gke serviços em geral na conta e computação"

    allow {
      protocol = "ALL"
    }

    target_tags = ["gke"]

    direction = "EGRESS"
    name = "gke-cluster-sg-devl-gke-avnt-avanuv-cluster-egress"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}

# Terceira regra listada na planilha
resource "google_compute_firewall" "gke-cluster-sg-devl-pri-default-all-lan-1" {
    description = "Regra padrão na rede será usada para gke serviços em geral na conta e computação "
    allow {
      protocol = "ALL"
    }

    direction = "INGRESS"
    name = "gke-cluster-sg-devl-pri-default-all-lan-1"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["10.242.0.0/16"]
}

# Quarta regra listada na planilha
resource "google_compute_firewall" "gke-cluster-sg-devl-pri-default-all-lan-1-egress" {
  description = "Regra padrão na rede será usada para gke serviços em geral na conta e computação"

    allow {
      protocol = "ALL"
    }

    direction = "EGRESS"
    name = "gke-cluster-sg-devl-pri-default-all-lan-1-egress"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}

# Quinta regra listada na planilha
resource "google_compute_firewall" "mediasvc-sg-devl-pub-internet-wowza-access" {
    allow {
      protocol = "TCP"
      ports    = ["8087", "554", "8087-8089", "443", "80"]
    }

    allow {
      protocol = "UDP"
      ports    = ["1935"]
    }

    target_tags = ["wowza"]

    direction = "INGRESS"
    name = "mediasvc-sg-devl-pub-internet-wowza-access"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}

# Regra contida na quinta, porém, para toda a rede de produção
resource "google_compute_firewall" "mediasvc-sg-devl-pub-internet-wowza-access-all-prd-network" {
  description = "Liberação da rede privada inteira"
    allow {
      protocol = "ALL"
    }

    direction = "INGRESS"
    name = "mediasvc-sg-devl-pub-internet-wowza-access-all-prd-network"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["10.242.0.0/16"]
}

# Regra contida na quinta, porém, com negação de saída
resource "google_compute_firewall" "mediasvc-sg-devl-pub-internet-wowza-access-egress" {
  description = "Liberação da rede privada inteira"
    deny {
      protocol = "ALL"
    }

    direction = "EGRESS"
    name = "mediasvc-sg-devl-pub-internet-wowza-access-egress"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
}

# Setima regra da planilha
resource "google_compute_firewall" "avanunv-sg-devl-pub-internet-http-lb-1" {
    allow {
      protocol = "TCP"
      ports    = ["80", "443", "8090"]
    }

    target_tags = ["lb"]

    direction = "INGRESS"
    name = "avanunv-sg-devl-pub-internet-http-lb-1"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}

# Setima regra da planilha
resource "google_compute_firewall" "avanunv-sg-devl-pub-internet-http-lb-1-private-network-access" {
  description = "Regras para acesso a internet load balance gke"
    allow {
      protocol = "ALL"
    }

    target_tags = ["lb"]

    direction = "INGRESS"
    name = "avanunv-sg-devl-pub-internet-http-lb-1-private-network-access"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["10.242.0.0/16"]
}

resource "google_compute_firewall" "avanunv-sg-devl-pub-internet-http-lb-1-egress" {
  description = "Regras para acesso a internet load balance gke"
    allow {
      protocol = "ALL"
    }

    target_tags = ["lb"]

    direction = "EGRESS"
    name = "avanunv-sg-devl-pub-internet-http-lb-1-egress"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "avanuv-sg-devl-pri-rds-all-lan-1" {
  description = "Regras de acesso Banco de dados"
    allow {
      protocol = "TCP"
      ports    = ["5432"]
    }

    target_tags = ["rds"]

    direction = "INGRESS"
    name = "avanuv-sg-devl-pri-rds-all-lan-1"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["10.242.0.0/16"]
}

resource "google_compute_firewall" "avanuv-sg-devl-pri-rds-all-lan-1-egress" {
  description = "Regras de acesso Banco de dados"
    allow {
      protocol = "ALL"
    }

    target_tags = ["rds"]

    direction = "EGRESS"
    name = "avanuv-sg-devl-pri-rds-all-lan-1-egress"
    network = var.lab_vpc_id
    priority = 1000
    project = var.host_project_id
    source_ranges = ["0.0.0.0/0"]
}
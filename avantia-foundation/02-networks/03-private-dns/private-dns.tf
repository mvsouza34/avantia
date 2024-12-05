resource "google_dns_managed_zone" "labs_private_zone_wesafer_com" {
  name        = var.dns_resource_name
  project     = var.project_id
  dns_name    = var.dns_name
  description = "Wesafer private DNS zone"
  labels = {
    environment = var.domain_label
  }

  visibility = "private"

  private_visibility_config {
    networks {
      network_url = var.network_url
    }
  }
}

resource "google_dns_managed_zone" "labs_private_zone_wesafer_com_br" {
  name        = var.dns_resource_name_02
  project     = var.project_id
  dns_name    = var.dns_name_02
  description = "Wesafer private DNS zone"
  labels = {
    environment = var.domain_label_02
  }

  visibility = "private"

  private_visibility_config {
    networks {
      network_url = var.network_url
    }
  }
}

resource "google_dns_managed_zone" "labs_private_zone_avantia_com_br" {
  name        = var.dns_resource_name_03
  project     = var.project_id
  dns_name    = var.dns_name_03
  description = "Wesafer private DNS zone"
  labels = {
    environment = var.domain_label_03
  }

  visibility = "private"

  private_visibility_config {
    networks {
      network_url = var.network_url
    }
  }
}

resource "google_dns_managed_zone" "labs_private_zone_group_avantia_com_br" {
  name        = var.dns_resource_name_04
  project     = var.project_id
  dns_name    = var.dns_name_04
  description = "Wesafer private DNS zone"
  labels = {
    environment = var.domain_label_04
  }

  visibility = "private"

  private_visibility_config {
    networks {
      network_url = var.network_url
    }
  }
}
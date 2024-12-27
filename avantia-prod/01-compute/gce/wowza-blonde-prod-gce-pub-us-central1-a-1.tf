resource "google_compute_instance" "wowza_blonde_prod_gce_pub_us_central1_a_1" {
  attached_disk {
    device_name = var.wowza_blonde_disk_name
    mode        = "READ_WRITE"
    source      = var.wowza_blonde_disk_source
  }

  boot_disk {
    auto_delete = true
    device_name = var.wowza_blonde_machine_name

    initialize_params {
      image = var.wowza_blonde_disk_image
      size  = 80
      type  = "hyperdisk-balanced"
    }

    mode   = "READ_WRITE"
    source = var.wowza_blonde_disk_image_source
  }

  machine_type = var.wowza_blonde_machine_type
  name = var.wowza_blonde_machine_name

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }
    network            = var.network_interface
    nic_type           = var.network_card_type
    stack_type         = "IPV4_ONLY"
    subnetwork         = var.wowza_blonde_subnetwork
    subnetwork_project = var.avantia_network_project_id
  }
  project = var.avantia_prod_project_id
  tags = ["ssh-local", "ssh-public", "wowza-public"]
  zone = var.zone_01_id
}

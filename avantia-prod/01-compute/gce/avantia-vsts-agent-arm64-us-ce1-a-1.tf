resource "google_compute_instance" "avantia_vsts_agent_arm64_us_ce1_a_1" {
  attached_disk {
    device_name = var.agent_arm64_attached_disk_name
    mode        = "READ_WRITE"
    source      = var.agent_arm64_attached_disk_source
  }

  boot_disk {
    auto_delete = true
    device_name = var.agent_arm64_machine_name

    initialize_params {
      image = var.agent_arm64_boot_disk_image
      size  = 30
      type  = "pd-balanced"
    }

    mode   = "READ_WRITE"
    source = var.agent_arm64_boot_disk_source
  }
  deletion_protection = true
  machine_type        = var.agent_arm64_machine_type

  name = var.agent_arm64_machine_name

  network_interface {
    network            = var.network_interface
    nic_type           = var.network_card_type
    stack_type         = "IPV4_ONLY"
    subnetwork         = var.agent_arm64_subnetwork
    subnetwork_project = var.avantia_network_project_id
  }
  project = var.avantia_infra_core_project_id
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  tags = ["allow-iap", "ssh-local"]
  zone = var.zone_01_id
}

resource "google_compute_instance" "avantia_avanuv_labs_gke_iap_bastion_lab" {
  boot_disk {
    auto_delete = false
    device_name = var.bastion_name
    initialize_params {
      size = 10
      type = "pd-balanced"
    }
    mode   = "READ_WRITE"
    source = var.bastion_disk_source
  }
  machine_type = var.bastion_machine_type
  name = var.bastion_name
  network_interface {
    network            = var.network_interface
    stack_type         = "IPV4_ONLY"
    subnetwork         = var.labs_gce_subnetwork
    subnetwork_project = var.avantia_network_project_id
  }
  project = var.avantia_service_project_id

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }
  tags = ["reverse-gke", "ssh-local"]
  zone = var.zone_01_id
}

resource "google_compute_instance" "wowza_brown_stag_gce_pub_us_central1_a1" {
  boot_disk {
    auto_delete = true
    device_name = var.brown_wowza_name
    initialize_params {
      size  = 100
      type  = "hyperdisk-balanced"
    }
    mode   = "READ_WRITE"
    source = var.brown_disk_source
  }
  machine_type = var.brown_wowza_machine_type
  name = var.brown_wowza_name
  network_interface {
    access_config {
      network_tier = "STANDARD"
    }
    network            = var.network_interface
    nic_type           = var.nic_type
    stack_type         = "IPV4_ONLY"
    subnetwork         = var.labs_brown_gce_subnetwork
    subnetwork_project = var.avantia_network_project_id
  }
  project = var.avantia_service_project_id
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }
  tags = ["ssh-local", "ssh-public", "wowza-public"]
  zone = var.zone_01_id
}

resource "google_compute_instance" "wowza_orange_stag_gce_pub_us_central1_a1" {
  boot_disk {
    auto_delete = true
    device_name = var.orange_wowza_name
    initialize_params {
      size  = 100
      type  = "hyperdisk-balanced"
    }
    mode   = "READ_WRITE"
    source = var.orange_disk_source
  }
  machine_type = var.brown_wowza_machine_type
  name         = var.orange_wowza_name
  network_interface {
    access_config {
      network_tier = "STANDARD"
    }
    network            = var.network_interface
    nic_type           = var.nic_type
    stack_type         = "IPV4_ONLY"
    subnetwork         = var.labs_orange_gce_subnetwork
    subnetwork_project = var.avantia_network_project_id
  }
  project = var.avantia_service_project_id
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }
  tags = ["ssh-local", "ssh-public", "wowza-public"]
  zone = var.zone_01_id
}
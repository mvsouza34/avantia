resource "google_compute_instance" "avantia_avanuv_prod_gke_iap_bastion_prod" {
  boot_disk {
    auto_delete = true
    device_name = "persistent-disk-0"

    initialize_params {
      image = var.bastion_disk_image
      size  = 10
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = var.bastion_disk_image_source
  }
  machine_type = var.bastion_machine_type
  name = var.bastion_machine_name

  network_interface {
    network            = var.network_interface
    stack_type         = "IPV4_ONLY"
    subnetwork         = var.bastion_subnetwork
    subnetwork_project = var.avantia_network_project_id
  }
  project = var.avantia_prod_project_id
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  tags = ["allow-iap", "reverse-gke", "ssh-local"]
  zone = "us-central1-a"
}

# Create a bastion host to access the GKE cluster
resource "google_compute_instance" "prd_gke_iap_bastion" {
    name = "${var.avantia_prod_project_id}-gke-iap-bastion-${var.prd_env}"
    project = var.avantia_prod_project_id
    zone = var.zone_01_id
    machine_type = var.machine_type

    tags = ["allow-iap"]
    
    network_interface {
        network = var.gke_prod_vpc
        subnetwork = var.gke_prod_sub
    }

    boot_disk {
        initialize_params {
           image = "debian-cloud/debian-12"
        }
    }

    metadata_startup_script = file("../shared/bastion-startup.sh")        
}
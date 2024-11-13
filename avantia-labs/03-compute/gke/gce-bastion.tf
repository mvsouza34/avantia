# Create a bastion host to access the GKE cluster
resource "google_compute_instance" "gke_iap_bastion" {
    name = "${var.avantia_service_project_id}-gke-iap-bastion-${var.env}"
    project = local.avantia_service_project.service_project_name
    zone = var.zone_01_id
    machine_type = "e2-micro"

    tags = ["allow-iap"]
    
    network_interface {
        network = local.lab_shared_vpc.avantia_vpc_id
        subnetwork = local.dev_gke_subnets_us_central1-a.subnet_gke_avanuv_pri_name
    }

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-12"
        }
    }

    metadata_startup_script = file("../shared/bastion-startup.sh")        
}
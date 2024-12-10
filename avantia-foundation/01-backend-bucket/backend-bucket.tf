resource "google_storage_bucket" "avantia_backend_bucket" {
  name     = "${var.core_project_id}-${var.bucket_name}"
  project  = var.core_project_id 
  location = var.region_id

  force_destroy               = false
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}
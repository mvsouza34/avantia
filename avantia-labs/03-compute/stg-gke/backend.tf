###########################
# Terraform State Backend #
###########################

terraform {
  backend "gcs" {
    bucket = "avantia-infra-core-backend-bucket"
    prefix = "stg-gke/"
  }
}

# ################
# # Project's ID #
# ################
variable "avantia_prod_project_id" {
  description = "Service project ID"
  type = string
}

# ################
# # Envinronment #
# ################
variable "prd_env" {
  description = "The name of the environment"
  type        = string
}

###########################
# Define the machine type #
###########################
variable "machine_type" {
  description = "The machine type"
  type        = string
}
################################################
# Define the region and zone for the resources #
################################################
variable "zone_01_id" {
  description = "The zone for the resources"
  type        = string
}
############################################################################
###################
# GCE VPC Network #
###################
variable "gke_prod_vpc" {
  description = "The Production VPC of the GCE resources"
  type = string
}
variable "gke_prod_sub" {
  description = "The Production VPC of the GCE resources"
  type = string
}
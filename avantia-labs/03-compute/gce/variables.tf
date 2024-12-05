# ################
# # Project's ID #
# ################
variable "avantia_service_project_id" {
  description = "Service project ID"
  type = string
}

########################
# Define Enviroment ID #
########################
variable "env" {
  description = "The name of the environment"
  type        = string
}

#######################################################
# Set the Projects IDs for the different environments #
#######################################################
variable "service_project_id" {
  description = "The ID of the private project"
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

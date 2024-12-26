# ################
# # Project's ID #
# ################
variable "avantia_service_project_id" {
  description = "Service project ID"
  type = string
}
variable "avantia_network_project_id" {
  description = "Service project ID"
  type = string
}

##############
# VM's names #
##############
variable "bastion_name" {
  description = "The name of the bastion VM"
  type = string
}
variable "brown_wowza_name" {
  description = "The name of the brown wowza VM"
  type = string
}
variable "orange_wowza_name" {
  description = "The name of the brown wowza VM"
  type = string
}

###########################
# Define the Machine Type #
###########################
variable "bastion_machine_type" {
  description = "The machine type of the brown wowza VM"
  type = string
}
variable "brown_wowza_machine_type" {
  description = "The machine type of the brown wowza VM"
  type = string
}

###############
# Disk Source #
###############
variable "bastion_disk_source" {
  description = "The source of the bastion's disk"
  type = string
}
variable "brown_disk_source" {
  description = "The source of the brown vm's disk"
  type = string
}
variable "orange_disk_source" {
  description = "The source of the brown vm's disk"
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

################################################
# Define the region and zone for the resources #
################################################
variable "zone_01_id" {
  description = "The zone for the resources"
  type        = string
}

#####################
# Networks Settings #
#####################
variable "network_interface" {
  description = "VPC ID"
  type = string
}
variable "labs_gce_subnetwork" {
  description = "VPC ID"
  type = string
}
variable "labs_brown_gce_subnetwork" {
  description = "VPC ID"
  type = string
}
variable "labs_orange_gce_subnetwork" {
  description = "VPC ID"
  type = string
}
variable "nic_type" {
  description = "Network Card Type"
  type = string
}
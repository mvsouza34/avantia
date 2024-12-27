# ################
# # Project's ID #
# ################
variable "avantia_prod_project_id" {
  description = "Service project ID"
  type = string
}
variable "avantia_network_project_id" {
  description = "The project that contains the networks' settings"
  type = string
}
variable "avantia_infra_core_project_id" {
  description = "Infra Core project ID"
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
variable "bastion_machine_type" {
  description = "The machine type"
  type        = string
}
variable "wowza_blonde_machine_type" {
  description = "The machine type"
  type = string
}
variable "wowza_blue_machine_type" {
  description = "The machine type"
  type = string
}
variable "wowza_brown_machine_type" {
  description = "The machine type"
  type = string
}
variable "wowza_orange_machine_type" {
  description = "The machine type"
  type = string
}
variable "wowza_pink_machine_type" {
  description = "The machine type"
  type = string
}
variable "wowza_white_machine_type" {
  description = "The machine type"
  type = string
}
variable "agent_amd64_machine_type" {
  description = "The machine type"
  type = string
}
variable "agent_arm64_machine_type" {
  description = "The machine type"
  type = string
}

###########################
# Define the machine name #
###########################
variable "bastion_machine_name" {
  description = "The name of the Bastion machine"
  type        = string
}
variable "wowza_blonde_machine_name" {
  description = "The name of the wowza blonde machine"
  type        = string
}
variable "wowza_blue_machine_name" {
  description = "The name of the wowza blue machine"
  type        = string
}
variable "wowza_brown_machine_name" {
  description = "The name of the wowza brown machine"
  type        = string
}
variable "wowza_orange_machine_name" {
  description = "The name of the wowza brown machine"
  type        = string
}
variable "wowza_pink_machine_name" {
  description = "The name of the wowza brown machine"
  type        = string
}
variable "wowza_white_machine_name" {
  description = "The name of the wowza brown machine"
  type        = string
}
variable "agent_amd64_machine_name" {
  description = "The name of the wowza brown machine"
  type        = string
}
variable "agent_arm64_machine_name" {
  description = "The name of the wowza brown machine"
  type        = string
}

#########################
# Define disks settings #
#########################
variable "bastion_disk_image" {
  description = "Disk image from bastion VM"
  type = string
}
variable "bastion_disk_image_source" {
  description = "Source of the Disk image from bastion VM"
  type = string
}
variable "wowza_blonde_disk_name" {
  description = "The name of the disk"
  type = string
}
variable "wowza_blonde_disk_source" {
  description = "The source of the disk"
  type = string
}
variable "wowza_blonde_disk_image" {
  description = "The disk image"
  type = string
}
variable "wowza_blonde_disk_image_source" {
  description = "The disk image source"
  type = string
}
variable "wowza_blue_attached_disk_name" {
  description = "The attached disk name"
  type = string
}
variable "wowza_blue_attached_disk_source" {
  description = "The attached disk source"
  type = string
}
variable "wowza_blue_boot_disk_name" {
  description = "The boot disk's name"
  type = string
}
variable "wowza_blue_boot_disk_image" {
  description = "The boot disk's image"
  type = string
}
variable "wowza_blue_boot_disk_source" {
  description = "The boot disk's image source"
  type = string
}
variable "wowza_brown_attached_disk_name" {
  description = "The attached disk name"
  type = string
}
variable "wowza_brown_attached_disk_source" {
  description = "The attached disk source"
  type = string
}
variable "wowza_brown_boot_disk_image" {
  description = "The boot disk image"
  type = string
}
variable "wowza_brown_boot_disk_source" {
  description = "The boot disk source"
  type = string
}
variable "wowza_orange_attached_disk_name" {
  description = "The attached disk name"
  type = string
}
variable "wowza_orange_attached_disk_source" {
  description = "The attached disk source"
  type = string
}
variable "wowza_orange_boot_disk_name" {
  description = "The boot disk name"
  type = string
}
variable "wowza_orange_boot_disk_image" {
  description = "The boot disk image"
  type = string
}
variable "wowza_orange_boot_disk_source" {
  description = "The boot disk source"
  type = string
}
variable "wowza_pink_attached_disk_name" {
  description = "The attached disk name"
  type = string
}
variable "wowza_pink_attached_disk_source" {
  description = "The attached disk source"
  type = string
}
variable "wowza_pink_boot_disk_image" {
  description = "The boot disk image"
  type = string
}
variable "wowza_pink_boot_disk_source" {
  description = "The boot disk source"
  type = string
}
variable "wowza_white_attached_disk_name" {
  description = "The attached disk name"
  type = string
}
variable "wowza_white_attached_disk_source" {
  description = "The attached disk source"
  type = string
}
variable "wowza_white_boot_disk_image" {
  description = "The boot disk image"
  type = string
}
variable "wowza_white_boot_disk_source" {
  description = "The boot disk source"
  type = string
}
variable "agent_amd64_attached_disk_name" {
  description = "The attached disk name"
  type = string
}
variable "agent_amd64_attached_disk_source" {
  description = "The attached disk source"
  type = string
}
variable "agent_amd64_boot_disk_image" {
  description = "The boot disk image"
  type = string
}
variable "agent_amd64_boot_disk_source" {
  description = "The boot disk source"
  type = string
}
variable "agent_arm64_attached_disk_name" {
  description = "The attached disk name"
  type = string
}
variable "agent_arm64_attached_disk_source" {
  description = "The attached disk source"
  type = string
}
variable "agent_arm64_boot_disk_image" {
  description = "The boot disk image"
  type = string
}
variable "agent_arm64_boot_disk_source" {
  description = "The boot disk source"
  type = string
}

##################################
# Define the VPC and Subnetworks #
##################################
variable "network_interface" {
  description = "VPC ID"
  type = string
}
variable "bastion_subnetwork" {
  description = "Subnetwork ID where bastion vm are attached"
  type = string
}
variable "wowza_blonde_subnetwork" {
  description = "Subnetwork ID where wowza blonde vm are attached"
  type = string
}
variable "wowza_blue_subnetwork" {
  description = "Subnetwork ID where wowza blue vm are attached"
  type = string
}
variable "wowza_brown_subnetwork" {
  description = "Subnetwork ID where wowza brown vm are attached"
  type = string
}
variable "network_card_type" {
  description = "The network card type"
  type = string
}
variable "wowza_orange_subnetwork" {
  description = "The network card type"
  type = string
}
variable "wowza_pink_subnetwork" {
  description = "The network card type"
  type = string
}
variable "wowza_white_subnetwork" {
  description = "The network card type"
  type = string
}
variable "agent_amd64_subnetwork" {
  description = "The network card type"
  type = string
}
variable "agent_arm64_subnetwork" {
  description = "The network card type"
  type = string
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
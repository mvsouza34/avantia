################################################
# Define the region and zone for the resources #
################################################
variable "region_id" {
  description = "The region for the resources"
  type        = string
}

# ########################
# # Dev Cluster Settings #
# ########################
variable "dev_cluster_id" {
  description = "The ID of the LAB Cluster"
  type = string
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
########################
# Define default image #
########################
variable "linux_image" {
  description = "The default image"
  type        = string
}
################################################
# Define the region and zone for the resources #
################################################
variable "zone_01_id" {
  description = "The zone for the resources"
  type        = string
}

#######################
# Cluster VPC Network #
#######################
variable "dev_service_vpc_name" {
  description = "The name of the VPC network"
  type        = string
}
variable "dev_subnet_cluster_name" {
  description = "The name of the subnet"
  type        = string
}
variable "dev_subnet_control_range" {
  description = "The CIDR of the dev control plane"
  type        = string
}
variable "lab_subnet_cidr_environment" {
  description = "The CIDR of the subnet"
  type        = string
}

########################
# Define Enviroment ID #
########################
variable "env" {
  description = "The name of the environment"
  type        = string
}

################################################################################
###############################################
# Node Pools PODs CIDR Blocks and their names #
###############################################
variable "avva_app_devl_node_pool_name" {
  description = "The node pools's name"
  type = string
}
variable "avva_app_devl_pod_cidr_block" {
  description = "The pod cidr block of the avva_app_devl node pool"
  type = string
}
variable "avva_app_devl_pod_cidr_block_name" {
  description = "The pod cidr block name"
  type = string
}
variable "avva_app_devl_machine_type" {
  description = "The node pool's machine type"
  type = string
}

variable "avanuv_box_testing_node_pool_name" {
  description = "The node pools's name"
  type = string
}
variable "avanuv_box_testing_pod_cidr_block" {
  description = "The pod cidr block of the avva_app_devl node pool"
  type = string
}
variable "avanuv_box_testing_pod_cidr_block_name" {
  description = "The pod cidr block name"
  type = string
}
variable "avanuv_box_testing_machine_type" {
  description = "The node pool's machine type"
  type = string
}

variable "avanuv_app_testing_node_pool_name" {
  description = "The node pools's name"
  type = string
}
variable "avanuv_app_testing_pod_cidr_block" {
  description = "The pod cidr block of the avva_app_devl node pool"
  type = string
}
variable "avanuv_app_testing_pod_cidr_block_name" {
  description = "The pod cidr block name"
  type = string
}
variable "avanuv_app_testing_machine_type" {
  description = "The node pool's machine type"
  type = string
}

variable "classifier_testing_node_pool_name" {
  description = "The node pools's name"
  type = string
}
variable "classifier_testing_pod_cidr_block" {
  description = "The pod cidr block of the avva_app_devl node pool"
  type = string
}
variable "classifier_testing_pod_cidr_block_name" {
  description = "The pod cidr block name"
  type = string
}
variable "classifier_testing_machine_type" {
  description = "The node pool's machine type"
  type = string
}
variable "classifier_testing_guest_accelerator_type" {
  description = "The guest accelerator type"
  type = string
}
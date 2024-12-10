#######################################################
# Set the Projects IDs for the different environments #
#######################################################
variable "prod_project_id" {
  description = "The ID of the app project"
  type        = string
}
###########################
# Define the machine type #
###########################
variable "machine_type" {
  description = "The machine type"
  type        = string
}
variable "prod_cluster" {
  description = "Cluster ID"
  type = string
}
################################################
# Define the region and zone for the resources #
################################################
variable "zone_01_id" {
  description = "The zone for the resources"
  type        = string
}
variable "prod_subnet_control_range" {
  description = "The CIDR of the dev control plane"
  type        = string
}

#####################################
# Define the Node Pool's properties #
#####################################
variable "avva_app_int_name" {
  description = "The node pool's name"
  type = string
}
variable "avva_app_int_pod_cidr_block" {
  description = "The pod cidr block of avva app hoint"
  type = string
}
variable "avva_app_int_cidr_block_name" {
  description = "The name of avva app hoint cidr block"
  type = string
}
variable "avva_app_int_t2_machine_type" {
  description = "The machine type of avva app hoint"
  type = string
}
variable "avanuv_production_name" {
  description = "The node pool's name"
  type = string
}
variable "avanuv_production_pod_cidr_block" {
  description = "The node pool's cidr block"
  type = string
}
variable "avanuv_production_cidr_block_name" {
  description = "The node cidr block name"
  type = string
}
variable "avanuv_production_t2_machine_type" {
  description = "The machine type of the node"
  type = string
}
variable "avva_cameras_int_name" {
  description = "The node pool's name"
  type = string
}
variable "avva_cameras_int_pod_cidr_block" {
  description = "The node pool's cidr block"
  type = string
}
variable "avva_cameras_int_cidr_block_name" {
  description = "The node cidr block name"
  type = string
}
variable "avva_cameras_int_t2_machine_type" {
  description = "The machine type of the node"
  type = string
}
variable "avanuv_app_production_name" {
  description = "The node pool's name"
  type = string
}
variable "avanuv_app_production_pod_cidr_block" {
  description = "The node pool's cidr block"
  type = string
}
variable "avanuv_app_production_cidr_block_name" {
  description = "The node cidr block name"
  type = string
}
variable "avanuv_app_production_t2_machine_type" {
  description = "The machine type of the node"
  type = string
}
variable "classifier_name" {
  description = "The node pool's name"
  type = string
}
variable "classifier_pod_cidr_block" {
  description = "The node pool's cidr block"
  type = string
}
variable "classifier_cidr_block_name" {
  description = "The node cidr block name"
  type = string
}
variable "classifier_n1_machine_type" {
  description = "The machine type of the node"
  type = string
}
variable "classifier_n1_accelerator" {
  description = "The machine type of accelerator"
  type = string
}
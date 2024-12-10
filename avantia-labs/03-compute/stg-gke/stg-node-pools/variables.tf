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
variable "stg_cluster" {
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

#####################################
# Define the Node Pool's properties #
#####################################
variable "avva_app_hoint_name" {
  description = "The node pool's name"
  type = string
}
variable "avva_app_hoint_pod_cidr_block" {
  description = "The pod cidr block of avva app hoint"
  type = string
}
variable "avva_app_hoint_cidr_block_name" {
  description = "The name of avva app hoint cidr block"
  type = string
}
variable "avva_app_hoint_t2_machine_type" {
  description = "The machine type of avva app hoint"
  type = string
}
variable "avanuv_box_staging_name" {
  description = "The node pool's name"
  type = string
}
variable "avanuv_box_staging_pod_cidr_block" {
  description = "The node pool's cidr block"
  type = string
}
variable "avanuv_box_staging_cidr_block_name" {
  description = "The node cidr block name"
  type = string
}
variable "avanuv_box_staging_t2_machine_type" {
  description = "The machine type of the node"
  type = string
}

variable "avanuv_app_staging_name" {
  description = "The node pool's name"
  type = string
}
variable "avanuv_app_staging_pod_cidr_block" {
  description = "The node pool's cidr block"
  type = string
}
variable "avanuv_app_staging_cidr_block_name" {
  description = "The node cidr block name"
  type = string
}
variable "avanuv_app_staging_t2_machine_type" {
  description = "The machine type of the node"
  type = string
}

variable "classifier_staging_name" {
  description = "The node pool's name"
  type = string
}
variable "classifier_staging_pod_cidr_block" {
  description = "The node pool's cidr block"
  type = string
}
variable "classifier_staging_cidr_block_name" {
  description = "The node cidr block name"
  type = string
}
variable "classifier_staging_n1_machine_type" {
  description = "The machine type of the node"
  type = string
}
variable "classifier_staging_accelerator" {
  description = "The machine's accelerator"
  type = string
}

variable "servicos_name" {
  description = "The node pool's name"
  type = string
}
variable "servicos_pod_cidr_block" {
  description = "The node pool's cidr block"
  type = string
}
variable "servicos_cidr_block_name" {
  description = "The node cidr block name"
  type = string
}
variable "servicos_e2_machine_type" {
  description = "The machine type of the node"
  type = string
}
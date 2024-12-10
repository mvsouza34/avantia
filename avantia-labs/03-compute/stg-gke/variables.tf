########################
# Define Enviroment ID #
########################
variable "env" {
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

################################################
# Define Networks Settings #
################################################
variable "stag_service_vpc_name" {
  description = "The name of the VPC network"
  type        = string
}
variable "stag_subnet_cluster_name" {
  description = "The name of the subnet"
  type        = string
}
variable "lab_subnet_cidr_environment" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "stag_subnet_control_range" {
  description = "The CIDR of the dev control plane"
  type        = string
}
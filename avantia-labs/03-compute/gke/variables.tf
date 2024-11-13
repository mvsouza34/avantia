################
# Project's ID #
################
variable "avantia_host_project_id" {
  description = "Host project ID"
  type = string
}
variable "avantia_service_project_id" {
  description = "Service project ID"
  type = string
}

####################
# Environment's ID #
####################
variable "env" {
  description = "Environment Suffix"
  type = string
}

###############
# Region's ID #
###############
variable "region_id" {
  description = "Region ID"
  type = string
}
variable "zone_01_id" {
  description = "zone A id"
  type = string
}

##################
# Authorized IPs #
##################
variable "cidr_block" {
  description = "First authorized IP"
  type = string
}

########################
# Dev Cluster Settings #
########################
variable "subnet_cidr_cluster_range_control" {
  description = "Control plane's subnet"
}
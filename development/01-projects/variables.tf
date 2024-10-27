############################
# Billing Account settings #
############################
variable "billing_account" {
  description = "Dev's environment Billing Account"
  type = string
}

######################
# Region's settings #
######################
variable "region_id" {
  description = "Just the region ID"
  type = string
}
variable "zone_01_id" {
  description = "Just the zone's ID"
  type = string
}

######################
# Project's settings #
######################
variable "host_project_id" {
  description = "The folder host's ID"
  type = string
}
variable "folder_shared_id" {
  description = "The folder shared's ID"
  type = string
}
variable "avantia_host_project_id" {
  description = "The ID of the host project ID"
  type = string
}

##########################
# Environment's settings #
##########################
variable "env" {
  description = "Environment Identifier"
  type = string
}
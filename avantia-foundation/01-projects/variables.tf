############################ GLOBAL SETTINGS ############################

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

############################ LABS ENVIRONMENT ############################

######################
# Project's settings #
######################
variable "folder_shared_id" {
  description = "The folder shared's ID"
  type = string
}
variable "lab_folder_shared_id" {
  description = "The folder shared's ID"
  type = string
}
variable "avantia_host_project_id" {
  description = "The ID of the host project ID"
  type = string
}
variable "avantia_service_project_id" {
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

############################ PROD ENVIRONMENT ############################

######################
# Project's settings #
######################
variable "prd_folder_shared_id" {
  description = "The folder shared's ID"
  type = string
}
variable "avantia_prd_service_project_id" {
  description = "The ID of the host project ID"
  type = string
}

##########################
# Environment's settings #
##########################
variable "prd_env" {
  description = "Environment Identifier"
  type = string
}
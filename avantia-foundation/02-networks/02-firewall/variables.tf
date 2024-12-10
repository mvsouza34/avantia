################
# VPC Settings #
################
variable "service_vpc_id" {
  description = "Prod VPC ID"
  type = string
}
#######################################################
# Set the Projects IDs for the different environments #
#######################################################
variable "host_project_id" {
  description = "The ID of the app project"
  type        = string
}
variable "host_vpc_id" {
  description = "Host VPC ID"
  type = string
}

################################################################################
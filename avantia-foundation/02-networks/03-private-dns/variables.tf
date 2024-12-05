#######################
# Project Information #
#######################
variable "project_id" {
  description = "The project ID"
  type = string
}
#########################
# DNS basic information #
#########################
variable "dns_resource_name" {
  description = "The DNS resource's name"
  type = string
}
variable "dns_name" {
  description = "Domain"
  type = string
}
variable "domain_label" {
  description = "Environment's label"
  type = string
}

variable "dns_resource_name_02" {
  description = "The DNS resource's name"
  type = string
}
variable "dns_name_02" {
  description = "Domain"
  type = string
}
variable "domain_label_02" {
  description = "Environment's label"
  type = string
}

variable "dns_resource_name_03" {
  description = "The DNS resource's name"
  type = string
}
variable "dns_name_03" {
  description = "Domain"
  type = string
}
variable "domain_label_03" {
  description = "Environment's label"
  type = string
}

variable "dns_resource_name_04" {
  description = "The DNS resource's name"
  type = string
}
variable "dns_name_04" {
  description = "Domain"
  type = string
}
variable "domain_label_04" {
  description = "Environment's label"
  type = string
}

###################
# VPC Information #
###################
variable "network_url" {
  description = "THE Network's URL"
  type = string
}
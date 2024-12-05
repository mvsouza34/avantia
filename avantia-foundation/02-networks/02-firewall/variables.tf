################
# VPC Settings #
################
variable "service_vpc_id" {
  description = "Prod VPC ID"
  type = string
}

########################
# Define Enviroment ID #
########################
variable "env" {
  description = "The name of the environment"
  type        = string
}
variable "prd_env" {
  description = "The name of the environment"
  type        = string
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
# variable "service_project_id" {
#   description = "The ID of the private project"
#   type        = string
# }
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
variable "region_id" {
  description = "The region for the resources"
  type        = string
}
variable "zone_01_id" {
  description = "The zone for the resources"
  type        = string
}
variable "zone_02_id" {
  description = "The zone for the resources"
  type        = string
}
variable "zone_03_id" {
  description = "The zone for the resources"
  type        = string
}
########################################
# Define the network and subnets names #
########################################
# Link to IP distribuition list https://docs.google.com/spreadsheets/d/1Jtw4-wJaHHsyIf31eghvgcwIYUr_HuJy/edit?usp=sharing&ouid=100727001565538824661&rtpof=true&sd=true
################################################################################
#######################
# Cluster VPC Network #
#######################
variable "service_vpc_name" {
  description = "The name of the VPC network"
  type        = string
}
################################################################################
# Cluster subnets
variable "subnet_cluster_name" {
  description = "The name of the subnet"
  type        = string
}
variable "subnet_cidr_environment" {
  description = "The CIDR of the subnet"
  type        = string
}
################################################################################
# Cluster subnets CIDR
# Control CIDR Range
variable "subnet_control_range" {
  description = "The CIDR of the subnet"
  type        = string
}
# Primary CIDR
variable "wecloud-primary-range" {
  description = "The CIDR of the subnet"
  type        = string
}
# Secondary Names
variable "subnet_control_name" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-pods-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "wecloud-services-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "weava-pods-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "wecloud-app-pods-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "wecloud-classifiers-pods-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "wecloud-box-pods-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
# Secondary CIDR
variable "wecloud-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-services-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "weava-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-app-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-classifiers-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-box-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
############################################################################
###################
# GCE VPC Network #
###################
# Primary GCE Network
variable "wecloud-pri-gce-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-pri-gce-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
# Public GCE Network
variable "wecloud-pub-gce-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-pub-gce-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
#######################
# Endpont VPC Network #
#######################
# Primary Endpoint Network
variable "wecloud-pri-endpoint-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-pri-endpoint-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
# Public Endpoint Network
variable "wecloud-pub-enpoint-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-pub-endpoint-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
#########################
# Functions VPC Network #
#########################
variable "wecloud-functions-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-functions-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
########################
# CloudSQL VPC Network #
########################
variable "wecloud-cloudsql-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-cloudsql-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
#########################
# VPN Peers VPC Network #
#########################
variable "wecloud-vpn-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-vpn-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}

###################
# DEV VPC Network #
###################
#######################
# Cluster VPC Network #
#######################
variable "service_dev_vpc_name" {
  description = "The name of the VPC network"
  type        = string
}
################################################################################
# Cluster subnets
variable "subnet_dev_cluster_name" {
  description = "The name of the subnet"
  type        = string
}
variable "subnet_dev_cidr_environment" {
  description = "The CIDR of the subnet"
  type        = string
}
################################################################################
# Cluster subnets CIDR
# Control CIDR Range
variable "subnet_dev_control_range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "subnet_dev_control_name" {
  description = "The CIDR of the subnet"
  type        = string
}
# Primary CIDR
variable "wecloud-dev-node-pools-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-dev-node-pools-name" {
  description = "The CIDR of the subnet"
  type        = string
}
# Secondary Names
variable "wecloud-dev-default-pods-name" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-dev-app-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "weava-dev-default-services-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "wecloud-dev-hoint-pods-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "wecloud-dev-box-pods-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "wecloud-dev-pods-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
# Secondary CIDR
variable "wecloud-dev-default-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-dev-app-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "weava-dev-default-services-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-dev-hoint-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-dev-box-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-dev-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
############################################################################
###################
# GCE VPC Network #
###################
# Primary GCE Network
variable "wecloud-dev-pri-gce-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-dev-pri-gce-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
# Public GCE Network
variable "wecloud-dev-pub-gce-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-dev-pub-gce-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
#######################
# Endpont VPC Network #
#######################
# Primary Endpoint Network
variable "wecloud-dev-pri-endpoint-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-dev-pri-endpoint-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
# Public Endpoint Network
variable "wecloud-dev-pub-enpoint-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-dev-pub-enpoint-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
#########################
# Functions VPC Network #
#########################
variable "wecloud-dev-functions-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-dev-functions-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
########################
# CloudSQL VPC Network #
########################
variable "wecloud-dev-cloudsql-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-dev-cloudsql-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
#########################
# VPN Peers VPC Network #
#########################
variable "wecloud-dev-vpn-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-dev-vpn-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}

###################
# STG VPC Network #
###################
#######################
# Cluster VPC Network #
#######################
variable "service_stg_vpc_name" {
  description = "The name of the VPC network"
  type        = string
}
################################################################################
# Cluster subnets
variable "subnet_stg_cluster_name" {
  description = "The name of the subnet"
  type        = string
}
variable "subnet_stg_cidr_environment" {
  description = "The CIDR of the subnet"
  type        = string
}
################################################################################
# Cluster subnets CIDR
# Control CIDR Range
variable "subnet_stg_control_range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "subnet_stg_control_name" {
  description = "The CIDR of the subnet"
  type        = string
}
# Primary CIDR
variable "wecloud-stg-node-pools-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-stg-node-pools-name" {
  description = "The CIDR of the subnet"
  type        = string
}
# Secondary Names
variable "wecloud-stg-default-pods-name" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-stg-app-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "weava-stg-default-services-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "wecloud-stg-hoint-pods-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "wecloud-stg-box-pods-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
variable "wecloud-stg-pods-name" {
  description = "The name of the secondary CIDR"
  type        = string
}
# Secondary CIDR
variable "wecloud-stg-default-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-stg-app-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "weava-stg-default-services-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-stg-hoint-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-stg-box-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
variable "wecloud-stg-pods-range" {
  description = "The CIDR of the subnet"
  type        = string
}
############################################################################
###################
# GCE VPC Network #
###################
# Primary GCE Network
variable "wecloud-stg-pri-gce-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-stg-pri-gce-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
# Public GCE Network
variable "wecloud-stg-pub-gce-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-stg-pub-gce-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
#######################
# Endpont VPC Network #
#######################
# Primary Endpoint Network
variable "wecloud-stg-pri-endpoint-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-stg-pri-endpoint-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
# Public Endpoint Network
variable "wecloud-stg-pub-enpoint-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-stg-pub-enpoint-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
#########################
# Functions VPC Network #
#########################
variable "wecloud-stg-functions-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-stg-functions-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
########################
# CloudSQL VPC Network #
########################
variable "wecloud-stg-cloudsql-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-stg-cloudsql-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
#########################
# VPN Peers VPC Network #
#########################
variable "wecloud-stg-vpn-name" {
  description = "The name of the VPC network"
  type        = string
}
variable "wecloud-stg-vpn-cidr" {
  description = "The CIDR of the subnet"
  type        = string
}
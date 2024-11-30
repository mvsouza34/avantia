# ################
# # Project's ID #
# ################
# variable "avantia_host_project_id" {
#   description = "Host project ID"
#   type = string
# }
# variable "avantia_service_project_id" {
#   description = "Service project ID"
#   type = string
# }

# ####################
# # Environment's ID #
# ####################
# variable "env" {
#   description = "Environment Suffix"
#   type = string
# }

# ###############
# # Region's ID #
# ###############
# variable "region_id" {
#   description = "Region ID"
#   type = string
# }
# variable "zone_01_id" {
#   description = "zone A id"
#   type = string
# }

# ##################
# # Authorized IPs #
# ##################
# variable "cidr_block" {
#   description = "First authorized IP"
#   type = string
# }

# ########################
# # Dev Cluster Settings #
# ########################
# variable "subnet_cidr_cluster_range_control" {
#   description = "Control plane's subnet"
# }

################################ NEW VARIABLES ###############################
############################################
# Credentials file for the service account #
############################################
# variable "org_id" {
#   description = "The organization ID"
#   type        = string
# }
###########################################
# Declarate information to Project Create #
###########################################
# variable "billing_account" {
#   description = "The billing account ID"
#   type        = string
# }
# variable "shared_folder_id" {
#   description = "The ID of the shared network folder"
#   type        = string
# }
# variable "environment_folder_id" {
#   description = "The ID of the environment folder"
#   type        = string
# }
# variable "project_folder_id" {
#   description = "The ID of the app folder"
#   type        = string
# }
########################
# Define Enviroment ID #
########################
# variable "env" {
#   description = "The name of the environment"
#   type        = string
# }
# variable "prd_env" {
#   description = "The name of the environment"
#   type        = string
# }
#######################################################
# Set the Projects IDs for the different environments #
#######################################################
variable "prod_project_id" {
  description = "The ID of the app project"
  type        = string
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
# variable "service_vpc_name" {
#   description = "The name of the VPC network"
#   type        = string
# }
variable "prod_service_vpc_name" {
  description = "The name of the VPC network"
  type        = string
}
################################################################################
variable "prod_subnet_cluster_name" {
  description = "The name of the subnet"
  type        = string
}
# variable "subnet_cidr_environment" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
variable "prod_subnet_cidr_environment" {
  description = "The CIDR of the subnet"
  type        = string
}
################################################################################
# Cluster subnets CIDR
# Control CIDR Range
# variable "prd_subnet_control_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
# variable "dev_subnet_control_range" {
#   description = "The CIDR of the dev control plane"
#   type        = string
# }
variable "prod_subnet_control_range" {
  description = "The CIDR of the dev control plane"
  type        = string
}
variable "stag_wecloud_primary_range" {
  description = "The CIDR of the subnet"
  type        = string
}
# Primary CIDR
# variable "dev_wecloud-primary-range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
# variable "prd_wecloud-primary-range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
# Secondary CIDR
variable "stag_wecloud_pods_range" {
  description = "The CIDR of the subnet"
  type        = string
}
# variable "dev_wecloud_pods_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
# variable "prd_wecloud_pods_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
variable "stag_wecloud_services_range" {
  description = "The CIDR of the subnet"
  type        = string
}
# variable "dev_wecloud_services_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
# variable "prd_wecloud_services_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }

variable "stag_weava_pods_range" {
  description = "The CIDR of the subnet"
  type        = string
}
# variable "dev_weava_pods_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
# variable "prd_weava_pods_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
variable "stag_wecloud_app_pods_range" {
  description = "The CIDR of the subnet"
  type        = string
}
# variable "dev_wecloud_app_pods_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
# variable "prd_wecloud_app_pods_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
variable "stag_wecloud_classifiers_pods_range" {
  description = "The CIDR of the subnet"
  type        = string
}
# variable "dev_wecloud_classifiers_pods_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
# variable "prd_wecloud_classifiers_pods_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
variable "stag_wecloud_box_pods_range" {
  description = "The CIDR of the subnet"
  type        = string
}
# variable "dev_wecloud_box_pods_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
# variable "prd_wecloud_box_pods_range" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
############################################################################
###################
# GCE VPC Network #
###################
# Primary GCE Network
# variable "wecloud-pri-gce-name" {
#   description = "The name of the VPC network"
#   type        = string
# }
# variable "wecloud-pri-gce-cidr" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
# # Public GCE Network
# variable "wecloud-pub-gce-name" {
#   description = "The name of the VPC network"
#   type        = string
# }
# variable "wecloud-pub-gce-cidr" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
#######################
# Endpont VPC Network #
#######################
# Primary Endpoint Network
# variable "wecloud-pri-endpoint-name" {
#   description = "The name of the VPC network"
#   type        = string
# }
# variable "wecloud-pri-endpoint-cidr" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
# # Public Endpoint Network
# variable "wecloud-pub-enpoint-name" {
#   description = "The name of the VPC network"
#   type        = string
# }
# variable "wecloud-pub-endpoint-cidr" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
#########################
# Functions VPC Network #
#########################
# variable "wecloud-functions-name" {
#   description = "The name of the VPC network"
#   type        = string
# }
# variable "wecloud-functions-cidr" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
########################
# CloudSQL VPC Network #
########################
# variable "wecloud-cloudsql-name" {
#   description = "The name of the VPC network"
#   type        = string
# }
# variable "wecloud-cloudsql-cidr" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
#########################
# VPN Peers VPC Network #
#########################
# variable "wecloud-vpn-name" {
#   description = "The name of the VPC network"
#   type        = string
# }
# variable "wecloud-vpn-cidr" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
#####################
# Redis VPC Network #
#####################
# variable "wecloud-redis-name" {
#   description = "The name of the VPC network"
#   type        = string
# }
# variable "wecloud-redis-cidr" {
#   description = "The CIDR of the subnet"
#   type        = string
# }
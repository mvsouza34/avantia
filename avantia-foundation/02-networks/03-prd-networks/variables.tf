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

######################
# Folder's settings #
######################
variable "folder_shared_id" {
  description = "The folder shared's ID"
  type = string
}

######################
# Project's settings #
######################
variable "host_project_id" {
  description = "The host project ID"
  type = string
}

variable "host_vpc_id" {
  description = "Host VPC ID"
  type = string
}

################
# Network's ID #
################
variable "prod_vpc_id" {
  description = "Production VPC ID"
  type = string
}

##########################
# Environment's settings #
##########################
variable "prd_env" {
  description = "Production Environment"
  type = string
}

################# Subnet's names #################
variable "subnet_prd_gke_box_pri_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_weava_pri_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_classifiers_pri_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_srvcs_pri_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_box_pri_ceb_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_classifiers_pri_ceb_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_box_pub_ceb_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_weava_pri_ceb_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_weava_pub_ceb_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_box_pri_cec_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_classifiers_pri_cec_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_box_pub_cec_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_weava_pri_cec_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_weava_pri_02_cec_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_prd_gke_weava_pub_cec_name" {
  description = "The subnet's name"
  type = string
}

################# Subnet's CIDRs #################
variable "subnet_prd_gke_box_pri_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_weava_pri_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_classifiers_pri_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_srvcs_pri_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_box_pri_ceb_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_classifiers_pri_ceb_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_box_pub_ceb_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_weava_pri_ceb_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_weava_pub_ceb_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_box_pri_cec_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_classifiers_pri_cec_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_box_pub_cec_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_weava_pri_cec_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_weava_pri_02_cec_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "subnet_prd_gke_weava_pub_cec_name_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}

################# GKE's services and pods ranges #################
variable "subnet_prd_gke_box_pri_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_box_pri_name_cidr_pods_range" {
  description = "Pod's range"
}
variable "subnet_prd_gke_weava_pri_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_weava_pri_name_cidr_pods_range" {
  description = "Pod's range"
}
variable "subnet_prd_gke_classifiers_pri_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_classifiers_pri_name_cidr_pods_range" {
  description = "Pod's range"
}
variable "subnet_prd_gke_srvcs_pri_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_srvcs_pri_name_cidr_pods_range" {
  description = "Pod's range"
}
variable "subnet_prd_gke_box_pri_ceb_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_box_pri_ceb_name_cidr_pods_range" {
  description = "Pod's range"
}
variable "subnet_prd_gke_classifiers_pri_ceb_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_classifiers_pri_ceb_name_cidr_pods_range" {
  description = "Pod's range"
  type = string
}
variable "subnet_prd_gke_box_pub_ceb_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_box_pub_ceb_name_cidr_pods_range" {
  description = "Pod's range"
  type = string
}
variable "subnet_prd_gke_weava_pri_ceb_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_weava_pri_ceb_name_cidr_pods_range" {
  description = "Pod's range"
  type = string
}
variable "subnet_prd_gke_weava_pub_ceb_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_weava_pub_ceb_name_cidr_pods_range" {
  description = "Pod's range"
  type = string
}
variable "subnet_prd_gke_box_pri_cec_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_box_pri_cec_name_cidr_pods_range" {
  description = "Pod's range"
  type = string
}
variable "subnet_prd_gke_classifiers_pri_cec_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_classifiers_pri_cec_name_cidr_pods_range" {
  description = "Pod's range"
  type = string
}
variable "subnet_prd_gke_box_pub_cec_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_box_pub_cec_name_cidr_pods_range" {
  description = "Pod's range"
  type = string
}
variable "subnet_prd_gke_weava_pri_cec_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_weava_pri_cec_name_cidr_pods_range" {
  description = "Pod's range"
  type = string
}
variable "subnet_prd_gke_weava_pri_02_cec_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_weava_pri_02_cec_name_cidr_pods_range" {
  description = "Pod's range"
  type = string
}
variable "subnet_prd_gke_weava_pub_cec_name_cidr_services_range" {
  description = "Services's range"
  type = string
}
variable "subnet_prd_gke_weava_pub_cec_name_cidr_pods_range" {
  description = "Pod's range"
  type = string
}

################# PROD GCE's NETWORK SETTINGS FROM US CENTRAL1 A #################

################# Subnet's names #################
variable "subnet_prd_gce_pri_cea_name" {
  description = "Services CIDR"
  type = string
}
variable "subnet_prd_gce_pub_cea_name" {
  description = "Pods CIDR"
  type = string
}
variable "subnet_prd_gce_pri_ceb_name" {
  description = "Services CIDR"
  type = string
}
variable "subnet_prd_gce_pub_ceb_name" {
  description = "Pods CIDR"
  type = string
}
variable "subnet_prd_gce_pri_cec_name" {
  description = "Services CIDR"
  type = string
}
variable "subnet_prd_gce_pub_cec_name" {
  description = "Pods CIDR"
  type = string
}

################# Subnet's CIDRs #################
variable "subnet_prd_gce_pri_cea_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_prd_gce_pub_cea_name_cidr" {
  description = "Pods CIDR"
  type = string
}
variable "subnet_prd_gce_pri_ceb_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_prd_gce_pub_ceb_name_cidr" {
  description = "Pods CIDR"
  type = string
}
variable "subnet_prd_gce_pri_cec_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_prd_gce_pub_cec_name_cidr" {
  description = "Pods CIDR"
  type = string
}

################# PROD ENDPOINTS AND SERVICES SETTINGS FROM US CENTRAL1 A #################

################# Subnet's names #################
variable "subnet_prd_pub_end_svc_cea_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_prd_pri_end_svc_cea_name" {
  description = "Subnet's name"
  type = string
}

################# Subnet's CIDRs #################
variable "subnet_prd_pub_end_svc_cea_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_prd_pri_end_svc_cea_name_cidr" {
  description = "Pods CIDR"
  type = string
}

################# PROD ENDPOINTS AND SERVICES SETTINGS FROM US CENTRAL1 B #################

################# Subnet's names #################
variable "subnet_prd_pub_end_svc_ceb_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_prd_pri_end_svc_ceb_name" {
  description = "Subnet's name"
  type = string
}

################# Subnet's CIDRs #################
variable "subnet_prd_pub_end_svc_ceb_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_prd_pri_end_svc_ceb_name_cidr" {
  description = "Pods CIDR"
  type = string
}

################# PROD VPN PEER SERVICES SETTINGS FROM US CENTRAL1 A #################

################# Subnet's names #################
variable "subnet_prd_pub_vpn_peer_srvcs_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_prd_pri_nat_gtw_name" {
  description = "Subnet's name"
  type = string
}

################# Subnet's CIDRs #################
variable "subnet_prd_pub_vpn_peer_srvcs_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_prd_pri_nat_gtw_name_cidr" {
  description = "Pods CIDR"
  type = string
}

################# PROD NAT GATEWAY SETTINGS FROM US CENTRAL1 B #################

################# Subnet's names #################
variable "subnet_prd_pub_nat_gtw_name_ceb" {
  description = "Subnet's name"
  type = string
}

################# Subnet's CIDRs #################
variable "subnet_prd_pub_nat_gtw_name_ceb_cidr" {
  description = "Services CIDR"
  type = string
}

################# PROD NAT GATEWAY SETTINGS FROM US CENTRAL1 C #################

################# Subnet's names #################
variable "subnet_prd_pri_end_svc_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_prd_pub_end_svc_cec_name" {
  description = "Subnet's name"
  type = string
}

################# Subnet's CIDRs #################
variable "subnet_prd_pri_end_svc_cec_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_prd_pub_end_svc_cec_name_cidr" {
  description = "Pods CIDR"
  type = string
}

################# PROD VPN PEER SERVICES AND NAT GATEWAY SETTINGS FROM US CENTRAL1 C #################

################# Subnet's names #################
variable "subnet_prd_pub_vpn_peer_srvcs_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_prd_pub_nat_gtw_name_cec" {
  description = "Subnet's name"
  type = string
}

################# Subnet's CIDRs #################
variable "subnet_prd_pub_vpn_peer_srvcs_cec_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_prd_pub_nat_gtw_name_cec_cidr" {
  description = "Pods CIDR"
  type = string
}
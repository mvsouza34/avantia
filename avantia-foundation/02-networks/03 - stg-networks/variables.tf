##########################################
# STG Network's settings - US CENTRAL1 A #
##########################################

######################
# Region's settings #
######################
variable "region_id" {
  description = "Just the region ID"
  type = string
}

######################
# Network's settings #
######################

variable "subnet_gke_weava_pri_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_weava_pri_stg_gke_us_ce1_a1_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "weava_pri_stg_gke_us_ce1_a1_secondary_range_services" {
  description = "services-range"
  type = string
}
variable "weava_pri_stg_gke_us_ce1_a1_secondary_range_pods" {
  description = "pod-range"
  type = string
}
variable "subnet_gke_weava_pub_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_weava_pub_stg_gke_us_ce1_a1_cidr" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_stg_gke_us_ce1_a1_secondary_range_services" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_stg_gke_us_ce1_a1_secondary_range_pods" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "subnet_gke_avanuv_pri_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pri_stg_gke_us_ce1_a1idr" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_stg_gke_us_ce1_a1_secondary_range_services" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_stg_gke_us_ce1_a1_secondary_range_pods" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "subnet_gke_avanuv_pub_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pub_stg_gke_us_ce1_a1_cidr" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_stg_gke_us_ce1_a1_secondary_range_services" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_stg_gke_us_ce1_a1_secondary_range_pods" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "subnet_gke_shrd_pri_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pri_stg_gke_us_ce1_a1_cidr" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_stg_gke_us_ce1_a1_secondary_range_services" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_stg_gke_us_ce1_a1_secondary_range_pods" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "subnet_gke_shrd_pub_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pub_stg_gke_us_ce1_a1_cidr" {
  description = "The subnet 06 is CIDR"
  type = string
}
variable "shrd_pub_stg_gke_us_ce1_a1_secondary_range_services" {
  description = "Services CIDR"
  type = string
}
variable "shrd_pub_stg_gke_us_ce1_a1_secondary_range_pods" {
  description = "Pods CIDR"
  type = string
}

##########################################
# STG Network's settings - US CENTRAL1 B #
##########################################

variable "subnet_gke_weava_pri_stg_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_weava_pub_stg_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pri_stg_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pub_stg_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pri_stg_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pub_stg_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
# Subnet's CIDRs
variable "subnet_gke_weava_pri_stg_gke_us_ce1_b1_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "weava_pri_stg_gke_us_ce1_b1_secondary_range_services" {
  description = "services-range"
  type = string
}
variable "weava_pri_stg_gke_us_ce1_b1_secondary_range_pods" {
  description = "pod-range"
  type = string
}
variable "subnet_gke_weava_pub_stg_gke_us_ce1_b1_cidr" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_stg_gke_us_ce1_b1_secondary_range_services" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_stg_gke_us_ce1_b1_secondary_range_pods" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "subnet_gke_avanuv_pri_stg_gke_us_ce1_b1idr" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_stg_gke_us_ce1_b1_secondary_range_services" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_stg_gke_us_ce1_b1_secondary_range_pods" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "subnet_gke_avanuv_pub_stg_gke_us_ce1_b1_cidr" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_stg_gke_us_ce1_b1_secondary_range_services" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_stg_gke_us_ce1_b1_secondary_range_pods" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "subnet_gke_shrd_pri_stg_gke_us_ce1_b1_cidr" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_stg_gke_us_ce1_b1_secondary_range_services" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_stg_gke_us_ce1_b1_secondary_range_pods" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "subnet_gke_shrd_pub_stg_gke_us_ce1_b1_cidr" {
  description = "The subnet 06 is CIDR"
  type = string
}
variable "shrd_pub_stg_gke_us_ce1_b1_secondary_range_services" {
  description = "Services CIDR"
  type = string
}
variable "shrd_pub_stg_gke_us_ce1_b1_secondary_range_pods" {
  description = "Pods CIDR"
  type = string
}

##############################################
# STG GKE Network's settings - US CENTRAL1 C #
##############################################

variable "subnet_gke_weava_pri_stg_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_weava_pub_stg_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pri_stg_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pub_stg_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pri_stg_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pub_stg_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_weava_pri_stg_gke_us_ce1_c1_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "weava_pri_stg_gke_us_ce1_c1_secondary_range_services" {
  description = "services-range"
  type = string
}
variable "weava_pri_stg_gke_us_ce1_c1_secondary_range_pods" {
  description = "pod-range"
  type = string
}
variable "subnet_gke_weava_pub_stg_gke_us_ce1_c1_cidr" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_stg_gke_us_ce1_c1_secondary_range_services" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_stg_gke_us_ce1_c1_secondary_range_pods" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "subnet_gke_avanuv_pri_stg_gke_us_ce1_c1idr" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_stg_gke_us_ce1_c1_secondary_range_services" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_stg_gke_us_ce1_c1_secondary_range_pods" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "subnet_gke_avanuv_pub_stg_gke_us_ce1_c1_cidr" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_stg_gke_us_ce1_c1_secondary_range_services" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_stg_gke_us_ce1_c1_secondary_range_pods" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "subnet_gke_shrd_pri_stg_gke_us_ce1_c1_cidr" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_stg_gke_us_ce1_c1_secondary_range_services" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_stg_gke_us_ce1_c1_secondary_range_pods" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "subnet_gke_shrd_pub_stg_gke_us_ce1_c1_cidr" {
  description = "The subnet 06 is CIDR"
  type = string
}
variable "shrd_pub_stg_gke_us_ce1_c1_secondary_range_services" {
  description = "Services CIDR"
  type = string
}
variable "shrd_pub_stg_gke_us_ce1_c1_secondary_range_pods" {
  description = "Pods CIDR"
  type = string
}

##############################################
# STG GCE Network's settings - US CENTRAL1 A #
##############################################
variable "subnet_stg_gce_pri_cea_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_gce_pri_cea_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_stg_gce_pub_cea_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_gce_pub_cea_name_cidr" {
  description = "Pods CIDR"
  type = string
}

##############################################
# STG GCE Network's settings - US CENTRAL1 B #
##############################################
variable "subnet_stg_gce_pri_ceb_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_gce_pri_ceb_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_stg_gce_pub_ceb_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_gce_pub_ceb_name_cidr" {
  description = "Pods CIDR"
  type = string
}

##############################################
# STG GCE Network's settings - US CENTRAL1 C #
##############################################
variable "subnet_stg_gce_pri_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_gce_pri_cec_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_stg_gce_pub_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_gce_pub_cec_name_cidr" {
  description = "Pods CIDR"
  type = string
}

#################################################################
# STG Endpoints and Services Network's settings - US CENTRAL1 A #
#################################################################
variable "subnet_stg_end_svc_pri_cea_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_end_svc_pri_cea_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_stg_end_svc_pub_cea_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_end_svc_pub_cea_name_cidr" {
  description = "Pods CIDR"
  type = string
}

#################################################################
# STG Endpoints and Services Network's settings - US CENTRAL1 B #
#################################################################
variable "subnet_stg_end_svc_pri_ceb_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_end_svc_pri_ceb_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_stg_end_svc_pub_ceb_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_end_svc_pub_ceb_name_cidr" {
  description = "Pods CIDR"
  type = string
}

#################################################################
# STG Endpoints and Services Network's settings - US CENTRAL1 C #
#################################################################
variable "subnet_stg_end_svc_pri_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_end_svc_pri_cec_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_stg_end_svc_pub_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_end_svc_pub_cec_name_cidr" {
  description = "Pods CIDR"
  type = string
}

#############################################################
# STG VPN PEER and SRVCs Network's settings - US CENTRAL1 A #
#############################################################
variable "subnet_stg_vpn_peer_srvcs_pub_cea_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_vpn_peer_srvcs_pub_cea_name_cidr" {
  description = "Services CIDR"
  type = string
}

#############################################################
# STG VPN PEER and SRVCs Network's settings - US CENTRAL1 B #
#############################################################
variable "subnet_stg_vpn_peer_srvcs_pub_ceb_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_vpn_peer_srvcs_pub_ceb_name_cidr" {
  description = "Services CIDR"
  type = string
}

#############################################################
# STG VPN PEER and SRVCs Network's settings - US CENTRAL1 C #
#############################################################
variable "subnet_stg_vpn_peer_srvcs_pub_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_vpn_peer_srvcs_pub_cec_name_cidr" {
  description = "Services CIDR"
  type = string
}

######################################################
# STG NAT Gateway Network's settings - US CENTRAL1 A #
######################################################
variable "subnet_stg_nat_gtw_pub_cea_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_nat_gtw_pub_cea_name_cidr" {
  description = "Services CIDR"
  type = string
}

######################################################
# STG NAT Gateway Network's settings - US CENTRAL1 B #
######################################################
variable "subnet_stg_nat_gtw_pub_ceb_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_nat_gtw_pub_ceb_name_cidr" {
  description = "Services CIDR"
  type = string
}

######################################################
# STG NAT Gateway Network's settings - US CENTRAL1 C #
######################################################
variable "subnet_stg_nat_gtw_pub_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_stg_nat_gtw_pub_cec_name_cidr" {
  description = "Services CIDR"
  type = string
}
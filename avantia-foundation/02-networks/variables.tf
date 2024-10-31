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
# Project's settings #
######################
variable "folder_shared_id" {
  description = "The folder shared's ID"
  type = string
}

##########################
# Environment's settings #
##########################
variable "env" {
  description = "Environment Identifier"
  type = string
}

######################
# Network's settings #
######################

# Subnet's names
variable "subnet_gke_weava_pri_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_weava_pub_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pri_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pub_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pri_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pub_name" {
  description = "The subnet's name"
  type = string
}

# Subnet's CIDRs
variable "subnet_gke_weava_pri_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "weava_pri_secondary_range_services" {
  description = "services-range"
  type = string
}
variable "weava_pri_secondary_range_pods" {
  description = "pod-range"
  type = string
}


variable "subnet_gke_weava_pub_cidr" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_secondary_range_services" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_secondary_range_pods" {
  description = "The subnet 02 is CIDR"
  type = string
}


variable "subnet_gke_avanuv_pri_cidr" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_secondary_range_services" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_secondary_range_pods" {
  description = "The subnet 03 is CIDR"
  type = string
}


variable "subnet_gke_avanuv_pub_cidr" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_secondary_range_services" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_secondary_range_pods" {
  description = "The subnet 04 is CIDR"
  type = string
}


variable "subnet_gke_shrd_pri_cidr" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_secondary_range_services" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_secondary_range_pods" {
  description = "The subnet 05 is CIDR"
  type = string
}

variable "subnet_gke_shrd_pub_cidr" {
  description = "The subnet 06 is CIDR"
  type = string
}
variable "shrd_pub_secondary_range_services" {
  description = "Services CIDR"
  type = string
}
variable "shrd_pub_secondary_range_pods" {
  description = "Pods CIDR"
  type = string
}


########################################################################## END OF VARIABLES FOR USE OF GKE FROM US-CENTRAL1-A   ##########################################################################
########################################################################## START OF VARIABLES FOR USE OF GKE FROM US-CENTRAL1-B ##########################################################################

######################
# Network's settings #
######################

# Subnet's names
variable "subnet_gke_weava_pri_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_weava_pub__gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pri_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pub_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pri_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pub_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}

# Subnet's CIDRs
variable "subnet_gke_weava_pri_gke_us_ce1_b1_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "weava_pri_gke_us_ce1_b1_secondary_range_services" {
  description = "services-range"
  type = string
}
variable "weava_pri_gke_us_ce1_b1_secondary_range_pods" {
  description = "pod-range"
  type = string
}


variable "subnet_gke_weava_pub_gke_us_ce1_b1_cidr" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_gke_us_ce1_b1_secondary_range_services" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_gke_us_ce1_b1_secondary_range_pods" {
  description = "The subnet 02 is CIDR"
  type = string
}


variable "subnet_gke_avanuv_pri_gke_us_ce1_b1idr" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_gke_us_ce1_b1_secondary_range_services" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_gke_us_ce1_b1_secondary_range_pods" {
  description = "The subnet 03 is CIDR"
  type = string
}


variable "subnet_gke_avanuv_pub_gke_us_ce1_b1_cidr" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_gke_us_ce1_b1_secondary_range_services" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_gke_us_ce1_b1_secondary_range_pods" {
  description = "The subnet 04 is CIDR"
  type = string
}


variable "subnet_gke_shrd_pri_gke_us_ce1_b1_cidr" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_gke_us_ce1_b1_secondary_range_services" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_gke_us_ce1_b1_secondary_range_pods" {
  description = "The subnet 05 is CIDR"
  type = string
}

variable "subnet_gke_shrd_pub_gke_us_ce1_b1_cidr" {
  description = "The subnet 06 is CIDR"
  type = string
}
variable "shrd_pub_gke_us_ce1_b1_secondary_range_services" {
  description = "Services CIDR"
  type = string
}
variable "shrd_pub_gke_us_ce1_b1_secondary_range_pods" {
  description = "Pods CIDR"
  type = string
}

########################################################################## END OF VARIABLES FOR USE OF GKE FROM US-CENTRAL1-B   ##########################################################################
########################################################################## START OF VARIABLES FOR USE OF GKE FROM US-CENTRAL1-C ##########################################################################

# Subnet's names
variable "subnet_gke_weava_pri_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_weava_pub__gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pri_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pub_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pri_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pub_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}

# Subnet's CIDRs
variable "subnet_gke_weava_pri_gke_us_ce1_c1_cidr" {
  description = "The subnet 01 is cidr"
  type = string
}
variable "weava_pri_gke_us_ce1_c1_secondary_range_services" {
  description = "services-range"
  type = string
}
variable "weava_pri_gke_us_ce1_c1_secondary_range_pods" {
  description = "pod-range"
  type = string
}


variable "subnet_gke_weava_pub_gke_us_ce1_c1_cidr" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_gke_us_ce1_c1_secondary_range_services" {
  description = "The subnet 02 is CIDR"
  type = string
}
variable "weava_pub_gke_us_ce1_c1_secondary_range_pods" {
  description = "The subnet 02 is CIDR"
  type = string
}


variable "subnet_gke_avanuv_pri_gke_us_ce1_c1idr" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_gke_us_ce1_c1_secondary_range_services" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "avanuv_pri_gke_us_ce1_c1_secondary_range_pods" {
  description = "The subnet 03 is CIDR"
  type = string
}


variable "subnet_gke_avanuv_pub_gke_us_ce1_c1_cidr" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_gke_us_ce1_c1_secondary_range_services" {
  description = "The subnet 04 is CIDR"
  type = string
}
variable "avanuv_pub_gke_us_ce1_c1_secondary_range_pods" {
  description = "The subnet 04 is CIDR"
  type = string
}


variable "subnet_gke_shrd_pri_gke_us_ce1_c1_cidr" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_gke_us_ce1_c1_secondary_range_services" {
  description = "The subnet 05 is CIDR"
  type = string
}
variable "shrd_pri_gke_us_ce1_c1_secondary_range_pods" {
  description = "The subnet 05 is CIDR"
  type = string
}

variable "subnet_gke_shrd_pub_gke_us_ce1_c1_cidr" {
  description = "The subnet 06 is CIDR"
  type = string
}
variable "shrd_pub_gke_us_ce1_c1_secondary_range_services" {
  description = "Services CIDR"
  type = string
}
variable "shrd_pub_gke_us_ce1_c1_secondary_range_pods" {
  description = "Pods CIDR"
  type = string
}

########################################################################## END OF DEV VARS   ########################################################################
########################################################################## START OF STG VARS ########################################################################

# Subnet's names
variable "subnet_gke_weava_pri_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_weava_pub_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pri_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_avanuv_pub_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pri_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_shrd_pub_stg_gke_us_ce1_a1_name" {
  description = "The subnet's name"
  type = string
}

# Subnet's CIDRs
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

########################################################################## END OF US-CENTRAL1-A STG VARS   ########################################################################
########################################################################## START OF US-CENTRAL-B STG VARS  ########################################################################

# Subnet's names
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

########################################################################## END OF US-CENTRAL1-B STG VARS   ########################################################################
########################################################################## START OF US-CENTRAL-C STG VARS  ########################################################################

# Subnet's names
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

# Subnet's CIDRs
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


########################################################################## END OF DEV and STG VARS   ########################################################################
########################################################################## START OF DEV and STG VARS ########################################################################

################# Environment #################
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
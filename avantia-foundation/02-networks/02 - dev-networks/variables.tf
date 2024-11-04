######################
# Region's settings #
######################
variable "region_id" {
  description = "Just the region ID"
  type = string
}

##############################################
# DEV GKE Network's settings - US CENTRAL1 A #
##############################################


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
variable "subnet_gke_avanuv_pub_name" {
  description = "The subnet's name"
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
variable "subnet_gke_shrd_pri_name" {
  description = "The subnet's name"
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
variable "subnet_gke_shrd_pub_name" {
  description = "The subnet's name"
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

##############################################
# DEV GKE Network's settings - US CENTRAL1 B #
##############################################

variable "subnet_gke_weava_pri_gke_us_ce1_b1_name" {
  description = "The subnet's name"
  type = string
}
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
variable "subnet_gke_weava_pri_dev_gke_us_ceb_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_weava_pri_dev_gke_us_ceb_cidr" {
  description = "The subnet 06 is CIDR"
  type = string
}
variable "weava_pri_dev_gke_us_ceb_secondary_range_services" {
  description = "Services CIDR"
  type = string
}
variable "weava_pri_dev_gke_us_ceb_secondary_range_pods" {
  description = "Pods CIDR"
  type = string
}
variable "subnet_gke_weava_pub__gke_us_ce1_b1_name" {
  description = "The subnet's name"
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
variable "subnet_gke_avanuv_pri_gke_us_ce1_b1_name" {
  description = "The subnet's name"
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
variable "subnet_gke_avanuv_pub_gke_us_ce1_b1_name" {
  description = "The subnet's name"
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
variable "subnet_gke_shrd_pri_gke_us_ce1_b1_name" {
  description = "The subnet's name"
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
variable "subnet_gke_shrd_pub_gke_us_ce1_b1_name" {
  description = "The subnet's name"
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

##############################################
# DEV GKE Network's settings - US CENTRAL1 C #
##############################################
variable "subnet_gke_weava_pri_gke_us_ce1_c1_name" {
  description = "The subnet's name"
  type = string
}
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
variable "subnet_gke_weava_pub__gke_us_ce1_c1_name" {
  description = "The subnet's name"
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
variable "subnet_gke_avanuv_pri_gke_us_ce1_c1_name" {
  description = "The subnet's name"
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
variable "subnet_gke_avanuv_pub_gke_us_ce1_c1_name" {
  description = "The subnet's name"
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
variable "subnet_gke_weava_pri_gke_us_ce1_c1_c2_name" {
  description = "The subnet's name"
  type = string
}
variable "subnet_gke_weava_pri_gke_us_ce1_c1_c2_cidr" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "weava_pri_gke_us_ce1_c1_c2_secondary_range_services" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "weava_pri_gke_us_ce1_c1_c2_secondary_range_pods" {
  description = "The subnet 03 is CIDR"
  type = string
}
variable "subnet_gke_shrd_pri_gke_us_ce1_c1_name" {
  description = "The subnet's name"
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
variable "subnet_gke_shrd_pub_gke_us_ce1_c1_name" {
  description = "The subnet's name"
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

##############################################
# DEV GCE Network's settings - US CENTRAL1 A #
##############################################

variable "subnet_dev_gce_pri_cea_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_dev_gce_pri_cea_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_dev_gce_pub_cea_name_cidr" {
  description = "Pods CIDR"
  type = string
}
variable "subnet_dev_gce_pub_cea_name" {
  description = "Subnet's name"
  type = string
}

##############################################
# DEV GCE Network's settings - US CENTRAL1 B #
##############################################

variable "subnet_dev_gce_pri_ceb_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_dev_gce_pri_ceb_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_dev_gce_pub_ceb_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_dev_gce_pub_ceb_name_cidr" {
  description = "Pods CIDR"
  type = string
}

##############################################
# DEV GCE Network's settings - US CENTRAL1 C #
##############################################
variable "subnet_dev_gce_pri_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_dev_gce_pri_cec_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_dev_gce_pub_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_dev_gce_pub_cec_name_cidr" {
  description = "Pods CIDR"
  type = string
}

################################################################
# DEV ENDPOINT AND SERVICES Network's settings - US CENTRAL1 A #
################################################################
variable "subnet_dev_end_svc_pri_cea_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_dev_end_svc_pri_cea_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_dev_end_svc_pub_cea_name_cidr" {
  description = "Pods CIDR"
  type = string
}
variable "subnet_dev_end_svc_pub_cea_name" {
  description = "Subnet's name"
  type = string
}

################################################################
# DEV ENDPOINT AND SERVICES Network's settings - US CENTRAL1 B #
################################################################
variable "subnet_dev_end_svc_pri_ceb_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_dev_end_svc_pri_ceb_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_dev_end_svc_pub_ceb_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_dev_end_svc_pub_ceb_name_cidr" {
  description = "Pods CIDR"
  type = string
}

################################################################
# DEV ENDPOINT AND SERVICES Network's settings - US CENTRAL1 C #
################################################################
variable "subnet_dev_end_svc_pri_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_dev_end_svc_pri_cec_name_cidr" {
  description = "Services CIDR"
  type = string
}
variable "subnet_dev_end_svc_pub_cec_name" {
  description = "Subnet's name"
  type = string
}
variable "subnet_dev_end_svc_pub_cec_name_cidr" {
  description = "Pods CIDR"
  type = string
}

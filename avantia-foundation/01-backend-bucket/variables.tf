###################
# Region Settings #
###################
variable "region_id" {
  description = "The region ID"
  type = string
}

######################
# Project's Settings #
######################
variable "core_project_id" {
  description = "The Core project ID"
  type = string
}

#######################
# Bucket's properties #
#######################
variable "bucket_name" {
  description = "The name of the bucket"
  type = string
}
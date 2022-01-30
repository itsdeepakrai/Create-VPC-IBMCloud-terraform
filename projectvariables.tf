#---------------------------------------------------------
## DEFINE VPC name and available Ressource Group (IAM)
#---------------------------------------------------------
variable "vpc-name" {
  description = "Provide the name of your VPC"
  default = "vpc-space-test"
}

variable "resource-group" {
    description = "The Ressource Roup must be defined in IBM Cloud IAM"
    default = "terraform"
}

#---------------------------------------------------------
## DEFINE Region and Zones in US-South Dallas or
## Frankfurt region eu-de
## To switch regin via CLI:  $ibmcloud target -r us-south  
## or   ibmcloud target -r eu-de
#---------------------------------------------------------

variable "ibmcloud_region" {
  description = "Region of VPC like eu-de or us-south"
  default = "us-south"
}
#---------------------------------------------------------
## can use us-south-1 / use-south-2 / use-south-3
## or eu-de-1 / eu-de-2 /eu-de-3
#----------------------------------------------------------
variable "zone1" {
  description = "use  eu-de-1 or us-south-1"
  default = "us-south-1"
}

variable "zone2" {
    description = "use  eu-de-2 or us-south-3"
  default = "us-south-2"
}

variable "zone3" {
    description = "use  eu-de-3 or us-south-3"
  default = "us-south-3"
}



#---------------------------------------------------------
## DEFINE subnets for server in each zone
#---------------------------------------------------------
variable "server-subnet-zone-1" {
  default = "10.240.0.0/24"
}
variable "server-subnet-zone-2" {
  default = "10.240.64.0/24"
}
variable "server-subnet-zone-3" {
  default = "10.240.128.0/24"
}
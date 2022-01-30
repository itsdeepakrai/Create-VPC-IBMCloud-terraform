#---------------------------------------------------------
# Get resource_group id, the "default" will used, if unspecified 
#---------------------------------------------------------

data "ibm_resource_group" "group" {
  name = "terraform"
}


# Resource-1: Create VPC

resource "ibm_is_vpc" "vpc1" {
  name = var.vpc-name
  resource_group = data.ibm_resource_group.group.id
}



#---------------------------------------------------------
# Resource-2: Create Subnets in Zone1 / Zone2 / Zone3
# 
#---------------------------------------------------------
resource "ibm_is_subnet" "server-subnet-zone1" {
  name            = "${var.vpc-name}-${var.zone1}-server"
  vpc             = ibm_is_vpc.vpc1.id
  zone            = var.zone1
  ipv4_cidr_block = var.server-subnet-zone-1
 # public_gateway  = ibm_is_public_gateway.pubgw-zone1.id
}

resource "ibm_is_subnet" "server-subnet-zone2" {
  name            = "${var.vpc-name}-${var.zone2}-server"
  vpc             = ibm_is_vpc.vpc1.id
  zone            = var.zone2
  ipv4_cidr_block = var.server-subnet-zone-2
 # public_gateway  = ibm_is_public_gateway.pubgw-zone2.id
}

resource "ibm_is_subnet" "server-subnet-zone3" {
  name            = "${var.vpc-name}-${var.zone3}-server"
  vpc             = ibm_is_vpc.vpc1.id
  zone            = var.zone3
  ipv4_cidr_block = var.server-subnet-zone-3
 # public_gateway  = ibm_is_public_gateway.pubgw-zone3.id
}


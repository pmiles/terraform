# Create a VPC
module "vpc" {
   source                           = "modules/vpc"
   project                          = "${var.project}"
   vpc_cidr                         = "${var.vpc_cidr}"
   aws_region                       = "${var.aws_region}"
   domain_name                      = "${var.domain_name}"
}

#Create 6 subnets, 2 routes, IGW and NAT
# 3 subnets are private, in AzA, AzB and AzC
# 3 subnets are public in AzA, AzB and AzC
# One route behind the NAT for the private subnets
# One route behind IGW for public
module "net" {
   source                           = "modules/net"
   vpc_name                         = "${module.vpc.vpc_name}"
   vpc_id                           = "${module.vpc.vpc_id}"
   vpc_cidr                         = "${var.vpc_cidr}"
   aws_region                       = "${var.aws_region}"

}

# Create a single security group
module "sg" {
   source                           = "modules/sg"
   vpc_id                           = "${module.vpc.vpc_id}"
}

resource "aws_instance" "web" {
  ami           = "ami-abcdef123"
  instance_type = "t2.micro"

  vpc_security_group_ids = ["${module.sg.sg_id}"]
  tags = {
    Name = "web"
  }
}

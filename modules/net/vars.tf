
variable "vpc_cidr" {
  type        = "map"
  description = "List of VPC CIDRs"
}

variable "aws_region" {
  description = "AWS Region"
}

variable "vpc_name" {
  description = "VPC Name"
}

variable "vpc_id" {
  description = "VPC Id"
}

variable "vpc_cidr" {
  type        = "map"
  description = "List of VPC CIDRs"
}

variable "project" {
  description = "Project Name"
}

variable "aws_region" {
  description = "AWS Region"
}

variable "domain_name" {
  description = "Domain Name"
  default     = "tst.hmpo.net"
}

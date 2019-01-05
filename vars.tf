variable aws_access_key {
  default = "AccEssKey"
}

variable aws_secret_key {
  default = "S3CretKey"
}

variable aws_region {
  default     = "eu-west-2"
  description = "AWS region"
}

variable "vpc_cidr" {
  type    = "map"
  default = {
    vpcnet     = "10.0.0.0/8"
    privateAzA = "10.0.0.0/24"
    privateAzB = "10.0.1.0/24"
    privateAzC = "10.0.2.0/24"
    publicAzA  = "10.1.0.0/24"
    publicAzB  = "10.1.1.0/24"
    publicAzC  = "10.1.2.0/24"
  }
}

variable project {
  default     = "Unset Project"
  description = "The name of the project"
}

variable domain_name {
  default     = "Unset domain"
  description = "DNS of the project"
}

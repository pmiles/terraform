
resource "aws_vpc" "testenv" {
  cidr_block           = "${var.vpc_cidr["vpcnet"]}"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"

  tags {
    Name = "${var.project}"
  }
}

resource "aws_default_route_table" "testenv-static" {
  default_route_table_id = "${aws_vpc.testenv.default_route_table_id}"

  tags {
    Name = "${var.project}-default"
  }
}

resource "aws_vpc_dhcp_options" "testenv" {
  domain_name          = "${var.domain_name}"
  domain_name_servers  = ["AmazonProvidedDNS"]
}

resource "aws_vpc_dhcp_options_association" "testenv" {
    vpc_id = "${aws_vpc.testenv.id}"
    dhcp_options_id = "${aws_vpc_dhcp_options.testenv.id}"
}

resource "aws_subnet" "private-a" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.vpc_cidr["privateAzA"]}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}a"

  tags {
    Name = "Private Subnet A"
  }
}

resource "aws_subnet" "private-b" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.vpc_cidr["privateAzB"]}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}b"

  tags {
    Name = "Private Subnet B"
  }
}

resource "aws_subnet" "private-c" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.vpc_cidr["privateAzC"]}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}c"

  tags {
    Name = "Private Subnet C"
  }
}


resource "aws_subnet" "public-a" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.vpc_cidr["publicAzA"]}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}a"

  tags {
    Name = "Public Subnet A"
  }
}

resource "aws_subnet" "public-b" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.vpc_cidr["publicAzB"]}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}b"

  tags {
    Name = "Public Subnet B"
  }
}

resource "aws_subnet" "public-c" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.vpc_cidr["publicAzC"]}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_region}b"

  tags {
    Name = "Public Subnet C"
  }
}

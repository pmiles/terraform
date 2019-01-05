
resource "aws_internet_gateway" "igw" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name = "${var.vpc_name}-igw"
  }
}

resource "aws_route_table" "internet-routingtable" {
  vpc_id = "${var.vpc_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags {
    Name = "${var.vpc_name}-internet-routingtable"
  }
}

resource "aws_route_table_association" "internet-routingtable-a" {
    subnet_id      = "${aws_subnet.public-a.id}"
    route_table_id = "${aws_route_table.internet-routingtable.id}"
}

resource "aws_route_table_association" "internet-routingtable-b" {
    subnet_id      = "${aws_subnet.public-b.id}"
    route_table_id = "${aws_route_table.internet-routingtable.id}"
}

resource "aws_route_table_association" "internet-routingtable-c" {
    subnet_id      = "${aws_subnet.public-c.id}"
    route_table_id = "${aws_route_table.internet-routingtable.id}"
}

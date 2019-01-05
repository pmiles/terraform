
resource "aws_eip" "nat-a" {
  vpc = true
}

resource "aws_nat_gateway" "nat-gw-a" {
  allocation_id = "${aws_eip.nat-a.id}"
  subnet_id     = "${aws_subnet.public-a.id}"
  depends_on    = [
    "aws_internet_gateway.igw"
  ]
}

resource "aws_route_table" "nat-routingtable" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name = "${var.vpc_name}-nat-routingtable"
  }
}

resource "aws_route" "nat-route" {
  route_table_id            = "${aws_route_table.nat-routingtable.id}"
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id            = "${aws_nat_gateway.nat-gw-a.id}"
}

resource "aws_route_table_association" "nat-routingtable-0" {
  subnet_id      = "${aws_subnet.private-a.id}"
  route_table_id = "${aws_route_table.nat-routingtable.id}"
}

resource "aws_route_table_association" "nat-routingtable-1" {
  subnet_id      = "${aws_subnet.private-b.id}"
  route_table_id = "${aws_route_table.nat-routingtable.id}"
}

resource "aws_route_table_association" "nat-routingtable-2" {
  subnet_id      = "${aws_subnet.private-c.id}"
  route_table_id = "${aws_route_table.nat-routingtable.id}"
}

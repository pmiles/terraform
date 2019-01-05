output "private-a" {
  value = "${aws_subnet.private-a.id}"
}

output "private-b" {
  value = "${aws_subnet.private-b.id}"
}

output "private-c" {
  value = "${aws_subnet.private-c.id}"
}

output "public-a" {
  value = "${aws_subnet.public-a.id}"
}

output "public-b" {
  value = "${aws_subnet.public-b.id}"
}

output "public-c" {
  value = "${aws_subnet.public-c.id}"
}

output "routing_table_ids" {
  value =  [ "${aws_route_table.nat-routingtable.id}" ]
}

output "nat-public-ip" {
  value = "${aws_nat_gateway.nat-gw-a.public_ip}"
}

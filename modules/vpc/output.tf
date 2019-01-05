
output "vpc_id" {
  value = "${aws_vpc.testenv.id}"
}

output "vpc_name" {
  value = "${aws_vpc.testenv.tags["Name"]}"
}

output "route_table_id" {
  value = ["${aws_default_route_table.testenv-static.default_route_table_id}"]
}

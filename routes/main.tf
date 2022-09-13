resource "aws_route_table" "route-tables" {
  vpc_id = var.vpc_id
  tags = {
    Name = "${var.name}-rt"
  }
}

//resource "aws_route_table_association" "assoc" {
//  count          = length(var.subnet_ids[var.name].out[*].id)
//  subnet_id      = element(var.subnet_ids[var.name].out[*].id, count.index)
//  route_table_id = aws_route_table.route-tables.id
//}

resource "local_file" "foo" {
  content  = var.subnet_ids["${var.name}"]
  filename = "/tmp/out"
}



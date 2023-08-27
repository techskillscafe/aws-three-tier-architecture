variable route_tables{}

resource "aws_route_table" "route_tables" {
  for_each = var.route_tables

  vpc_id = aws_vpc.aws_vpcs[each.value.vpc].id

  # This route is for the Internet Gateway (public route)
  route {
    count      = var.gateway_id != null && var.nat_gateway_id == null ? 1 : 0
    cidr_block = each.value.cidr_block
    gateway_id = aws_internet_gateway.gw
  }

  # This route is for the NAT Gateway (private route)
  route {
    count           = var.nat_gateway_id != null && var.gateway_id == null ? 1 : 0
    cidr_block      = each.value.cidr_block
    nat_gateway_id  = aws_nat_gateway.nat_gateways[each.value.nat_gateway_id].id
  }

  tags = each.value.tags
}

resource "aws_route_table_association" "this" {
  for_each = {
    for key, value in var.route_tables : 
      key => value.subnets 
  }

  count = length(lookup(var.route_tables[each.key], "subnets"))

  subnet_id      = aws_subnet.main[lookup(var.route_tables[each.key], "subnets")[count.index]].id
  route_table_id = aws_route_table.route_tables[each.key].id
}

variable "nat_eips" {}
variable "nat_gateways" {}

resource "aws_eip" "nat_eip" {
  for_each = var.nat_eips

  domain        = each.value.domain
  depends_on = [aws_internet_gateway.internet_gateways[each.value.igw]]
}

# NAT
resource "aws_nat_gateway" "nat_gateway" {
  for_each = var.nat_eips

  allocation_id = aws_eip.nat_eips[each.value.nat_eip].id
  subnet_id     = aws_subnet.aws_subnets[each.value.subnet].id

  tags = each.value.tags

  depends_on = [aws_eip.nat_eips[each.value.nat_eip]]
}
variable "aws_internet_gateways" {}

resource "aws_internet_gateway" "gw" {
  for_each   = var.aws_internet_gateways
  
  vpc_id     = aws_vpc.aws_vpcs[each.value.vpc].id
  tags = each.value.tags
}

resource "aws_subnet" "main" {
  for_each = var.aws_subnets

  vpc_id     = aws_vpc.aws_vpcs[each.value.vpc].id
  cidr_block = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = each.value.tags
}
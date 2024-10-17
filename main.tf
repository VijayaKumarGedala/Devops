resource "aws_vpc" "base" {
  cidr_block = var.vpc_config.cidr_block
  tags       = var.vpc_config.tags
}

resource "aws_subnet" "public" {
  count = length(var.public_subnets)
  vpc_id = aws_vpc.base.id
  cidr_block = var.public_subnets[count.index].cidr_block
  availability_zone = var.public_subnets[count.index].az
  tags = var.public_subnets[count.index].tags
  depends_on = [ aws_vpc.base ]
  }

resource "aws_subnet" "private" {
  count = length(var.private_subnets)
  vpc_id = aws_vpc.base.id
  cidr_block = var.private_subnets[count.index].cidr_block
  availability_zone = var.private_subnets[count.index].az
  tags = var.private_subnets[count.index].tags
  depends_on = [ aws_vpc.base ]
  }


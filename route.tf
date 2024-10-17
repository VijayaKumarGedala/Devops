resource "aws_route_table" "public" {
  vpc_id = aws_vpc.base.id
  count = length(var.public_subnets) > 0 ? 1:0
  tags = {
    Name = "public"
  }
  depends_on = [ aws_vpc.base ]
}

resource "aws_route_table_association" "public" {
  count = length(var.public_subnets)
  subnet_id      = var.public_subnets[count.index].id
  route_table_id = aws_route_table.public[0].id
  depends_on = [ aws_route_table.public , aws_subnet.public ]
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.base.id
  count = length(var.private_subnets) > 0 ? 1:0
  tags = {
    Name = "private"
  }
  depends_on = [ aws_vpc.base ]
}
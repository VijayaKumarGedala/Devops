resource "aws_internet_gateway" "base" {
  vpc_id = aws_vpc.base.id
  count = length(var.public_subnets) > 0 ? 1:0
  tags = {
    Name = "base-igw"
  }
  depends_on = [ aws_vpc.base ]
}
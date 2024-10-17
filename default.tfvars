vpc_config = {
  description = "Configuration for VPC"
  name        = "base"
  cidr_block  = "10.0.0.0/16"
  tags = {
    Name = "base1"
  }
}
public_subnets = [{
  az         = "ap-south-1a"
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "web_1"
  }
  },
  {
  az         = "ap-south-1b"
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "web_2"
  }
}]

private_subnets = [
  {
  az         = "ap-south-1a"
  cidr_block = "10.0.3.0/24"
  tags = {
    Name = "app-1"
  }
  },
  {
  az         = "ap-south-1b"
  cidr_block = "10.0.4.0/24"
  tags = {
    Name = "app-2"
  }
  },
  {
  az         = "ap-south-1a"
  cidr_block = "10.0.5.0/24"
  tags = {
    Name = "db-1"
  }
  },
  {
  az         = "ap-south-1b"
  cidr_block = "10.0.6.0/24"
  tags = {
    Name = "db-2"
  }
}]

variable "vpc_config" {
  description = "Configuration for VPC"
  type = object({
    name       = string
    cidr_block = string
    tags       = map(string)
  })
}

 variable "public_subnets" {
  type = list(object({
    cidr_block = string
    az         = string
    tags       = map(string)
  }))
  description = "this refers to the public subnets"
}

variable "private_subnets" {
  type = list(object({
    cidr_block = string
    az         = string
    tags       = map(string)
  }))
  description = "this refers to the private subnets"
}
 

  

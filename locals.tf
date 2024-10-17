locals{
    do_we_have_public_sunets = length(var.public_subnets)>0
    do_we_have_private_subnets = length(var.private_subnets)>0
}
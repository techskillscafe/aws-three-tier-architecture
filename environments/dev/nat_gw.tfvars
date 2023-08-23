nat_eips = {
  main = {
    domain = "vpc",
    igw = "main",
  }
}

nat_gateways = {
  main = {
    nat_eip = "main",
    subnet = "frontend_public_subnet1",
    tags = {
      Name = "main",
    },
  }
}
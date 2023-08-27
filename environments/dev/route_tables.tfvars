route_tables = {
  private_main = {
    cidr_block = "0.0.0.0/0"
    vpc         = "main"
    nat_gateway = "main"
    subnets    = ["database_private_subnet1", "database_private_subnet2", "backend_private_subnet1", "backend_private_subnet2"]
    tags  = {
      Name = "private_main"
    }
  },
  public_main = {
    cidr_block  = "0.0.0.0/0"
    vpc         = "main"
    nat_gateway = "main"
    subnets     = ["frontend_public_subnet1", "frontend_public_subnet2"]
    tags  = {
      Name = "public_main"
    }
  }
}
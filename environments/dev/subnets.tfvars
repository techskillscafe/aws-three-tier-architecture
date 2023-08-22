aws_subnets = {
  frontend_public_subnet1 = {
    cidr_block = "10.0.1.0/24"
    vpc = "main"
    availability_zone = "eu-west-1a"
    tags = {
      Name = "frontend-subnet1"
      Description = "Subnet for frontend in eu-west-1a"
    }
  },
  frontend_public_subnet2 = {
    cidr_block = "10.0.2.0/24"
    vpc = "main"
    availability_zone = "eu-west-1b"
    tags = {
      Name = "frontend-subnet2"
      Description = "Subnet for frontend in eu-west-1b"
    }
  },
  database_private_subnet1 = {
    cidr_block = "10.0.3.0/24"
    vpc = "main"
    availability_zone = "eu-west-1a"
    tags = {
      Name = "database-subnet1"
      Description = "Subnet for database in eu-west-1a"
    }
  },
  database_private_subnet2 = {
    cidr_block = "10.0.4.0/24"
    vpc = "main"
    availability_zone = "eu-west-1b"
    tags = {
      Name = "database-subnet2"
      Description = "Subnet for database in eu-west-1b"
    }
  },
  backend_private_subnet1 = {
    cidr_block = "10.0.5.0/24"
    vpc = "main"
    availability_zone = "eu-west-1a"
    tags = {
      Name = "backend-subnet1"
      Description = "Subnet for backend in eu-west-1a"
    }
  },
  backend_private_subnet2 = {
    cidr_block = "10.0.6.0/24"
    vpc = "main"
    availability_zone = "eu-west-1b"
    tags = {
      Name = "database-subnet2"
      Description = "Subnet for backend in eu-west-1b"
    }
  },
}
aws_vpcs = {
  main = {
    cidr = "10.0.0.0/16"
    tenancy = "default"
    enable_dns_hostnames = false
    enable_dns_support = false
    tags = {
      Name = "main"
      Description = "Main VPC"
    }
  }
}
resource "aws_vpc"  "Development_Network"{
  enable_dns_hostnames = true
  enable_dns_support =  true
  tags {
    Name = "Development-Vpc-Resource"
  }
  cidr_block = "10.0.0.0/16"
  name ="Development Netowrk"

}
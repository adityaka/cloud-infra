resource "aws_vpc" "development_vpc" {
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name = "Development-Vpc-Resource"
  }

  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet_development_1" {
  cidr_block = "${cidrsubnet(aws_vpc.development_vpc.cidr_block,8 , 1 )}"
  vpc_id     = "${aws_vpc.development_vpc.id}"

  tags {
    Name = "Development-Subnet-1"
  }
}

resource "aws_subnet" "subnet_development_2" {
  cidr_block = "${cidrsubnet(aws_vpc.development_vpc.cidr_block,8,2)}"
  vpc_id     = "${aws_vpc.development_vpc.id}"

  tags = {
    Name = "Development-Subnet-2"
  }
}

data "aws_ami" "awslinux" {
  most_recent = true

  filter = {
    name   = "name"
    values = ["amzn-ami*-ebs"]
  }

  filter = {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "web-server-1" {
  ami           = "${data.aws_ami.awslinux.id}"
  instance_type = "t2.large"

  tags = {
    Name = "web-server-ubuntu-1-terrainfra"
  }

  subnet_id = "${aws_subnet.subnet_development_1.id}"
}

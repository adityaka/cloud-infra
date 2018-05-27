variable "aws_profile_id" {
  type="string"
  default = ""
}

variable "aws_region" {
  type="string"
  default = ""

}

//output variables

output "ami_id_ubuntu" {
  value = "${data.aws_ami.awslinux.id}"
}
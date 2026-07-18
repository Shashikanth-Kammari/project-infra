data "aws_ami" "ami_id" {
  most_recent = true
  owners = ["620549678005"]
  filter {
    name = "name"
    values = ["Devops"]
  }
  filter {
    name = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

}

data "aws_vpc" "default" {
    default = true
}




resource "aws_instance" "first_ec2_server" {
  ami = "ami-0d9f6f413453de9a6"
  instance_type = "t3.micro"
}

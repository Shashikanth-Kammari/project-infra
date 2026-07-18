locals {
  ami_id = "ami-00adafae70b8029d8"
  security_group_id = "sg-00a444020c19fefae"
  instnace_type = var.instance_name == "db" ? "t3.small" : "t3.micro"

  tags = {
        Name = "locals"
    }
}
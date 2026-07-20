resource "aws_instance" "db_instance" {

    ami = "ami-00adafae70b8029d8"
    vpc_security_group_ids = ["sg-00a444020c19fefae"]
    instance_type = "t3.micro"

    provisioner "local-exec" {
      command = "echo ${self.private_ip}  >  private_ips.txt"
    }
}
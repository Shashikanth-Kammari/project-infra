resource "aws_instance" "db_instance" {

    ami = "ami-00adafae70b8029d8"
    vpc_security_group_ids = ["sg-00a444020c19fefae"]
    instance_type = lookup(var.instance_type, terraform.workspace)

    tags = {
        Name = "db"
    }
}



#instance details and size with aws ami id adding security group

resource "aws_instance" "db" {

    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"

    tags = {
        Name = "db"
    }
}

# resource <resource type> and <resource name>
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description =  "allowing SSH access"
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0  # from 0 to 0 means, pening all protocols 
        to_port          = 0
        protocol         = "-1"  # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }


    tags = {
        Name = "allow_ssh"
        createdby = "shashikanth"
    }

     
}
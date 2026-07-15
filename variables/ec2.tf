
#instance details and size with aws ami id adding security group

resource "aws_instance" "db" {

    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instnace_type

    tags = var.tags
}

# resource <resource type> and <resource name>
resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description =  var.sg_description
    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.protocol
        cidr_blocks      = var.cidr_block
    }

    egress {
        from_port        = 0  # from 0 to 0 means, pening all protocols 
        to_port          = 0
        protocol         = "-1"  # -1 all protocols
        cidr_blocks      = var.cidr_block
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Sivakumar"
    }
}
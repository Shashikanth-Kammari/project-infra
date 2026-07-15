
#instance details and size with aws ami id adding security group

resource "aws_instance" "db" {

    count =length(var.instance_names)
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
    tags = merge(
        var.common_tags,
        {
            Name = var.instance_names[count.index]
            Madule = var.instance_names[count.index]
        }
    )
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
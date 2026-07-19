resource "aws_security_group" "allow_ports" {
    name = "allow_ssh"
    description =  "allowing posrts 22,80,8080,3306"
    dynamic "ingress" {
        for_each = var.inbound_rules
        content{
            from_port        = each.value["port"]
            to_port          = each.value["port"]
            protocol         = each.value["protocol"]
            cidr_blocks      = each.value["allowed_cidr"]
        }
            
    }

    egress {
        from_port        = 0  # from 0 to 0 means, pening all protocols 
        to_port          = 0
        protocol         = "-1"  # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }


    tags = {
        Name = "allow_ports"
        createdby = "shashikanth"
    }

     
}
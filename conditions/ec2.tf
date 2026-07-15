
#instance details and size with aws ami id adding security group

resource "aws_instance" "db" {

    ami = var.image_id
    instance_type = var.instance_name == DB ? "t3.small" : "t3.micro"
    tags = var.tags
}


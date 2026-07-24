resource "aws_instance" "db_instance" {

    ami = var.ami_id
    vpc_security_group_ids = var.vpc_security_group_ids
    instance_type = var.instance_type

    tags = var.tags
}

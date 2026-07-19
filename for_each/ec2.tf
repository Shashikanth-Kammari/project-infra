resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = var.vpc_security_group_id
    instance_type = each.value == "db" ? "t3.small" : "t3.micro"
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}
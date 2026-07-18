resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = var.ami-id
    vpc_security_group_ids = var.vpc_security_group_id
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}
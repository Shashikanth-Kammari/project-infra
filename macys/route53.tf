resource "aws_route53_record" "macys" {
  count = length(var.instance_name)
  zone_id = var.zone_id
  name    = var.instance_name[count.index] == "frontend" ? var.domain_name : "${var.instance_name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = var.instance_name[count.index] == "frontend" ? [aws_instance.macys[count.index].public_ip]: [aws_instance.macys[count.index].private_ip]
}
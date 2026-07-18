resource "aws_route53_record" "expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = local.record_name
  #count and count.index will not work in locals
  #name = local.record_name
  type    = "A"
  ttl     = 1
  #count and count.index will not work in locals
  #records = local.record_value
  records = local.records_value
  # if records already exists
  allow_overwrite = true
}
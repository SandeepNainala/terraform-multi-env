resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense
  zone_id = var.instance_name
  name    = each.key == "frontend-prod" ? var.domain_name : "${each.key}.${var.domain_name}"
  #name = local.record_name
  type    = "A"
  ttl     = 300
  records = startswith(each.key, "frontend") ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}
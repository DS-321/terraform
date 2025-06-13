resource "aws_route53_record" "dev-ns" {
  for_each = aws_instance.roboshop
  for_each = toset(var.instances)
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
}
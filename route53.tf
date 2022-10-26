resource "aws_route53_record" "nodered" {
  zone_id = data.aws_route53_zone.node-red-domain.id
  name    = "nodered.${data.aws_route53_zone.node-red-domain.name}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.nodered.public_ip]
}
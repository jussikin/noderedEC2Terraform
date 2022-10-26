data "aws_route53_zone" "node-red-domain" {
  name         = var.domain
}
provider "aws" {
  region = "eu-central-1"
}

resource "aws_route53_record" "main" {
  zone_id = "Z18G34VZKFPZ0O"
  name    = "mmaks.me."
  type    = "A"
  ttl     = "60"
  records = ["138.68.98.74"]
}

resource "aws_route53_record" "proxy" {
  zone_id = "Z18G34VZKFPZ0O"
  name    = "proxy.mmaks.me."
  type    = "A"
  ttl     = "60"
  records = ["138.68.98.74"]
}

resource "aws_route53_record" "proxy-wildcard" {
  zone_id = "Z18G34VZKFPZ0O"
  name    = "*.proxy.mmaks.me."
  type    = "A"
  ttl     = "60"
  records = ["138.68.98.74"]
}

provider "aws" {
    region     = "eu-central-1"
}

resource "aws_route53_record" "main" {
    zone_id = "Z18G34VZKFPZ0O"
    name    = "mmaks.me."
    type    = "A"
    ttl     = "60"
    records = ["138.68.98.74"]
}

resource "aws_route53_record" "consul" {
    zone_id = "Z18G34VZKFPZ0O"
    name    = "consul.mmaks.me."
    type    = "A"
    ttl     = "60"
    records = ["138.68.98.74"]
}

resource "aws_route53_record" "twitch2telegram" {
    zone_id = "Z18G34VZKFPZ0O"
    name    = "twitch2telegram.mmaks.me."
    type    = "A"
    ttl     = "60"
    records = ["138.68.98.74"]
}

resource "aws_route53_record" "notifier-webhook" {
    zone_id = "Z18G34VZKFPZ0O"
    name    = "notifier-webhook.mmaks.me."
    type    = "A"
    ttl     = "60"
    records = ["138.68.98.74"]
}

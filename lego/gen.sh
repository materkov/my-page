#!/usr/bin/env sh

export AWS_REGION="$(curl http://consul-server:8500/v1/kv/lego/aws_credentials/region?raw)"
export AWS_ACCESS_KEY_ID="$(curl http://consul-server:8500/v1/kv/lego/aws_credentials/access_key_id?raw)"
export AWS_SECRET_ACCESS_KEY="$(curl http://consul-server:8500/v1/kv/lego/aws_credentials/access_key_secret?raw)"
export AWS_HOSTED_ZONE_ID="$(curl http://consul-server:8500/v1/kv/lego/aws_credentials/zone_id?raw)"

lego --path /lego --accept-tos --email="materkov@gmail.com" --dns="route53" \
  --domains="mmaks.me" --domains="consul.mmaks.me" \
  run

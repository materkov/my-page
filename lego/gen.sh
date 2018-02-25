#!/usr/bin/env sh
echo "tototo"

AWS_REGION=$(curl http://consul-server:8500/v1/kv/lego/aws_credentials/region?raw)
AWS_ACCESS_KEY_ID=$(curl http://consul-server:8500/v1/kv/lego/aws_credentials/ ?raw)
AWS_SECRET_ACCESS_KEY=$(curl http://consul-server:8500/v1/kv/lego/aws_credentials/access_key_secret?raw)

lego --path /lego --accept-tos --email="materkov@gmail.com" --domains="mmaks.me" --dns="route53" run
  
#!/usr/bin/env bash

docker run -v /apps/lego:/lego \
  -e "AWS_REGION=eu-central-1" \
  -e "AWS_ACCESS_KEY_ID=AKIAJPVPQJRPDLD46X3A" \
  -e "AWS_SECRET_ACCESS_KEY=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" \
  563473344515.dkr.ecr.eu-central-1.amazonaws.com/lego:1 \
  --path /lego --accept-tos --email="materkov@gmail.com" --domains="mmaks.me" --dns="route53" run

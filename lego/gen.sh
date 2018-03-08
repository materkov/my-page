#!/usr/bin/env sh

docker run -v /apps/lego:/apps/lego --env-file=../env/lego.env --rm \
  563473344515.dkr.ecr.eu-central-1.amazonaws.com/lego:latest \
  --path /apps/lego --accept-tos --email="materkov@gmail.com" --dns="route53" \
  --domains="mmaks.me" --domains="consul.mmaks.me" --domains="twitch2telegram.mmaks.me" \
  run

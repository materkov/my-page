#!/usr/bin/env bash
TAG=7
echo "Building with tag: $TAG"

docker build -t 563473344515.dkr.ecr.eu-central-1.amazonaws.com/my-page:$TAG .
docker push 563473344515.dkr.ecr.eu-central-1.amazonaws.com/my-page:$TAG

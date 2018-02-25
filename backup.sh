#!/usr/bin/env bash

echo "Creating consul backup..."

rm -f backup.snap
docker exec -it consul-server rm -f /backup.snap
docker exec -it consul-server consul snapshot save backup.snap
docker cp consul-server:/backup.snap backup.snap
docker exec -it consul-server rm /backup.snap

echo "Consul backup saved: backup.snap"

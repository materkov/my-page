#!/usr/bin/env bash

echo "Open: http://localhost:9001"
ssh -L 9001:127.0.0.1:15672 core@mmaks.me -N

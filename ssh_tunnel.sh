#!/usr/bin/env bash

echo "Open: http://localhost:$1"
ssh -L $1:127.0.0.1:$1 core@mmaks.me -N

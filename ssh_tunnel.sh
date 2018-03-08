#!/usr/bin/env bash

PORT_REMOTE=15672
PORT_LOCAL=9001

echo "Creating SSH tunnel $PORT_REMOTE->$PORT_LOCAL"

ssh -L $PORT_LOCAL:127.0.0.1:$PORT_REMOTE core@mmaks.me -N

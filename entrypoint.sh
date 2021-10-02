#!/bin/sh
set -e

if [ -z "$1" ]; then
  tcpserver -c2 0 23249 /stockfish/stockfish
else
  # else default to run whatever the user wanted like "bash" or "sh"
  exec "$@"
fi

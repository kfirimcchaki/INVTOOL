#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
if ! command -v node >/dev/null 2>&1; then
  echo "Node.js 18 or newer is required: https://nodejs.org/"
  exit 1
fi
( sleep 1; if command -v xdg-open >/dev/null; then xdg-open http://localhost:4173; elif command -v open >/dev/null; then open http://localhost:4173; fi ) &
echo "Starting INVTOOL at http://localhost:4173"
node server.js

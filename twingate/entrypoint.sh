#!/bin/bash
set -e

echo "Starting Twingate client..."

# Make sure service key is present
if [ ! -f /etc/twingate/service_key.json ]; then
  echo "❌ Missing service_key.json"
  exit 1
fi

# Start client directly (bypassing systemd requirement)
/usr/bin/twingate service run --config /etc/twingate/service_key.json &

# Keep container alive
tail -f /dev/null

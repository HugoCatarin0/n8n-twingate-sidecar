#!/bin/bash
set -e

echo "Starting Twingate client..."

if [ ! -f /etc/twingate/service_key.json ]; then
  echo "❌ Missing service_key.json"
  exit 1
fi

# Start the Twingate service
twingate service-start

# Keep container alive
tail -f /dev/null

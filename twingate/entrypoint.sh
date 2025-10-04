#!/bin/bash
set -e

if [ ! -f /etc/twingate/service_key.json ]; then
  echo "Service key not found at /etc/twingate/service_key.json"
  exit 1
fi

echo "Running Twingate setup..."
twingate setup --headless /etc/twingate/service_key.json || true

echo "Starting Twingate client..."
exec twingate start

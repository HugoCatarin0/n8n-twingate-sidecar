#!/bin/bash
set -e

if [ ! -f /etc/twingate/service_key.json ]; then
  echo "Service key not found at /etc/twingate/service_key.json"
  exit 1
fi

# Setup headless mode (idempotent)
twingate setup --headless /etc/twingate/service_key.json || true

# Start the Twingate client
exec twingate start

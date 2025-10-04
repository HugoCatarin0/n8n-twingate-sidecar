#!/bin/bash
set -e

if [ ! -f /etc/twingate/service_key.json ]; then
  echo "Service key not found at /etc/twingate/service_key.json"
  exit 1
fi

# Run setup once (idempotent)
twingate setup --headless /etc/twingate/service_key.json || true

# Start the client in the foreground (no --foreground flag in new versions)
exec twingate start

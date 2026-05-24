#!/bin/sh
set -e

# If Render (or other platform) provides PORT, map it to N8N_PORT
if [ -n "$PORT" ]; then
  export N8N_PORT="$PORT"
fi

# Ensure .n8n directory exists (ignore errors if not permitted)
mkdir -p /home/node/.n8n 2>/dev/null || true

# Run init script which starts n8n and imports workflows
exec /init.sh

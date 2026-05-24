#!/bin/sh

# Start n8n in background
n8n start &

# Wait for n8n to be ready
sleep 10

# Import workflow
n8n import:workflow --input=/workflows/workflow.json

# Keep container running
wait
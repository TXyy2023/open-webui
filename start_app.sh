#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Activate virtual environment
source venv/bin/activate

# Set environment variables for standard usage
# You can customize these variables in a .env file if needed
export OLLAMA_BASE_URL=${OLLAMA_BASE_URL:-'http://localhost:11434'}
export WEBUI_SECRET_KEY=${WEBUI_SECRET_KEY:-'t0p-s3cr3t-k3y'}

# Start the server
echo "Starting Open WebUI on http://0.0.0.0:8080"
open-webui serve --host 0.0.0.0 --port 8080

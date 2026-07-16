#!/usr/bin/env bash
set -euo pipefail

# Deploy AnythingLLM for a new client
# Usage: ./deploy-anythingllm.sh <client-name>

CLIENT_NAME="${1:?Usage: $0 <client-name>}"

echo "=== Deploying AnythingLLM for $CLIENT_NAME ==="

# 1. Create client data directory
mkdir -p "/var/anythingllm/${CLIENT_NAME}"

# 2. Deploy container
docker run -d \
  --name "anythingllm-${CLIENT_NAME}" \
  --restart always \
  -p 3001:3001 \
  -v "/var/anythingllm/${CLIENT_NAME}:/app/server/data" \
  mintplexlabs/anythingllm

echo "=== Deployed $CLIENT_NAME ==="
echo "Client can access at http://$(curl -s ifconfig.me):3001"
echo "Send them the welcome guide and schedule a 30 min training call."

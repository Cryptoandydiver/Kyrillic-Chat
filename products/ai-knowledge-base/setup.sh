#!/usr/bin/env bash
set -euo pipefail

# AI Knowledge Base — Quick Setup Script (AnythingLLM)
# Run on Ubuntu 22.04 VPS (1 CPU, 2GB RAM, 20GB SSD)

echo "=== AI Knowledge Base Setup ==="

# 1. Install Docker if not present
if ! command -v docker &>/dev/null; then
    echo "Installing Docker..."
    curl -fsSL https://get.docker.com | bash
    sudo usermod -aG docker "$USER"
fi

# 2. Deploy AnythingLLM
echo "Deploying AnythingLLM..."
docker run -d \
  --name anythingllm \
  --restart always \
  -p 3001:3001 \
  -v ~/anythingllm/data:/app/server/data \
  -e STORAGE_DIR=/app/server/data \
  mintplexlabs/anythingllm

echo ""
echo "=== Setup complete ==="
echo ""
echo "Open http://$(curl -s ifconfig.me):3001 in your browser"
echo ""
echo "Post-setup steps:"
echo "  1. Create admin account"
echo "  2. Go to Settings -> LLM Provider -> OpenAI compatible"
echo "  3. Set endpoint: https://openrouter.ai/api/v1"
echo "  4. Set model: deepseek/deepseek-v4"
echo "  5. Set API key: your OpenRouter key"
echo "  6. Create a workspace and upload documents"

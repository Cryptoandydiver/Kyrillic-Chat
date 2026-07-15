#!/usr/bin/env bash
set -euo pipefail

# AI Knowledge Base — Quick Setup Script
# Run on Ubuntu 22.04 VPS (2 CPU, 4GB RAM, 20GB SSD)

echo "=== AI Knowledge Base Setup ==="

# 1. Install kb
if ! command -v kb &>/dev/null; then
    echo "Installing kb..."
    curl -fsSL https://raw.githubusercontent.com/ariel-frischer/kb/main/install.sh | bash
fi

# 2. Check OpenRouter key
if [ -z "${OPENROUTER_API_KEY:-}" ]; then
    echo "Error: OPENROUTER_API_KEY is not set"
    echo "Usage: export OPENROUTER_API_KEY=sk-... && ./setup.sh"
    exit 1
fi

# 3. Set up kb config
mkdir -p ~/.kb
cat > ~/.kb/config.yaml << EOF
llm:
  model: deepseek/deepseek-v4
  endpoint: https://openrouter.ai/api/v1
  api_key: ${OPENROUTER_API_KEY}
embedder:
  type: default
index:
  chunk_size: 1000
  chunk_overlap: 200
EOF

echo "=== Setup complete ==="
echo ""
echo "Next steps:"
echo "  1. Copy documents to ~/documents/"
echo "  2. kb add ~/documents/"
echo "  3. kb query 'your first question'"

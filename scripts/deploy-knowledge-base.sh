#!/usr/bin/env bash
set -euo pipefail

# Deploy AI Knowledge Base for a new client
# Usage: ./deploy-knowledge-base.sh <client-name> <documents-path>

CLIENT_NAME="${1:?Usage: $0 <client-name> <documents-path>}"
DOCUMENTS_PATH="${2:?Usage: $0 <client-name> <documents-path>}"

echo "=== Deploying KB for $CLIENT_NAME ==="

# 1. Create client directory
mkdir -p "/var/kb/${CLIENT_NAME}"
cp -r "${DOCUMENTS_PATH}" "/var/kb/${CLIENT_NAME}/documents/"

# 2. Index documents
kb add "/var/kb/${CLIENT_NAME}/documents/"

# 3. Run verification
kb query "What is this knowledge base about?"

# 4. Set up daily backup
(crontab -l 2>/dev/null; echo "0 2 * * * kb backup /var/kb/${CLIENT_NAME}") | crontab -

echo "=== Deployed $CLIENT_NAME ==="
echo "Client can now query their knowledge base."

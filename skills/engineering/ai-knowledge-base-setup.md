# AI Knowledge Base — Setup Guide

## Prerequisites
- VPS with 2 CPU, 4GB RAM, 20GB SSD (Ubuntu 22.04)
- Domain (optional, for public access)
- OpenRouter API key (or Ollama for local)

## Step 1 — Install kb (RAG CLI)

```bash
# Install kb
curl -fsSL https://raw.githubusercontent.com/ariel-frischer/kb/main/install.sh | bash

# Verify
kb --help
```

## Step 2 — Configure DeepSeek V4 via OpenRouter

```bash
export OPENROUTER_API_KEY="sk-..."
export KB_LLM_MODEL="deepseek/deepseek-v4"
export KB_LLM_ENDPOINT="https://openrouter.ai/api/v1"
```

## Step 3 — Index Client Documents

```bash
# Index a folder of documents
kb add /path/to/client/documents/

# List indexed files
kb list
```

## Step 4 — Test Query

```bash
kb query "What are the key terms in contract XYZ?"
```

## Step 5 — Optional: Deploy Web Interface

```bash
# Install Open Web UI (optional, for non-CLI clients)
docker run -d -p 3000:8080 \
  -v open-webui:/app/backend/data \
  -e OLLAMA_BASE_URL=http://host.docker.internal:11434 \
  --name open-webui \
  ghcr.io/open-webui/open-webui:main
```

## Client Setup Checklist
- [ ] Collect documents (PDF, DOCX, TXT, MD)
- [ ] Clean sensitive data (optional)
- [ ] Index and test
- [ ] Set up backup schedule
- [ ] Create client credentials
- [ ] Send welcome guide
- [ ] Schedule 30-min training call

# AnythingLLM — Setup Guide

## Prerequisites
- VPS with 1 CPU, 2GB RAM, 20GB SSD (Ubuntu 22.04, $5–10/month)
- Docker installed

## Step 1 — Deploy AnythingLLM (1 container, 5 minutes)

```bash
docker run -d \
  --name anythingllm \
  --restart always \
  -p 3001:3001 \
  -v ~/anythingllm/data:/app/server/data \
  -e STORAGE_DIR=/app/server/data \
  -e JWT_SECRET="your-random-secret-here" \
  mintplexlabs/anythingllm
```

## Step 2 — Initial Setup

1. Open `http://your-server-ip:3001` in browser
2. Create admin account
3. Select LLM provider: Anthropic
   - API Key: your Claude API key
4. Select embedding provider (default is fine)

## Step 2b — Configure Model Router (automatic model switching)

In Settings > Model Router, set up two models:

| Model | Use case | Price per 1M tokens | Route rule |
|-------|----------|---------------------|------------|
| **Claude Haiku 4.5** | Daily questions, simple lookups | $1 / $5 | Default — all queries start here |
| **Claude Sonnet 5** | Complex analysis, contract review | $2 / $10 (intro until Aug 31 2026) | Route when query suggests deep reasoning |

Model Router automatically sends simple questions ("find clause X") to Haiku and complex ones ("analyze liability risks") to Sonnet. No manual switching.

After Aug 31 2026, Sonnet 5 goes to standard $3 / $15. Difference on your volume (3-10 clients) is still negligible (~$2-5/month).

## Step 3 — Create Workspace and Upload Documents

1. Create a new workspace (e.g., "Contracts 2024")
2. Upload PDFs via drag and drop in the web UI
3. The system will chunk, embed, and index automatically

## Step 4 — Test

1. Switch to the workspace
2. Ask: "What is the termination clause in contract XYZ?"
3. Verify citations link back to the source document

## Client Setup Checklist
- [ ] VPS provisioned (1 CPU, 2GB RAM, 20GB SSD)
- [ ] Docker installed
- [ ] AnythingLLM container running
- [ ] Admin account created
- [ ] Claude API key configured
- [ ] Model Router set up (Haiku 4.5 default, Sonnet 5 for complex queries)
- [ ] Workspace created for client
- [ ] Client documents uploaded
- [ ] 10 test queries verified
- [ ] Daily backup configured (cron job to back up ~/anythingllm/data)
- [ ] Welcome guide sent to client

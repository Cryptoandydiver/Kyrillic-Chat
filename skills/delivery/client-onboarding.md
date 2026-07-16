# Client Onboarding Checklist

## Phase 1 — Pre Setup (Day 1)

### Client deliverables
- [ ] Client fills document map: "Where are your files?"
- [ ] Client sends 3 to 5 sample files (email or Google Drive link)
- [ ] Invoice sent and paid (for paid tier)

### Our prep
- [ ] VPS provisioned (1 CPU, 2GB RAM, 20GB SSD, Ubuntu 22.04)
- [ ] Docker installed
- [ ] AnythingLLM container deployed and tested
- [ ] OpenRouter API key configured

## Phase 2 — Demo (Day 2)

- [ ] Upload client's 3 to 5 sample files to AnythingLLM on our server
- [ ] Run 10 test queries
- [ ] Send private demo link to client
- [ ] Demo auto expires in 7 days

## Phase 3 — Full Installation (after payment)

- [ ] Deploy AnythingLLM on client's VPS
- [ ] Create admin account
- [ ] Configure DeepSeek V4 via OpenRouter
- [ ] Create workspace
- [ ] Upload all client documents
- [ ] Set up daily backup (cron)
- [ ] Set up monitoring

## Phase 4 — Handover (Day 3)

- [ ] 30 minute training call with legal team
- [ ] Show how to ask questions
- [ ] Show how to upload new documents
- [ ] Send one page user guide
- [ ] Set up support channel (Telegram / WhatsApp / email)
- [ ] Schedule 1 week check in

## One Page User Guide

```
# How to use your AI Knowledge Base

1. Open http://your-server:3001 in your browser
2. Log in with your account
3. Select your workspace (e.g. "Contracts 2024")
4. Type your question in plain English
5. Get answer with citations in 5 seconds

Examples:
  "Find all contracts with a non compete clause"
  "What is the liability cap in the Smith agreement?"
  "Show me contracts expiring in Q3 2026"

Adding documents:
  Click Workspace Settings -> Upload -> drag your PDFs
  Or send files to [support contact] we add them within 24h
```

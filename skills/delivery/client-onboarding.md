# Client Onboarding Checklist

## Phase 1 — Pre-Setup (Day 1)

### Client deliverables
- [ ] Client fills document map: "Where are your files?"
- [ ] Client provides access (Google Drive link, Notion share, folder copy)
- [ ] Client confirms data is cleaned (no sensitive info leaking)
- [ ] Invoice sent and paid

### Our prep
- [ ] VPS provisioned (2 CPU, 4GB RAM, 20GB SSD, Ubuntu 22.04)
- [ ] Domain pointed (optional)
- [ ] OpenRouter API key set up
- [ ] kb installed and tested with sample files

## Phase 2 — Installation (Day 2)

- [ ] Download all client documents to VPS
- [ ] Run `kb add /path/to/documents/`
- [ ] Run `kb list` and verify file count
- [ ] Run 10 test queries covering different document types
- [ ] Fix any parsing issues (OCR, corrupted PDFs)
- [ ] Verify citations are correct
- [ ] Set up daily backup (`crontab -e` → `kb backup`)
- [ ] Set up monitoring (daily health check)

## Phase 3 — Handover (Day 3)

- [ ] 30-min training call with client team
- [ ] Show how to ask questions
- [ ] Show how to add new documents
- [ ] Send one-page user guide
- [ ] Set up support channel (Telegram / WhatsApp / email)
- [ ] Schedule 1-week check-in

## Phase 4 — Post-Setup (Week 1–4)

- [ ] Day 7: check if team is using it, answer questions
- [ ] Day 14: ask for testimonial
- [ ] Day 30: review usage stats, suggest improvements
- [ ] Day 30: upsell more features if appropriate

## One-Page User Guide (give to client)

```
# How to use your AI Knowledge Base

1. Open terminal / web interface
2. Type your question in plain English
3. Get answer with citations in 3 seconds

Examples:
  "Find all contracts with liability clause X"
  "Summarize the Q3 financial report"
  "What's the procedure for onboarding new employees?"

Adding documents:
  Send files to [support contact] — we add them within 24h
```

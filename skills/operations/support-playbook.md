# Support Playbook

## Common Issues & Fixes

### "The answer is wrong"
1. Check if the document is indexed: `kb list | grep keyword`
2. Re-index the document: `kb update /path/to/doc.pdf`
3. Try rephrasing the query
4. Check if the model is responding correctly: test with a simple query

### "My new document isn't showing up"
1. Check file format (PDF, DOCX, TXT, MD supported)
2. Re-run: `kb add /path/to/new/file.pdf`
3. Verify: `kb query "content from new file"`

### "It's slow"
1. Check VPS CPU/RAM: `htop`
2. If LLM is slow, switch to smaller model (e.g., deepseek/deepseek-v3)
3. Check OpenRouter status: https://status.openrouter.ai

### "I can't access the web interface"
1. Check if Docker container is running: `docker ps`
2. Restart: `docker restart open-webui`
3. Check firewall: `sudo ufw status`

## Monthly Maintenance Tasks

- [ ] Run `kb update --all` to refresh indexes
- [ ] Check disk usage: `df -h`
- [ ] Check backup integrity
- [ ] Review usage stats and send to client
- [ ] Send invoice

## Upsell Opportunities

| Signal | Offer |
|--------|-------|
| Team asks 50+ questions/day | "Want a Slack bot integration?" +$100/mo |
| Client adds 100+ docs/month | "Let me automate the ingestion" +$50/mo |
| Client wants to share with customers | "Let me build you a customer-facing chatbot" +$200/mo |
| Client wants analytics | "Here's a usage dashboard" +$50/mo |

## Escalation

- **Can't fix within 1 hour** → Inform client, offer temporary workaround
- **Data loss** → Restore from backup
- **Client wants refund** → Offer 2 free months instead

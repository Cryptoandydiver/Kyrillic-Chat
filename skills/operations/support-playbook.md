# Support Playbook

## Common Issues and Fixes

### "The answer is wrong"
1. Check if the document is uploaded to the workspace
2. Re upload the document
3. Try rephrasing the query

### "My new document is not showing up"
1. Upload it through the workspace UI
2. Wait 30 seconds for indexing
3. Verify: ask a question about content from that document

### "It is slow"
1. Check VPS CPU and RAM: `htop`
2. Restart AnythingLLM: `docker restart anythingllm`
3. Check OpenRouter status: https://status.openrouter.ai

### "I cannot access the web interface"
1. Check if container is running: `docker ps | grep anythingllm`
2. Restart: `docker restart anythingllm`
3. Check firewall: `sudo ufw status`

## Monthly Maintenance

- [ ] Run `docker pull mintplexlabs/anythingllm` to check for updates
- [ ] Restart container if image was updated
- [ ] Check disk usage: `df -h`
- [ ] Verify backup integrity: check `~/anythingllm/data` exists and has recent files
- [ ] Review usage stats and send to client

## Upsell Opportunities

| Signal | Offer |
|--------|-------|
| Team asks 50+ questions per day | "Want a Slack bot integration?" +$100/mo |
| Client adds 100+ docs per month | "Let me automate the ingestion" +$50/mo |
| Client wants to share with clients | "Let me build a client facing chatbot" +$200/mo |

## Escalation

- Cannot fix within 1 hour: Inform client, offer temporary workaround
- Data loss: Restore from backup (`~/anythingllm/data`)
- Client wants refund: Offer 2 free months instead

# Business Context

## Goal
Build and scale a solo AI-product business focused on AI Knowledge Base as a Service + custom AI agents, using value-based pricing and reusable skills.

## Target Customer
SMBs (10–200 employees) drowning in their own documents: legal firms, manufacturers, consultants, content creators. They have PDFs, Notion, SharePoint, Google Drive — no way to query it all in one place.

## Value Proposition
"Search your documents in 3 seconds. Your files stay on your server — we never touch them. We install the system on your infrastructure, you keep full control."

## Pricing Model
- **Demo:** Free — send 3–5 sample files, get a working system in 24h
- **Installation:** $1,000–2,000 one-time (on your VPS/on-prem)
- **Subscription:** $100–300/month (support + updates + token costs)
- **Cost to deliver:** ~$0–5/month per client (DeepSeek V4 tokens + VPS)
- **Guarantee:** 30-day risk-free. If it doesn't save time, don't pay.
- **Trust model:** AI is read-only. No files are ever deleted or modified. Daily backups.

## Stages

### Stage 1 — Foundation (Week 1–2)
- [x] Business context defined
- [x] Market research done (competitors, pricing, alternatives to Claude Code)
- [x] Skills folder created (engineering, sales, delivery, operations)
- [x] First AI agent built (trading/data CLI agent)
- [x] AI Knowledge Base product packaged and documented
- [x] GitHub repo structured and published
- [x] Landing page created (GitHub Pages)
- [x] Sales plan written (plain language)
- [ ] Register Explee account, start first campaign
- [ ] Record 2-min demo video

### Stage 2 — Product & Content (Week 3–4)
- [ ] LinkedIn post about the product (not value-based pricing)
- [ ] LinkedIn post: AI Knowledge Base case study (before/after)
- [ ] Cold email campaign via Explee
- [ ] 5 client conversations started
- [ ] Refine landing page based on real feedback

### Stage 3 — First Client (Week 5–8)
- [ ] Close first client
- [ ] Deliver installation (on-prem / VPS)
- [ ] Collect testimonial
- [ ] Refine delivery process based on real feedback
- [ ] Add Explee results to sales playbook

### Stage 4 — Scale (Month 3+)
- [ ] Increase prices
- [ ] Build second product (trading agent SaaS)
- [ ] Build third product (custom AI agents for SMBs)
- [ ] Systematize: hire VA for support

## Architecture

```
Kyrillic-Chat/
├── CONTEXT.md                    # This file — business goal, stages, architecture
├── skills/                       # Reusable IP (the business moat)
│   ├── engineering/              # Technical how-to guides
│   │   └── ai-knowledge-base-setup.md
│   ├── sales/                    # Sales scripts & qualification
│   │   └── client-qualification.md
│   ├── delivery/                 # Onboarding checklists
│   │   └── client-onboarding.md
│   └── operations/               # Support runbooks
│       └── support-playbook.md
├── agents/                       # Portfolio AI agents
│   └── trading-agent/            # First agent — market data Q&A
│       ├── agent.py
│       ├── requirements.txt
│       └── README.md
├── products/                     # Productized services
│   └── ai-knowledge-base/
│       ├── product-description.md
│       └── setup.sh
├── scripts/                      # Utility scripts
│   └── deploy-knowledge-base.sh
├── SALES_PLAN.md                 # Sales plan — plain language
├── docs/                         # Landing page (GitHub Pages)
│   ├── index.html
│   └── _config.yml
├── SUMMARY.md                    # Chat export summary (existing)
├── BUSINESS_IDEAS.md             # Monetization ideas (existing)
├── AI_INSIGHTS.md                # AI tools & insights (existing)
└── README.md                     # Repo overview (existing)
```

## Key Decisions

| Decision | Choice | Why |
|----------|--------|-----|
| Pricing | Value-based (not hourly) | Fee = share of monthly value for client |
| Tech stack | kb (ariel-frischer/kb) + DeepSeek V4 via OpenRouter | Free infra, cheap tokens |
| Trust model | On-prem installation only | Client data never leaves their server. AI is read-only + daily backups |
| Lead gen | LinkedIn (direct messages) + Explee (cold email) | Two parallel channels, no tool overlap |
| Demo | 3–5 sample files, 24h turnaround | Client sees results before committing, no access to their full DB |
| Guarantee | 30-day risk-free trial | No 5x claims — just "if it doesn't save time, don't pay" |
| IP strategy | Skill-ify everything | skills/ folder = main business asset |

## Stack Choices

| Component | Tool | Cost |
|-----------|------|------|
| RAG engine | ariel-frischer/kb (CLI, open source) | Free |
| LLM | DeepSeek V4 via OpenRouter | ~$0.14/$0.28 per 1M tokens |
| Hosting | Any VPS (2 CPU, 4GB RAM, 20GB SSD) | ~$5-10/month |
| Alternative LLM | Ollama + Qwen 3.5 (local, no API cost) | Free (needs GPU) |
| Obsidian integration | obsidian-local-llm-helper | Free |
| Client dashboard | Open Web UI (optional) | Free |
| Cold email outreach | Explee (AutoGTM) | $30 trial, ~$0.03/email |
| Lead form | Formspree (or mailto fallback) | Free (50/mo) |

## Competition

| Who | What they do | Weakness |
|-----|-------------|----------|
| Knowbase.ai | $19-99/mo SaaS | Client manages themselves — high churn |
| Dokko | $99-499/mo | Expensive for SMBs |
| Definable | Free tier | Early stage, limited integrations |
| Generic RAG builders | Upwork freelancers | No support, no SLA |

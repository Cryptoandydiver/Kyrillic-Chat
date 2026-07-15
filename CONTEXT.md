# Business Context

## Goal
Build and scale a solo AI-product business focused on AI Knowledge Base as a Service + custom AI agents, using value-based pricing and reusable skills.

## Target Customer
SMBs (10–200 employees) drowning in their own documents: legal firms, manufacturers, consultants, content creators. They have PDFs, Notion, SharePoint, Google Drive — no way to query it all in one place.

## Value Proposition
"Your expertise, instantly searchable. We transform your documents into an AI knowledge base that answers any question in 3 seconds with citations. No more lost time hunting for files."

## Pricing Model
- **Installation:** $500–2,000 one-time (depends on document volume)
- **Subscription:** $100–300/month (support + updates + token costs)
- **Cost to deliver:** ~$0–5/month per client (DeepSeek V4 tokens + VPS)
- **Rule of 5x:** Client receives 5x more value than they pay

## Stages

### Stage 1 — Foundation (Week 1–2)
- [x] Business context defined
- [x] Market research done (competitors, pricing, alternatives to Claude Code)
- [ ] Skills folder created with templates for all stages
- [ ] First AI agent built (trading/data — portfolio piece)
- [ ] AI Knowledge Base product packaged and documented
- [ ] GitHub repo structured and published

### Stage 2 — Product & Content (Week 3–4)
- [ ] LinkedIn post: value-based pricing vs agency tax
- [ ] LinkedIn post: AI Knowledge Base case study (before/after)
- [ ] Cold email campaign: Instantly + Apollo + MCP
- [ ] 3 client outreach templates written
- [ ] Demo video: "Watch me set up an AI Knowledge Base in 15 minutes"

### Stage 3 — First Client (Week 5–8)
- [ ] Close first client
- [ ] Deliver installation
- [ ] Collect testimonial
- [ ] Refine delivery process based on real feedback
- [ ] Skill-ify everything learned

### Stage 4 — Scale (Month 3+)
- [ ] Hire VA for support
- [ ] Automate onboarding
- [ ] Increase prices
- [ ] Build second product (trading agent SaaS)
- [ ] Build third product (custom AI agents for SMBs)

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
| Positioning | "I build production systems, not prototypes" | Gap between vibecoding and production |
| Lead gen | LinkedIn (personal brand) + Cold email (Instantly + Apollo) | Two parallel channels |
| IP strategy | Skill-ify everything | skills/ folder = main business asset |
| Rule | 5x value guarantee | Client gets 5x more than they pay |

## Stack Choices

| Component | Tool | Cost |
|-----------|------|------|
| RAG engine | ariel-frischer/kb (CLI, open source) | Free |
| LLM | DeepSeek V4 via OpenRouter | ~$0.14/$0.28 per 1M tokens |
| Hosting | Any VPS (2 CPU, 4GB RAM, 20GB SSD) | ~$5-10/month |
| Alternative LLM | Ollama + Qwen 3.5 (local, no API cost) | Free (needs GPU) |
| Obsidian integration | obsidian-local-llm-helper | Free |
| Client dashboard | Open Web UI (optional) | Free |

## Competition

| Who | What they do | Weakness |
|-----|-------------|----------|
| Knowbase.ai | $19-99/mo SaaS | Client manages themselves — high churn |
| Dokko | $99-499/mo | Expensive for SMBs |
| Definable | Free tier | Early stage, limited integrations |
| Generic RAG builders | Upwork freelancers | No support, no SLA |

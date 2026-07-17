# Business Context

## Goal
Build and scale a solo AI-product business focused on AI Knowledge Base for **legal firms** (3–10 attorneys), using AnythingLLM + DeepSeek V4, value-based pricing, and reusable skills.

## Target Customer
Small legal firms (3–10 people) drowning in PDF contracts and case documents. They have thousands of files in folders, no way to search across them. Confidentiality is critical — on-premise is a requirement, not a feature.

## Value Proposition
"Find any contract clause in 5 seconds instead of 20 minutes of manual search. Your documents stay on your server — we never touch them."

## Pricing Model (First 3–5 Clients)
- **Demo:** Free — send 3–5 sample files via email or Google Drive. We build a working demo on our server in 24h. Demo link expires in 7 days.
- **Full installation:** $0 first setup (in exchange for testimonial + case study), then $300 regular
- **Subscription:** $50–100/month (support + updates + token costs) for first clients
- **Target recurring:** $150–300/month per client after proving case studies
- **Cost to deliver:** ~$5–10/month per client (VPS + DeepSeek V4 tokens)
- **Guarantee:** Free demo shows results before any payment. After full install — 7-day full refund if not satisfied.

## Stages

### Stage 1 — Foundation (Week 1–2)
- [x] Business context defined
- [x] Market research done (competitors, pricing, alternatives)
- [x] Stack chosen: AnythingLLM + DeepSeek V4 (vs Onyx, RAGFlow, MaxKB, Dify, kb)
- [x] Skills folder created (engineering, sales, delivery, operations)
- [x] First AI agent built (trading/data CLI agent)
- [x] GitHub repo structured and published
- [x] Landing page created (GitHub Pages)
- [x] Sales plan written (plain language)
- [ ] Register Explee account, start first campaign
- [ ] Record 2-min demo video showing contract search

### Stage 2 — Product & Content (Week 3–4)
- [ ] Cold email campaign via Explee targeting legal firms
- [ ] LinkedIn direct messages to 10 law firm partners
- [ ] First client demo built
- [ ] Refine landing page based on real feedback

### Stage 3 — First Client (Week 5–8)
- [ ] Close first client (free setup for testimonial)
- [ ] Deliver AnythingLLM installation (1 container, 1 hour)
- [ ] Collect testimonial + case study
- [ ] Refine delivery process based on real feedback

### Stage 4 — Scale (Month 3+)
- [ ] Increase price to $200–300/month
- [ ] Automate onboarding (scripted AnythingLLM deploy)
- [ ] Build second product (trading agent SaaS)
- [ ] Systematize: document everything for repeatability

## Architecture

```
Kyrillic-Chat/
├── CONTEXT.md                    # This file
├── SALES_PLAN.md                 # Sales plan — plain language
├── docs/                         # Landing page (GitHub Pages)
│   ├── index.html
│   └── _config.yml
├── skills/                       # Reusable IP
│   ├── engineering/              # Technical how-to guides
│   │   └── anythingllm-setup.md
│   ├── sales/                    # Sales scripts & qualification
│   │   └── client-qualification.md
│   ├── delivery/                 # Onboarding checklists
│   │   └── client-onboarding.md
│   └── operations/               # Support runbooks
│       └── support-playbook.md
├── agents/                       # Portfolio AI agents
│   └── trading-agent/            # First agent
├── products/                     # Productized services
│   └── ai-knowledge-base/
│       ├── product-description.md
│       └── setup.sh
├── scripts/                      # Utility scripts
├── SUMMARY.md, BUSINESS_IDEAS.md, AI_INSIGHTS.md, README.md
```

## Key Decisions

| Decision | Choice | Why |
|----------|--------|-----|
| Niche | Legal firms (3–10 attorneys) | High pain, high budget, compliance = on-prem advantage |
| RAG engine | AnythingLLM (1 container) | Lightest deploy, web UI, PDF drag-drop, MIT, low maintenance |
| LLM (default) | Claude Haiku 4.5 | $1/$5 per 1M tokens, best speed/quality for daily searches |
| LLM (complex) | Claude Sonnet 5 | $2/$10 per 1M tokens, intro until Aug 31. Legal benchmarks leader |
| Model Router | AnythingLLM built-in | Auto-routes simple queries to Haiku, complex to Sonnet. No manual switching |
| Trust model | On-prem installation | Data never leaves client's server. AI is read-only + daily backups |
| Lead gen | LinkedIn (direct) + Explee (cold email) | Two parallel channels |
| Demo | 3–5 files on OUR server, 7-day auto-expire | Client sees results before paying. Demo cannot be stolen (our server, 5 files, auto-expire) |
| Pricing (first clients) | Free setup + $50–100/mo in exchange for case study | No track record yet — need social proof |
| Guarantee | Free demo + 7-day refund after install | Demo eliminates risk upfront |
| IP strategy | Skill-ify everything | skills/ folder = main business asset |
| Second niche (compliance) | Not before Phase 4 | After 3–5 paying legal clients + assistant hired. No data yet that first niche works. Spreading = the mistake we rejected at start |
| Email list | Hygiene, not product | Collect contacts from outreach responses. Not a monetisation asset until client base exists |
| AI Readiness Audit | $350 paid, separate entry point | Paid lead magnet for skeptics. Even if no subscription sold, audit fee is earned. Honesty converts better than pitch |
| Pricing (market reality) | $300/$1,000 is 10–50x below market | Custom RAG build starts at $4k–$18k. Legal AI tools charge $149–$329/seat. First 5 clients at intro price for case studies, then raise 3–5x |

## Focus Rules (added Jul 2026)

1. **One niche, one product until first sale.** Compliance vertical is Phase 4 — after 3–5 paying legal clients + assistant hired. Not before.
2. **Email list = hygiene, not project.** Save contacts who respond during outreach. One spreadsheet. Zero extra time. Not a product until client base exists.
3. **All energy on one number: first paying client.** Outreach, landing page, demo delivery — everything else waits.
4. **Proof gate for any new initiative:** "Is hypothesis #1 (legal AI knowledge base) confirmed by a paying client?" If no, do not start anything else.

## Stack Comparison (Why AnythingLLM)

| Platform | Containers | RAM | VPS/mo | Deploy complexity | Verdict for legal 3–10 ppl |
|----------|-----------|------|--------|------------------|---------------------------|
| **AnythingLLM** | **1** | **~2 GB** | **$5–10** | **Very easy** | **✅ Best fit** |
| Onyx (Danswer) | 6 | ~8 GB | $20–40 | Medium | Overkill for small firms |
| RAGFlow | 6 | 16 GB | $30–60 | Medium-High | Best PDF parsing, but too heavy |
| MaxKB | 1 | 8 GB | $15–25 | Easy | GPL v3, Chinese-led, thin EN docs |
| Dify | 12 | 8 GB | $20–40 | Medium | Full app platform, not KB-focused |

## Stack Choices

| Component | Tool | Cost |
|-----------|------|------|
| RAG engine | AnythingLLM (Docker, 1 container) | Free (MIT) |
| LLM (daily) | Claude Haiku 4.5 via Anthropic API | $1 / $5 per 1M tokens |
| LLM (complex) | Claude Sonnet 5 via Anthropic API | $2 / $10 per 1M tokens (intro until Aug 31) |
| Model Router | AnythingLLM built-in — auto routes simple queries to Haiku, complex to Sonnet | Built-in |
| Hosting | VPS (1 CPU, 2GB RAM, 20GB SSD) | ~$5–10/month |
| Embedding | AnythingLLM default (local) | Free |
| Lead form | Formspree (50 free submissions/month) | Free |
| File collection | Email or Google Drive link (not through form) | Free |
| Cold email | Explee (AutoGTM) | $30 trial, ~$0.03/email |

## Market Research Rule (enforced)
Before proposing any technology stack for a product, conduct a proper landscape review:
1. Search: "best [category] 2026", "open source [category] comparison"
2. List top 5 candidates
3. Compare on: deploy complexity, resource usage, license, community activity, language
4. Pick based on the specific use case, not the first tool found
5. Document the comparison and rationale in CONTEXT.md

## Competition

| Who | What they do | Weakness |
|-----|-------------|----------|
| Knowbase.ai | $19–99/mo SaaS | Client manages themselves — high churn |
| Dokko | $99–499/mo | Expensive for SMBs |
| Onyx Cloud | $20/user/mo managed | Still requires infra knowledge |
| Context Link | from $9/mo | Too cheap, no service, no on-prem |
| In-house (Onyx/AnythingLLM self-host) | Free software | Requires an engineer — which legal firms don't have |
| Upwork RAG builders | One-time setups | No ongoing support, no SLA, no security guarantee |

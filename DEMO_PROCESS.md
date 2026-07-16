# Demo Process — Step by Step

## When a lead comes in via Formspree

**Step 1 — Respond within 4 hours (email)**
Subject: "Your AI Knowledge Base demo request"

```
Hi [name],

Thanks for your interest. Quick summary:
- Free demo with your own files
- 24 hour turnaround
- No commitment, no payment

Next step: send me 3 to 5 sample PDFs (contracts, agreements — real files you use daily). You can:

A) Reply to this email and attach the files
B) Share a Google Drive / Dropbox link

Once I have the files, I will build the demo and send you a private link within 24 hours.

Questions? Reply here.

Best,
[your name]
```

**Step 2 — Client sends files (email or GDrive link)**
- Download the files to your computer
- Do NOT upload to the client's workspace yet

**Step 3 — Deploy AnythingLLM for demos (do this once)**

On your VPS (193.233.19.171), deploy a dedicated demo instance:

```bash
docker run -d \
  --name anythingllm-demo \
  --restart always \
  -p 3002:3001 \
  -v ~/anythingllm-demo/data:/app/server/data \
  mintplexlabs/anythingllm
```

Use port **3002** so it does not conflict with anything on port 3001.
If your VPS has limited RAM (4 GB total, n8n already runs), stop n8n first:

```bash
cd ~/n8n-setup && docker compose down
```

**Step 4 — Configure the demo instance (once)**

1. Open `http://193.233.19.171:3002` in browser
2. Create admin account
3. Go to Settings > LLM Provider > Anthropic
4. Enter your Claude API key
5. Go to Settings > Model Router
   - Add Claude Haiku 4.5 as default model ($1/$5)
   - Add Claude Sonnet 5 for complex queries ($2/$10, intro until Aug 31)
   - Enable automatic routing
6. Select embedding provider (default)

**Step 5 — Create a workspace for this client**

1. In AnythingLLM, create a new workspace named `[Client Name] Demo`
2. Upload the client's 3 to 5 PDF files via drag and drop
3. Wait for indexing (30 seconds to 1 minute)

**Step 6 — Verify the demo works**

Run these test queries:

```
"Summarize all uploaded documents"
"Find clause about termination"
"What is the liability limit?"
"What dates or deadlines are mentioned?"
```

Fix any issues (re-upload files if parsing failed).

**Step 7 — Send the demo link to client**

```
Hi [name],

Your demo is ready. Open this link:

http://193.233.19.171:3002

Select the workspace "[Client Name] Demo" and start asking questions.

The demo includes 3 of your PDFs. Ask any question in plain English.
The link expires in 7 days.

Note: this is a shared demo link. Do not upload confidential documents here.
For the full system, we install on your own server where your data stays private.

After testing, let me know:
1. Does it find what you need?
2. How would your team use this daily?
3. Want to proceed with full installation on your server?

Best,
[your name]
```

**Step 8 — Follow up (Day 3 and Day 6)**

- Day 3: "Have you had a chance to test the demo?"
- Day 6: "The demo link expires tomorrow. Want to extend it or discuss full setup?"

**Step 9 — After demo expires or client decides**

If client says yes:
- Invoice for setup and first month
- Deploy AnythingLLM on their VPS (or give them installer script)
- Upload all their documents (not just 3 to 5)
- Schedule 30 min training call

If client says no or does not respond:
- Delete the workspace in AnythingLLM
- No hard feelings, cost to you was $0
- Move on to next lead

## Single-user limitation
AnythingLLM does not have multi-user login in the free version. The demo is a shared workspace — everyone with the link can ask questions. This is fine for a 7-day demo with 3 to 5 sample files. For the full production system, this is not an issue because:
- You install AnythingLLM on the client's own server
- Only their team has access
- AnythingLLM supports multi-user via user accounts in the interface

## Important notes

- Demo runs on YOUR server. Client cannot keep the demo files or system.
- Demo expires in 7 days. After that, delete the workspace and optionally remove the files.
- Do NOT use the client's real production documents for demo. Only use the 3 to 5 sample files they explicitly sent.
- If you get multiple demos at once, create separate workspaces for each client in the same AnythingLLM instance.
- Monthly token cost for demos is near zero (3 to 5 files, a few queries each).

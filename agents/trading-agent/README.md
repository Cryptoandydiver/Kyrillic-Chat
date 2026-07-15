# Trading Data Agent

A CLI agent that answers market/trading questions using DeepSeek V4 via OpenRouter.

## Usage

```bash
export OPENROUTER_API_KEY="sk-..."
python agent.py
```

## Example Questions
- "What's the correlation between BTC and gold in 2026?"
- "Explain the concept of gamma hedging"
- "Compare WTI crude and Brent — which is more volatile?"
- "What indicators would you use for mean reversion on crypto?"

## Stack
- DeepSeek V4 (via OpenRouter)
- Python + httpx
- No local LLM required — all API-based

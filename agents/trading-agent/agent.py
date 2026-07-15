import os
import json
import httpx
from typing import Optional
from rich import print
from rich.panel import Panel

OPENROUTER_API_KEY = os.environ.get("OPENROUTER_API_KEY")
MODEL = "deepseek/deepseek-v4"

SYSTEM_PROMPT = """You are a trading data analyst. You answer questions about market data, 
trading strategies, and financial analysis. You base your answers on actual market data 
provided in the conversation. You are concise and precise. When citing data, you state 
the source and timeframe."""

def query_llm(prompt: str, api_key: str) -> Optional[str]:
    resp = httpx.post(
        "https://openrouter.ai/api/v1/chat/completions",
        headers={
            "Authorization": f"Bearer {api_key}",
            "Content-Type": "application/json",
        },
        json={
            "model": MODEL,
            "messages": [
                {"role": "system", "content": SYSTEM_PROMPT},
                {"role": "user", "content": prompt},
            ],
            "temperature": 0.3,
        },
        timeout=60,
    )
    if resp.status_code != 200:
        print(f"[red]API error {resp.status_code}: {resp.text}[/red]")
        return None
    return resp.json()["choices"][0]["message"]["content"]

def main():
    if not OPENROUTER_API_KEY:
        print(Panel("[red]Error: OPENROUTER_API_KEY not set[/red]"))
        print("Usage: set OPENROUTER_API_KEY=sk-... then run")
        return

    print(Panel("[bold]Trading Data Agent[/bold]\nAsk market-related questions. Type 'exit' to quit."))

    while True:
        try:
            user_input = input("\n[?] Your question: ").strip()
        except (EOFError, KeyboardInterrupt):
            break

        if not user_input:
            continue
        if user_input.lower() in ("exit", "quit", "q"):
            break

        print("[yellow]Thinking...[/yellow]")
        answer = query_llm(user_input, OPENROUTER_API_KEY)
        if answer:
            print(Panel(answer, title="Answer"))

if __name__ == "__main__":
    main()

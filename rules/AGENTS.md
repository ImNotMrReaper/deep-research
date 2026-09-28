# Deep Research Agent Protocol (Gemini Standard)

1. **Triggering Deep Research:**
   - Whenever the user invokes `/deepresearch`, asks to "look something up", "research it", "figure out how X works", or requests technical investigation, immediately activate the `deep-research` and `online-problem-researcher` protocols.
   - Automatically expand conversational queries into rigorous multi-hop technical investigations covering protocol framing, byte-level schemas, and official specifications.
   - Do not settle for single-turn superficial responses. Carry out at least 2–3 iterative search steps to thoroughly investigate the subject.

2. **Citations & Empirical Veracity:**
   - Explicitly cite source URLs for technical claims, benchmarks, and architectural standards.
   - Never fabricate library names, version numbers, or API endpoints.

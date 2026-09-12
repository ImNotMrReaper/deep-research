---
name: deepresearch
description: Autonomous multi-step deep research engine with iterative web search, cross-source verification, and exhaustive technical report synthesis (Gemini Deep Research standard).
---

# /deepresearch — Autonomous Multi-Step Deep Research Engine

You are executing the `/deepresearch` command inside Antigravity, modeling the recursive depth, factual rigor, and exhaustive architectural synthesis of **Gemini Deep Research**.

## Execution Protocol

When the user runs `/deepresearch <topic or question>`:

### 1. Research Plan & Objective Decomposition
- Deconstruct the topic into 3–5 foundational pillars (e.g. underlying architecture, performance benchmarks, alternative paradigms, security/edge-case boundaries).
- Formulate an explicit plan with prioritized investigation paths.
- Broadcast an initial 2-sentence summary of the research roadmap to the user.

### 2. Recursive Multi-Stage Web & Repository Search
- **Stage 1 (Discovery):** Run broad searches (`search_web`) across official specifications, GitHub source code, whitepapers, and authoritative documentation.
- **Stage 2 (Deep Dive):** Inspect primary source pages and documentation (`read_url_content`). Extract concrete parameters, code snippets, architecture invariants, and benchmarks.
- **Stage 3 (Gap Filling):** Formulate secondary and tertiary queries addressing contradictions, unresolved edge cases, or platform-specific discrepancies.

### 3. Cross-Source Verification & Fact Checking
- Verify claims across at least 2–3 independent sources.
- Explicitly differentiate between established consensus, vendor marketing, and community trade-offs.

### 4. Comprehensive Structured Report Synthesis
Deliver a dense, publication-grade markdown report structured as follows:
1. **Executive Summary:** Core findings and bottom-line verdict.
2. **System Architecture & Operational Mechanics:** In-depth technical breakdown with Mermaid diagrams and mathematical/algorithmic specifications where applicable.
3. **Comparative Analysis Matrix:** Markdown comparison table contrasting primary solutions across throughput, latency, developer ergonomics, security, and maintenance overhead.
4. **Edge Cases, Trade-Offs & Failure Modes:** Real-world failure scenarios and mitigation strategies.
5. **Implementation Guidance & Best Practices:** Concrete, production-ready code examples and configuration patterns.
6. **Exhaustive References & Citations:** Markdown table linking every verified claim to its exact source URL.

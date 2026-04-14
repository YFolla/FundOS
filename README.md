# White Star Capital TeamOS Template

This repository is a starter TeamOS for a venture capital firm.

The design goal is simple: make firm context easy for agents to load, navigate, and keep current. The canonical knowledge lives in Markdown and YAML so the system works well with Codex first and stays exportable to Claude or any other agent later.

## What is inside

- `TEAMOS.md` is the canonical operating map for the repo.
- `AGENTS.md` is the Codex-facing adapter.
- `CLAUDE.md` is the Claude-facing adapter.
- `companies/` is the main working surface for sourced, diligence, passed, and portfolio companies.
- `markets/` holds theses and market maps that support sourcing and diligence.
- `funds/` holds LP and fund-level context.
- `operations/knowledge-ingestion/` explains how to seed the repo from existing systems like Box and your CRM.
- `.codex/` holds the durable plan and acceptance contract for this template.

## Seed dataset

This template includes three fictional companies so the structure is immediately usable:

- `arcturus-ai`: sourced
- `helix-pay`: active diligence
- `lumenfleet`: portfolio

They are illustrative only. Replace them with real firm context as soon as you start seeding.

## Verification

Run:

```bash
./scripts/verify-template.sh
```

## Design principles

- Keep the root files thin and navigational.
- Use object indexes before searching the whole repo.
- Treat Box, CRM, email, and Slack as source systems, not the TeamOS itself.
- Curate durable knowledge into Markdown and YAML instead of dumping raw files everywhere.
- Update the index whenever you add or materially change an object.

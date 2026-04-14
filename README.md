# White Star Capital FundOS Template

This repository is a FundOS: a TeamOS adapted for an investment firm.

The startup version of TeamOS is usually centered on features, product decisions, and go-to-market execution. The fund version keeps the same operating idea but changes the primary objects. Instead of organizing context around product features, FundOS organizes it around companies, market themes, funds, and investment decisions.

The goal is not to create another document repository. The goal is to create a retrieval-friendly operating system so Codex, Claude, and humans can quickly answer high-value questions without reassembling context from Box, CRM, email, Slack, and scattered notes every time.

## Why A FundOS Exists

In most firms, context lives in too many places:

- CRM holds structured company metadata
- Box holds memos, decks, and LP materials
- meetings hold the newest thinking
- Slack and email hold nuance, follow-ups, and decisions
- the real investment judgment often lives in a few people's heads

That creates two problems:

1. humans waste time reconstructing context
2. AI cannot help very much because the operating context is fragmented

FundOS solves that by creating one durable, navigable context layer for the firm.

## How TeamOS Maps To A Fund

The TeamOS pattern from product teams is "maps first, content second." For a startup, the canonical object is often a feature. For a fund, the canonical objects are:

- company
- person
- market theme
- fund
- decision

That shift matters because it lets the same TeamOS logic support the actual operating loops of the firm:

- sourcing and qualification
- active diligence
- investment committee preparation
- pass and revisit decisions
- portfolio support
- LP reporting
- new team-member onboarding

## Where This Creates Leverage

A good FundOS should make the firm faster and more consistent in a few specific ways:

- Better sourcing context: every company has a canonical dossier, current status, owner, source refs, and next step.
- Faster diligence: memos, interactions, diligence notes, and market context are linked instead of rediscovered.
- Clearer IC history: decision logs preserve why the firm invested, passed, or wanted to revisit.
- Better portfolio support: portfolio plans and board-prep context become reusable and searchable.
- Easier LP work: fund-level context and recurring update material live in one predictable place.
- Less partner bottleneck: institutional memory becomes shared instead of trapped in inboxes and heads.
- Better AI assistance: agents can retrieve a small number of high-signal files instead of exploring the whole repo or every external system.

## Why This Structure Works For Codex And Claude

The structure is intentionally simple:

- Markdown holds narrative context
- YAML holds indexes and structured lookups
- root files stay thin and navigational
- indexes route the agent before it starts reading detailed files

That makes the system efficient for both humans and models. Instead of opening dozens of files, an agent can:

1. read the root map
2. open the relevant top-level index
3. open the exact YAML index entry
4. read only the linked files

This is the core reason FundOS is useful. It turns messy firm context into directed retrieval.

## What Is Inside

- `TEAMOS.md` is the canonical operating map for the repo.
- `AGENTS.md` is the Codex-facing adapter.
- `CLAUDE.md` is the Claude-facing adapter.
- `companies/` is the main working surface for sourced, diligence, passed, and portfolio companies.
- `markets/` holds theses and market maps that support sourcing and diligence.
- `funds/` holds LP and fund-level context.
- `firm/` holds strategy, investment principles, and reusable playbooks.
- `operations/knowledge-ingestion/` explains how to seed the repo from systems like Box and your CRM.
- `.codex/` holds the durable plan and acceptance contracts for the template.

## Seed Dataset

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

## Design Principles

- Keep the root files thin and navigational.
- Use object indexes before searching the whole repo.
- Treat Box, CRM, email, and Slack as source systems, not the FundOS itself.
- Curate durable knowledge into Markdown and YAML instead of dumping raw files everywhere.
- Update the relevant index whenever you add or materially change an object.

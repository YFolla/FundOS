# FundOS Guide

## What FundOS Is

FundOS is White Star Capital's version of the TeamOS pattern described in the transcript.

The original TeamOS idea was built for product teams. Its core purpose is to help a team scale context across more people, more blended roles, and more decisions without forcing everyone to reconstruct the same information over and over again.

FundOS applies that same idea to an investment firm.

Instead of centering the repository on product features, FundOS centers it on the core objects a fund actually works with:

- companies
- people
- market themes
- funds
- decisions

In practice, FundOS is not just a document repository. It is a curated context layer that sits between the firm's source systems and the people or agents trying to do work.

## Why FundOS Is Useful

The transcript makes a simple point that applies directly to a fund: when more people are making decisions, context has to scale better than it did before.

At a fund, context is usually fragmented:

- CRM has structured company metadata
- Box has memos, decks, and LP materials
- meetings have the newest thinking
- Slack and email hold nuance and follow-ups
- final judgment is often trapped in a few people's heads

FundOS is useful because it turns that fragmented context into a shared, navigable operating system.

That creates practical leverage in the places where funds actually spend time:

- Sourcing: a company can be understood quickly without reopening every old note.
- Diligence: interactions, memos, market context, and open questions are connected.
- IC prep: decision rationale and unresolved risks become explicit and reviewable.
- Pass and revisit workflows: the firm remembers why it passed and what would change the view.
- Portfolio support: support plans, board prep, and operating context become reusable.
- LP reporting: fund-level context and recurring materials live in one place.
- Onboarding: new team members can understand how the firm thinks and works much faster.

It is also useful specifically for Codex and Claude. Agents work much better when the important context is organized into small, linked files instead of being spread across giant folders and external tools.

## How FundOS Works

FundOS follows the same context-management logic highlighted in the transcript: keep always-loaded context lean, use indexes to route the agent, and only load detailed files when needed.

### 1. Root maps stay thin

The root of the repo contains:

- `README.md`
- `TEAMOS.md`
- `AGENTS.md`
- `CLAUDE.md`

These files are not meant to hold the entire firm's knowledge. Their job is to explain how to navigate the repo and where to look next.

### 2. Top-level folders match the fund's real work

FundOS is organized into a few durable working areas:

- `companies/`
- `markets/`
- `funds/`
- `firm/`
- `team/`
- `operations/`

This keeps the structure aligned with how the firm actually operates rather than how a source system happens to store files.

### 3. Indexes come before content

The repo is designed around "maps first, content second."

That means the preferred retrieval path is:

1. read `TEAMOS.md`
2. open the relevant top-level index
3. open the relevant YAML index entry
4. read only the linked object files

Examples:

- `companies/companies-index.yaml`
- `markets/themes-index.yaml`
- `funds/funds-index.yaml`

This is one of the biggest ideas from the transcript. Good indexes reduce unnecessary exploration, which keeps both humans and models focused.

### 4. Every important object gets one obvious home

Each company should have one canonical folder.

That folder can then hold the durable context that matters:

- company summary
- people
- decision log
- interactions
- diligence notes
- memos
- portfolio plan, if relevant

The same pattern applies to market themes and funds. The goal is to avoid duplicate dossiers and scattered mini-summaries.

### 5. FundOS curates source systems instead of replacing them

FundOS is not the same thing as Box, CRM, Slack, or email.

Those remain source systems. FundOS should store the durable, high-signal context extracted from them, plus the references needed to get back to the originals when necessary.

This is why the repo uses:

- Markdown for narrative summaries and reasoning
- YAML for indexes and structured lookup
- source refs for CRM IDs, Box paths, meeting references, or thread links

The rule is simple: curate the context, do not dump the raw system into the repo.

### 6. Summaries should do most of the work

Another key idea from the transcript is that summaries are often more useful than raw transcripts or full documents.

For FundOS, that means:

- meeting summaries should usually be read before full transcripts
- company summary files should usually be read before every diligence memo
- decision logs should make outcomes explicit so future sessions do not have to infer them

The repo should only force an agent or person into raw materials when the summary layer is not enough.

## How To Contribute

Team members should treat FundOS as part of the firm's operating workflow, not as a side project.

### Add or update a company

When a company becomes relevant:

1. create or update its canonical folder under `companies/`
2. update `companies/companies-index.yaml`
3. add or update the summary files that matter
4. preserve source refs back to CRM, Box, and meeting systems

### Add or update a market theme

When the firm develops or refines a thesis:

1. create or update the theme folder under `markets/`
2. update `markets/themes-index.yaml`
3. capture the thesis, supporting evidence, and disconfirming questions

### Add or update a fund artifact

When LP or fund-level context changes:

1. create or update the relevant file under `funds/`
2. update `funds/funds-index.yaml`
3. keep recurring materials like LP updates in predictable locations

### Add or update a decision

When the firm invests, passes, revisits, or changes support priorities:

1. update the relevant `decision-log.md`
2. make the reasoning explicit
3. capture the trigger for revisiting the decision
4. assign the next owner when relevant

### Add or update a playbook

When the firm finds a repeated workflow worth standardizing:

1. add the playbook under `firm/playbooks/` or `operations/`
2. keep it practical and reusable
3. link it from the nearest index if it becomes part of normal navigation

## Contribution Rules

These rules matter because the transcript is very clear on one risk: context rot.

### Keep root files lean

Do not turn the root `CLAUDE.md`, `AGENTS.md`, or `TEAMOS.md` into giant information dumps. They should help route work, not replace the structured folders.

### Prefer one canonical home

Do not create multiple overlapping summaries for the same company, theme, or decision unless there is a clear reason.

### Update the index whenever the object changes

If you add a meaningful artifact but do not update the relevant index, the system becomes harder to navigate and less useful for both humans and agents.

### Write summaries before storing bulk material

Do not dump raw transcripts, long meeting notes, or random exports into the repo without creating a concise, durable summary first.

### Preserve source references

Always keep enough information to trace the summary back to the original source system.

### Make decisions explicit

Do not leave final thinking trapped in Slack, email, or oral history. If something mattered to the firm's view, capture it in the canonical object folder.

### Keep changes reviewable

The transcript also makes a useful point about review quality: large mixed changes are hard to review. Prefer smaller, clearly scoped updates over giant context dumps.

### Add plans and verification for substantial work

When a change is broad, ambiguous, or high-risk, add a plan or contract under `.codex/` so the work can be reviewed, verified, and extended later.

## Suggested Team Workflow

A practical operating loop for FundOS looks like this:

1. Work happens in source systems such as Attio, Box, meetings, email, and Slack.
2. Durable conclusions and summaries are pulled into FundOS.
3. The canonical object folder is updated.
4. The relevant YAML index is updated.
5. A reviewer can now understand the change in one place.
6. Future humans and agents start from the updated summary layer instead of rebuilding context from scratch.

## What FundOS Should Not Become

FundOS should not become:

- a raw mirror of Box
- a backup of every conversation
- a second CRM
- a giant root prompt
- a collection of stale summaries no one trusts

Its value comes from being curated, navigable, and current.

## Where To Start

If you are new to FundOS, start with:

1. `README.md`
2. `TEAMOS.md`
3. the top-level index closest to your work
4. the relevant YAML index

If you are making updates, use the templates and contribution rules above before adding new material.

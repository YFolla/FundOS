# TeamOS

This is the canonical operating map for the White Star Capital TeamOS template.

## Purpose

The repo is designed to make firm context legible to both humans and coding agents. The system should answer questions like:

- What do we know about this company?
- Why did we pass or invest?
- Which market thesis applies here?
- What is the current next step?
- What should go into an LP update or portfolio support plan?

## Canonical Objects

The primary working objects are:

1. Company
2. Person
3. Market theme
4. Fund
5. Decision

Each object should have one obvious home. Avoid copying the same facts into multiple places.

## Retrieval Order

When starting new work:

1. Read this file.
2. Open the relevant top-level index:
   `companies/INDEX.md`, `markets/INDEX.md`, `funds/INDEX.md`, `firm/INDEX.md`, or `operations/INDEX.md`.
3. Open the relevant YAML index for the exact object.
4. Open only the files linked from that index entry.

This is the core TeamOS pattern: use maps first, content second.

## Folder Map

```text
/
  README.md
  TEAMOS.md
  AGENTS.md
  CLAUDE.md
  team/
  firm/
  companies/
  markets/
  funds/
  operations/
  templates/
  .codex/
```

## Top-Level Responsibilities

- `team/`: people, cadence, systems, operating norms
- `firm/`: strategy, investment theses, decision principles, reusable playbooks
- `companies/`: all company dossiers and decision trails
- `markets/`: market theses, landscapes, market maps
- `funds/`: fund-level and LP-facing context
- `operations/`: firm operations and knowledge-ingestion playbooks
- `templates/`: starter docs for new objects

## Data Standards

- Prefer Markdown for narrative context.
- Prefer YAML for indexes, lookups, and structured metadata.
- Link source-system identifiers in the index entry for every important object.
- Preserve original system references such as CRM IDs, Box paths, meeting IDs, or email thread links.
- Add dates in ISO format: `YYYY-MM-DD`.
- Mark sensitive material explicitly in the doc body when relevant.

## Update Rules

Whenever you add a new company, theme, or fund artifact:

1. Create or update the canonical object folder.
2. Update the relevant YAML index.
3. Add or update the local `INDEX.md` if the retrieval path changed.
4. Keep source references current.

## Portability Rule

The knowledge should be agent-neutral. `AGENTS.md` and `CLAUDE.md` are wrappers, not the system itself.

If a future agent cannot read a vendor-specific folder, it should still be able to operate from:

- `TEAMOS.md`
- the top-level indexes
- the object folders

## Seeding Rule

Box is a source system, not the TeamOS itself.

Seed the repo by curating the most useful material from Box, CRM, meeting transcripts, and fund/admin systems into durable Markdown and YAML. See [operations/knowledge-ingestion/seeding-playbook.md](/Users/yannickfolla/CascadeProjects/TeamOS/operations/knowledge-ingestion/seeding-playbook.md).

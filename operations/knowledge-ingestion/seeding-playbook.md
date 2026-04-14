# Seeding Playbook

Yes, Box should be one of the first systems you seed from, but it should not be the only one and it should not be mirrored wholesale into the repo.

## Recommendation

Use Box as a high-value document source, then pair it with structured metadata from the CRM and fresh interaction context from meeting systems.

## Best Seed Sources In Order

1. CRM
   Use it to create the first version of `companies/companies-index.yaml`. Start with company name, status, stage, geography, lead owner, and source-system IDs.
2. Box
   Use it for durable documents: investment memos, diligence decks, board materials, LP letters, valuation packs, and reusable templates.
3. Calendar and meeting transcripts
   Use them to create concise interaction summaries and next-step records for active companies.
4. Email and Slack
   Use them sparingly for durable decisions or commitments that are missing elsewhere.
5. Fund admin and finance systems
   Use them for fund and LP layers once company and market context is already working.

## Box Strategy

Do not dump Box into Git. Instead:

1. Inventory the top-level Box folders used by investing, portfolio, finance, and legal.
2. Identify the highest-value recurring document types.
3. Summarize each durable document into a Markdown artifact in the right object folder.
4. Preserve the original Box path in the YAML index entry.
5. Keep only the documents that improve future work.

## What To Seed First

Start with a narrow, high-signal slice:

- the top 25 active pipeline companies
- the current portfolio
- the last 12 months of IC memos
- the last 2 quarters of LP updates
- 3 to 5 active market theses

That is usually enough to make the system immediately useful without creating a migration project that never finishes.

## Suggested Migration Phases

### Phase 1: Firm skeleton

- fill `team/team-roster.yaml`
- fill `team/systems-map.yaml`
- write a concise `firm/strategy/firm-overview.md`
- define statuses and decision language

### Phase 2: Company layer

- export live company metadata from CRM
- create the first real `companies-index.yaml`
- create company folders only for active pipeline and portfolio
- summarize the best Box docs into memos, diligence notes, and decision logs

### Phase 3: Market layer

- add 3 to 5 durable theses
- link active companies to those themes
- capture disconfirming evidence and open questions

### Phase 4: Fund and LP layer

- add fund overviews
- add the last two LP update cycles
- add valuation and reporting references only where they support recurring work

## Good Ingestion Rules

- Prefer curated Markdown over raw PDF dumps.
- Keep one canonical object folder per company.
- Put durable findings in the repo, not just source-system links.
- Preserve the original source refs so humans can trace back to Box or CRM.
- If a document is sensitive but important, keep the summary in the repo and the original in the restricted source system or companion private repo.

## Success Metric

The seed is good enough when an agent can answer:

- What is this company?
- Where are we in process?
- Why do we care?
- What do we still need to prove?
- What is the next step?

without searching every external system from scratch.

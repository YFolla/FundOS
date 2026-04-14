# Contract: FundOS Guide Doc

## Objective

Add a clear `/docs` guide that explains what FundOS is, how it works, why it is useful, and how team members should extend and contribute to it.

## Acceptance Criteria

1. A new guide exists at `docs/fundos-guide.md`.
2. The guide explains FundOS as the fund-specific version of the TeamOS pattern from the transcript.
3. The guide explains how FundOS works in repo terms:
   - root maps
   - top-level indexes
   - YAML indexes
   - canonical object folders
   - source systems versus curated repo context
4. The guide explains why FundOS is useful for fund workflows such as sourcing, diligence, IC prep, portfolio support, LP reporting, and onboarding.
5. The guide gives concrete contribution guidance for team members, including how to update company, market, fund, and decision context.
6. The guide includes contribution rules that discourage context rot and raw document dumping.
7. `README.md` links to the new guide.

## Automated Check

```bash
test -f docs/fundos-guide.md && \
rg -q "^## What FundOS Is" docs/fundos-guide.md && \
rg -q "^## Why FundOS Is Useful" docs/fundos-guide.md && \
rg -q "^## How FundOS Works" docs/fundos-guide.md && \
rg -q "^## How To Contribute" docs/fundos-guide.md && \
rg -q "^## Contribution Rules" docs/fundos-guide.md && \
rg -q "docs/fundos-guide.md" README.md
```

## Remaining Human Review

- Review whether the tone is best for internal team onboarding only or whether it should also double as an external explainer for founders and collaborators.

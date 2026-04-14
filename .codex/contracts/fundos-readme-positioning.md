# Contract: FundOS README Positioning

## Objective

Improve the repository README so it explains the value of FundOS for an investment firm, not just the folder structure.

## Acceptance Criteria

1. `README.md` explains what FundOS is in operating terms, not only as a template.
2. `README.md` makes clear how the TeamOS pattern translates from a startup context to a fund context.
3. `README.md` includes concrete fund use cases such as sourcing, diligence, IC prep, portfolio support, LP reporting, and onboarding.
4. `README.md` explains why Markdown, YAML, and index-first navigation matter for Codex and Claude.
5. `README.md` still includes the core repo map and verification command.

## Automated Check

```bash
rg -q "^## Why A FundOS Exists" README.md && \
rg -q "^## How TeamOS Maps To A Fund" README.md && \
rg -q "^## Where This Creates Leverage" README.md && \
rg -q "^## What Is Inside" README.md && \
rg -q "^## Verification" README.md
```

## Remaining Human Review

- Review whether the framing feels right for White Star Capital specifically or should remain more general for broader external sharing.

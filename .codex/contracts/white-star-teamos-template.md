# Contract: White Star TeamOS Template

## Objective

The repository should provide a usable starter TeamOS for a venture capital firm, with a structure that makes agent navigation predictable and seeding from existing systems practical.

## Acceptance Criteria

1. Root guidance exists:
   - `README.md`
   - `TEAMOS.md`
   - `AGENTS.md`
   - `CLAUDE.md`
2. Durable planning artifacts exist:
   - `.codex/project-plan.md`
   - `.codex/contracts/white-star-teamos-template.md`
3. Core operating areas exist with indexes:
   - `team/`
   - `firm/`
   - `companies/`
   - `markets/`
   - `funds/`
   - `operations/`
4. A canonical company index exists at `companies/companies-index.yaml`.
5. A canonical market-theme index exists at `markets/themes-index.yaml`.
6. A canonical fund index exists at `funds/funds-index.yaml`.
7. At least three fictional example companies exist covering:
   - sourced
   - active diligence
   - portfolio
8. A seeding playbook exists and explicitly addresses Box.
9. An automated check exists and passes.

## Automated Check

```bash
./scripts/verify-template.sh
```

## Remaining Human Review

- Review whether the object model matches White Star Capital's real investment workflow and permissions model.

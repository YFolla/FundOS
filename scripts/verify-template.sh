#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

required_files=(
  "README.md"
  "TEAMOS.md"
  "AGENTS.md"
  "CLAUDE.md"
  ".codex/project-plan.md"
  ".codex/contracts/white-star-teamos-template.md"
  "team/INDEX.md"
  "team/team-roster.yaml"
  "team/systems-map.yaml"
  "firm/INDEX.md"
  "companies/INDEX.md"
  "companies/companies-index.yaml"
  "markets/INDEX.md"
  "markets/themes-index.yaml"
  "funds/INDEX.md"
  "funds/funds-index.yaml"
  "operations/INDEX.md"
  "operations/knowledge-ingestion/seeding-playbook.md"
)

missing=0
for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Missing required file: $file"
    missing=1
  fi
done

if [[ $missing -ne 0 ]]; then
  exit 1
fi

grep -q "Box is a source system, not the TeamOS itself." TEAMOS.md
grep -q "helix-pay" companies/companies-index.yaml
grep -q "lumenfleet" companies/companies-index.yaml
grep -q "active-diligence" companies/companies-index.yaml
grep -q "portfolio" companies/companies-index.yaml
grep -q "Box" operations/knowledge-ingestion/seeding-playbook.md

echo "Template verification passed."

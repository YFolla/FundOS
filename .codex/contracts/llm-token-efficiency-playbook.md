# Contract: Claude Token Efficiency Playbook

## Objective

Add a reusable firm-level playbook that helps portfolio companies reduce Claude and Claude Code token consumption and subscription-limit pressure through better prompting, context architecture, tool hygiene, and skill design.

## Acceptance Criteria

1. A new playbook exists at `firm/playbooks/llm-token-efficiency-playbook.md`.
2. The playbook is linked from `firm/INDEX.md`.
3. The playbook is written to work as a standalone document or PDF without depending on repo-internal links.
4. The playbook includes practical Claude-specific user habits for reducing token waste.
5. The playbook includes a robust TeamOS-style context-management section with an inline startup repository structure and guidance on folder-level `CLAUDE.md` files.
6. The playbook includes tool, connector, and MCP hygiene guidance.
7. The playbook includes a skills and agents section linked to the public `agents-pack` repo and explains their value in non-technical terms.
8. The playbook includes a phased implementation section.

## Automated Check

```bash
test -f firm/playbooks/llm-token-efficiency-playbook.md && \
rg -q "^# Claude Token Efficiency Playbook" firm/playbooks/llm-token-efficiency-playbook.md && \
rg -q "^## Tips And Tricks That Save Tokens Fast" firm/playbooks/llm-token-efficiency-playbook.md && \
rg -q "^## TeamOS-Style Context Management" firm/playbooks/llm-token-efficiency-playbook.md && \
rg -q "^## Tool, Connector, And MCP Hygiene" firm/playbooks/llm-token-efficiency-playbook.md && \
rg -q "^## Skills And Agents" firm/playbooks/llm-token-efficiency-playbook.md && \
rg -q "^## Phased Implementation" firm/playbooks/llm-token-efficiency-playbook.md && \
rg -q "llm-token-efficiency-playbook.md" firm/INDEX.md
```

## Remaining Human Review

- Review whether the tone feels right for the target CEO and whether the team wants an even shorter one-page companion version for email or PDF cover use.

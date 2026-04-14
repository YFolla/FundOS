# Claude Token Efficiency Playbook

This playbook is for companies that keep hitting Claude or Claude Code limits and want more output, less friction, and better value from the same spend.

The core point is simple: teams usually do not run out of Claude because the model is weak. They run out because the workflow is wasteful. Long chats, vague requests, repeated setup context, too many enabled tools, and too much raw output burn capacity faster than most teams realize.

## Executive Summary

If a CEO wants one practical policy, it should be this:

1. Start a new session for each major task.
2. Keep prompts clear and concise, and edit the original prompt instead of sending corrective follow-ups.
3. Default to short answers unless more depth is clearly needed.
4. Use Haiku for simple work, Sonnet for most work, and Opus only when the task truly requires it.
5. Keep always-loaded instructions short.
6. Enable only the tools needed for the current task.
7. Save durable context in files, Projects, and summaries instead of long chat histories.

Done well, this improves three things at once:

- more work completed before limits are hit
- lower wasted spend
- better output quality because Claude works with cleaner context

## Tips And Tricks That Save Tokens Fast

The biggest sources of waste are usually:

- long conversations that Claude has to re-read every turn
- vague requests that trigger broad exploration
- large logs, transcripts, search results, and test output
- too many MCP servers and tool surfaces enabled at once
- using expensive models for routine work
- repeating the same setup context in every new session

The highest-value operating habits are:

### 1. Edit instead of correcting

If Claude misunderstood the request, edit the earlier prompt and regenerate it. Do not stack messages like "no, I meant..." unless you truly need the previous exchange to remain in the record.

### 2. Batch related work into one ask

One prompt that says "summarize this, list the risks, and draft the reply" is usually cheaper than three separate prompts.

### 3. Ask for the shortest useful answer first

Good defaults:

- "answer in one paragraph"
- "bullet points only"
- "show the diff only"
- "give me the recommendation, then one sentence of rationale"

Long explanations should be requested on purpose, not by default.

### 4. Reset more often

Do not let one conversation become the company knowledge base. Once a task is done, start fresh.

In Claude Code:

- use `/compact` at clean milestones
- use `/clear` when switching to unrelated work
- use `/model` when a cheaper or stronger model is more appropriate
- use `/effort` to lower reasoning effort for simpler work
- use `/mcp` and `/context` to inspect what is enabled and what is consuming space

### 5. Send only the relevant slice

Paste the exact function, the exact error, or the exact excerpt. Avoid pasting full files, full transcripts, or full terminal output unless the whole object is required.

### 6. Reuse saved context

Use Projects, Memory, User Preferences, and short reusable instructions for recurring context. That avoids spending the first few turns re-establishing the same setup every time.

### 7. Match model to task

- Haiku: summaries, extraction, formatting, light drafting
- Sonnet: default for most serious work, including most coding and writing
- Opus: hard reasoning, architecture, ambiguous debugging, and high-stakes planning

### 8. Filter noise before Claude sees it

The cheapest token is the one you never send. Clean logs, trim search results, and reduce noise before handing anything to Claude.

### 9. Use Claude to discover repeatable work

One of the best ways to reduce future token usage is to ask Claude to study past work and identify what should become reusable.

A useful prompt is:

> Review my last 10 to 20 Claude threads. Identify recurring requests, repeated instructions, recurring output formats, and common debugging or writing workflows that should be turned into reusable skills, templates, or standard prompts.

This is valuable because many teams waste tokens on the same kind of work every week without realizing it.

## TeamOS-Style Context Management

The most important structural fix is to make context easy to find outside the chat.

The full startup TeamOS template lives here:

- [YFolla/TeamOS](https://github.com/YFolla/TeamOS)

The TeamOS idea is simple:

1. Start with a short root map.
2. Route through indexes before opening content.
3. Open only the files relevant to the task.
4. Save decisions in files so a new session can resume without replaying the full history.

For a startup, the TeamOS repository structure looks like this:

```text
/
  TEAMOS.md
  CLAUDE.md
  AGENTS.md
  .claude/
    agents/
    commands/
    skills/
  company/
    CLAUDE.md
    strategy/
    customers/
    competitive-research/
    pricing/
    processes/
  product-development/
    INDEX.md
    feature-index.yaml
    product/
      CLAUDE.md
    engineering/
      CLAUDE.md
    design/
      CLAUDE.md
    analytics/
      CLAUDE.md
  go-to-market/
    CLAUDE.md
  team/
    INDEX.md
  operations/
    INDEX.md
  templates/
  .codex/
```

### Why this structure matters

Most companies store important context in scattered documents, Slack threads, meeting transcripts, and long AI chats. That makes every new Claude session expensive because the model has to rediscover where the truth lives.

TeamOS solves that by giving the company a simple, durable map. Instead of telling Claude "figure out the product, the roadmap, the design choices, and the GTM plan," the team gives Claude a clear route to the right material.

That reduces token waste, improves output quality, and makes the company less dependent on any one person's memory. It also makes the system usable beyond technical staff. One of the most important ideas in the transcript is that this should not be an engineers-only setup. Product, strategy, operations, analytics, and GTM teammates should all be able to contribute durable context into the same system.

### The three-tier context model

The transcript makes an especially useful distinction between three kinds of context:

1. Always loaded context
   This is the root `CLAUDE.md`. It should stay very small and contain only what is needed in most sessions.
2. Loaded on query
   These are the folder-level `CLAUDE.md` files and indexes. Claude only sees them when it enters that part of the system.
3. Loaded on demand
   These are the real content files: PRDs, call summaries, plans, dashboards, transcripts, and investigations.

This matters because it prevents the company from paying the cost of deep context on every single session.

### What belongs in the root `CLAUDE.md`

The root file should stay lean. The transcript's rule of thumb is excellent: if it is longer than about a page, it is probably carrying too much.

The highest-value things to keep there are:

- a doc index that tells Claude where every kind of information lives
- the team roster with names, roles, Slack handles, and GitHub handles
- the most important Slack channels and what they are used for

The root file should be a map, not a dump. Because it is loaded every session, it is the right place for information that helps Claude route work or talk to the right people, not the place for deep project content.

### Why a `CLAUDE.md` in each subfolder

The purpose of a folder-level `CLAUDE.md` is not to store more content. It is to help Claude navigate.

Each one should answer four questions:

1. What is this folder for?
2. What kinds of documents belong here?
3. Which files matter most?
4. What should Claude open first before browsing deeper?

That is useful because it narrows the search space immediately. Claude does not need to scan the whole repository to understand where product docs live versus engineering plans versus GTM material. It can enter the right lane right away.

### What to put in a folder-level `CLAUDE.md`

Keep it short. A good folder-level `CLAUDE.md` should usually include:

- the purpose of the folder
- the expected subfolders or document types
- a short list of key documents
- one routing rule such as "for feature-specific work, start at `feature-index.yaml`"
- one or two sentences of context that are needed in 80% of sessions in that folder

It should not become a giant knowledge base. If it gets long, move the real content into the underlying files and keep the `CLAUDE.md` as the map.

### What goes in each top-level folder

`.claude/`
- the shared operating layer for the team
- reusable agents, commands, skills, and automations
- the right place for things like a customer-call-summary skill, a PR creation command, or a weekly synthesis workflow

`company/`
- business context that should not be buried inside product or engineering artifacts
- strategy, customer segments, important accounts, pricing, competitive context, recurring business processes

`product-development/`
- the operating center for feature work
- product, engineering, design, and analytics artifacts
- one `feature-index.yaml` that links the PRD, engineering plan, design spec, dashboards, launches, and tickets for each feature

`product-development/product/`
- PRDs, workflows, and product meeting summaries

`product-development/engineering/`
- architecture docs, RFCs, implementation plans, and bug investigations

`product-development/design/`
- design specs, UX decisions, flows, and visual rationale

`product-development/analytics/`
- dashboards, experiments, investigations, metrics definitions, queries, and schemas

`go-to-market/`
- positioning, messaging, sales enablement, and launch materials

`team/`
- roster, ownership, onboarding, systems, retros, and who is responsible for what

`operations/`
- reusable company playbooks for recurring operating work

`templates/`
- starter documents so new artifacts follow the same structure

`.codex/`
- task contracts, handoffs, and other durable execution artifacts for substantial work

### Ownership and upkeep matter

Another important transcript point is that this repository should be maintained by the whole team, not by one hero.

The best pattern is:

- each functional lead owns the structure and quality of their area
- the team agrees on common formats and naming
- everyone contributes context as part of normal work

The highest-performing version of this is when updating the repository becomes part of the work itself. In practice, that means a feature is not truly launched until the linked docs, metrics, plans, and context in the repository are current.

### Summaries first, raw material second

One of the best transcript takeaways is that not all source material deserves first-class loading priority.

For example:

- a one-hour customer call transcript may be 10,000 or more tokens
- a structured summary of that same call may be 300 to 700 tokens

The efficient pattern is:

1. keep the raw material if it matters
2. create a standardized summary
3. point Claude to the summary first
4. only open the full transcript if the summary is insufficient

This is especially important for customer calls, meeting notes, support escalations, and research transcripts.

### Why the feature index matters so much

The smartest part of the TeamOS startup pattern is the feature index.

Instead of forcing Claude to browse product, engineering, design, analytics, and GTM folders separately, the feature index links the key artifacts for one feature in one place. That means Claude can go directly to the PRD, the engineering plan, the design spec, the dashboards, the launch materials, and the ticket references without broad exploration.

This is one of the clearest ways to save tokens while also improving quality.

## Tool, Connector, And MCP Hygiene

This is the "MCP bloat" problem in plain English: every extra tool may be useful in theory, but expensive in practice.

One nuance from the broader Claude ecosystem is worth keeping in mind: modern tools increasingly use deferred or dynamic tool loading, which means not every tool is shoved into every prompt the way early systems behaved. That is a real improvement. But it does not remove the need for discipline. A smaller active tool surface still improves routing, reduces unnecessary tool calls, and makes behavior easier to predict.

A good company policy is:

- connect the core systems the team actually uses day to day
- enable only the tools needed for the current workflow
- disable unused MCP servers
- use simple tool profiles such as `coding`, `research`, `browser-qa`, and `ops`
- prefer CLI or API workflows when they are simpler and cheaper than rich tool integrations

In other words: integrate broadly, activate narrowly.

Practical examples:

- instead of sending a full log, send only `ERROR`, `FAIL`, and nearby lines
- instead of searching the whole repository, search the exact folder first
- instead of defaulting to browser automation, use direct CLI or API checks when possible
- connect systems like GitHub, Slack, analytics, and documentation because they are core to how the team works, but do not keep every one of them active for every task

The principle is simple: Claude should see the smallest useful problem, not the full mess around it.

## Skills And Agents

The full reusable skill and agent bundle lives here:

- [YFolla/agents-pack](https://github.com/YFolla/agents-pack)

Most teams do not need more skills. They need fewer, better-defined skills.

The value of skills is that they reduce repeated prompting. Instead of re-explaining how you want planning, implementation, QA, or handoff work done every time, you package that method once and reuse it.

That creates three benefits:

- lower token usage because less setup has to be repeated
- more consistent output because the workflow is standardized
- easier thread resets because the skill carries the operating pattern

In plain English:

- a skill is a reusable playbook
- an agent is a reusable role with a checklist and way of working

Both are valuable because they stop the team from paying the setup cost of "how should Claude do this?" every single time.

One practical distinction from the transcript is useful here:

- team-wide skills, commands, and agents belong in the shared repo
- personal writing guides and highly individual preferences belong in each person's own local setup

That keeps the company operating system shared while still letting individuals keep their own voice and workflow preferences.

### Highest-value core skills

- `project-planner`
  turns a vague ask into a short plan and a task contract

- `implementation-builder`
  executes one bounded slice instead of absorbing the whole backlog

- `qa-evaluator`
  gives a clear pass, blocked, or fail verdict

- `handoff-writer`
  lets the team reset the thread without losing state

### Why agents matter

Agents are useful when the company wants repeatable role behavior, such as:

- a delivery lead
- a product manager
- a release reviewer
- a failure investigator
- a technical writer

The value is not that they magically replace management. The value is that they give Claude a clear role and checklist without requiring the team to restate that role every time.

### Shared commands and automations

The next layer after skills is shared commands and automations.

Examples:

- a command that opens a pull request in the right format
- a command that posts the right Slack message when a PR is ready for review
- an automation that synthesizes customer research every week and shares it with the team

These matter because they standardize repetitive work and make good operating habits automatic.

### Recommended additional skill

One especially valuable addition would be:

- `token-efficiency-optimizer`

Its job would be to review `CLAUDE.md`, existing prompts, skills, hooks, and MCP surfaces and recommend what should be simplified, split, or removed to reduce token waste.

One final lesson from the transcript is worth keeping: do not copy skills, commands, or structures blindly. Ask Claude to explain why they work, then adapt them to the company. That makes the system easier to improve and easier to fix when something stops working.

One especially useful class of skills is summary skills. For example, a shared customer-call-summary skill can force every teammate to summarize calls in the same format. That makes future retrieval and cross-customer analysis much cheaper and much more reliable than storing ten different styles of meeting notes.

## Phased Implementation

The company does not need to do everything at once. A sensible order is:

### Phase 1. Fix habits

Start with the tips and tricks:

- shorter prompts
- shorter outputs
- better model routing
- more frequent session resets
- less raw noise sent to Claude

### Phase 2. Fix tool sprawl

Then clean up tool usage:

- disable unused MCP servers
- reduce unnecessary browser and search usage
- create simple tool profiles by workflow

### Phase 3. Fix context architecture

Then implement TeamOS:

- create the root map
- create the folder-level maps
- create the feature index
- create templates
- create short task contracts and handoffs

### Phase 4. Turn repeated work into reusable skills

Once patterns are visible:

- ask Claude to review past threads
- identify repeated instructions and output formats
- convert the most common ones into reusable skills and agent prompts

This is usually the right order. Better habits create immediate savings. Better structure creates lasting savings.

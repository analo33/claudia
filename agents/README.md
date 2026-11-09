# Agents (subagents)

A **skill** is a procedure the main agent follows inside the conversation. A **subagent** is a separate worker with its own context window, useful when a task is bounded, read-heavy (research, review) or should run on a cheaper model.

This folder is the canonical home for subagent definitions. It ships empty.

## Format (one Markdown file per subagent)

```markdown
---
name: researcher
description: When to use it, in one or two sentences.
tools: Read, Grep, Glob, WebSearch
model: haiku
---

Instructions for the subagent: what it receives, what it must return, what it must never do.
```

## How to create one

1. Write `agents/<name>.md` with the format above.
2. Copy it byte-identical to `.claude/agents/<name>.md` (Claude Code discovers subagents there).
3. Codex uses a different format (`.codex/agents/<name>.toml` plus an entry in `.codex/config.toml`). This version of AI WorkOS does not generate it: subagents work in Claude Code only. Say so to the user when creating one.

Prefer a skill unless the task truly benefits from isolation or a different model.

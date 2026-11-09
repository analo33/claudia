# Logs

The daily journal of what got done. Written by the agent; never loaded at session start except for the consolidation step in AGENTS.md.

## Format

- One file per day: `logs/daily/YYYY-MM-DD.md`. All sessions of a day write to the same file.
- One line per accomplishment: `- [slug] what was done (result)`. Prefix `HH:MM ` only when the time is known. `[general]` when no project applies; `[workos]` for maintenance of this system.
- `logs/_index.md`: one row per day with activity: `| YYYY-MM-DD | slugs | summary of at most 20 words |`. The date in the first column identifies the row.

Each line stands alone: the file name gives the date, the tag gives the project. That is what makes search cheap.

## How to answer questions about the past

| Question | Read | Never |
|---|---|---|
| "How is X going?" / "What's next in X?" | `projects/X/status.md` | logs |
| "What did we do this week / this month?" | last N rows of `logs/_index.md` | daily files |
| "What have we done lately in X?" / "When did we do Y in X?" | search the text `[x]` in `logs/daily/` with your search tool; each hit carries its file name (the date). Read the last ~30 hits | the whole folder |
| "What happened on 12 September?" | `logs/daily/2026-09-12.md`; if absent, look in `logs/daily/YYYY-Qn/` | other days |
| "When did we talk about the newsletter?" | search that word in `logs/daily/` | the whole folder |

State lives in `status.md`; logs are history. Never rebuild a project's state from logs.

## Writing

Done by the `wrap-up` skill (full close or a single note) and by AGENTS.md rule 3 during the session. Templates for the daily file and the index row are in `skills/wrap-up/templates/`.

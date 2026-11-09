---
name: wrap-up
description: Close a work session or jot a single note in the daily log. Use when the user says they are done ("cerramos", "terminamos por hoy", "that's it for today"), asks to log something ("apunta esto", "apúntalo"), or when a closure reminder appears. Rewrites the touched projects' status.md, appends log lines and decisions, updates the log index, and offers a commit.
---

# Wrap up

## Two modes

- **note**: the user says "apunta esto: …" or "apúntalo". Append one line to today's daily log and stop. No status changes, no confirmation, no commit.
- **full**: the session is ending. Follow all the steps below.

Pick the mode from the request. A closure reminder injected by a hook means full mode unless the user's words are clearly a single note.

## Full mode

### 1. Collect, do not write yet

From the conversation, list:
- the projects touched (slugs);
- deliverables finished, one short line each, in the form `- [slug] what was done (result)`;
- state changes per project: what is true now, next steps, blockers, initiatives started or finished;
- decisions taken, and whether each affects one project or several;
- open loops the user must handle.

### 2. Read only what you need

- Today's file `logs/daily/YYYY-MM-DD.md`, if it exists, to know which lines are already there (AGENTS.md rule 3 may have written some during the session).
- The `status.md` of each touched project (you already read it when the project was loaded; re-read only if you are unsure of its current text).
- The last rows of `logs/_index.md`, to see whether today already has a row.

Do not open other days' logs or other projects.

### 3. Show the plan and ask for one yes

Present, in the user's language:
- the log lines that are **missing** from today's file (skip anything already logged);
- the new `status.md` of each touched project, whole;
- the decision lines and their destination (`projects/<slug>/decisions.md` or `decisions/log.md`);
- the row for today in `logs/_index.md`: `| YYYY-MM-DD | slugs | summary ≤ 20 words |`;
- whether a commit will follow.

Wait for the yes. Apply corrections if the user edits anything.

### 4. Write

1. Daily log: create `logs/daily/YYYY-MM-DD.md` from `templates/daily-log.md` if it does not exist; append the missing lines at the end.
2. `status.md`: rewrite each touched file entirely, set `updated:` to today. Finished initiatives leave the file.
3. Decisions: append lines in the agreed files.
4. `logs/_index.md`: if a row with today's date exists, replace it; otherwise append one (template in `templates/index-row.md`).
5. If a `.git` folder exists: stage only the files you wrote plus the files the user worked on this session (by path, never `git add -A` here), show `git status --short`, commit with a one-line message in the user's language. Ask before `git push`; skip the push if there is no remote.
6. If there is no `.git` folder, say nothing about git.

### 5. Report

Three lines at most: what was logged, which status files changed, what is left open for the user.

## Note mode

1. Build the line `- [slug] text (result)`; use `[general]` if no project applies.
2. Create today's file from the template if needed; append the line.
3. Reply with the line written. Nothing else.

## Never

- Rebuild a project's state from the logs.
- Write secrets, transcripts or long pastes into the log.
- Append to `status.md`: it is always rewritten whole.
- Write the same accomplishment twice in the same day.

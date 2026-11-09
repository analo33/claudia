# Archive

Retired projects and material. Nothing here is loaded unless the user asks about it. Archive instead of deleting.

## Procedure: "archive project X"

1. Confirm the slug and that the user wants it retired (not paused; paused projects stay in `projects/` with `stage: paused`).
2. Move the whole folder `projects/<slug>/` to `archive/projects/<slug>/`, keeping its contents intact.
3. In the moved `status.md`, set `stage: archived`, update `updated`, and add one line under "Now" with the reason and the date.
4. Remove the project's line from the `<!-- projects:start -->` block in AGENTS.md.
5. Append one line to today's daily log: `- [slug] archived (reason)`.
6. If the user later asks about an archived project, read `archive/projects/<slug>/README.md` and `status.md` only.

Other retired material (old inbox files, superseded documents) goes under `archive/<origin>/` keeping the original path.

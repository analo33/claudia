# Projects

One folder per project (a site, a channel, a newsletter, a community, an app, a store). Folder name = slug in lowercase with hyphens (`mi-blog`, `mi-comunidad`). Every project has these files:

- `README.md`: what it is, for whom, how it makes money, channels and URLs, stack, sources. Stable.
- `status.md`: where it stands now, next steps, active initiatives, blockers. Rewritten whole every time the state changes; finished items leave this file.
- `voice.md` (optional): the project's own writing voice when it differs from the user's default.
- `decisions.md`: append-only log of decisions that affect only this project.

Add anything else the project needs in subfolders (`content/`, `seo/`, `assets/`). These are the project's **working files**: living plans and artifacts that get rewritten as work advances (a keyword plan in `seo/keywords.md`, a challenge calendar, published URLs). A working file is the only copy of its content.

## `skills/` inside a project: how each skill works here

Skills are generic: a skill never contains facts about one project. What makes a skill fit a project is `projects/<slug>/skills/<skill-name>.md`, created the first time that skill runs in the project. It holds **parameters and pointers only**:

- parameters: platform, how to publish, category, length, CTA, anything that differs between projects;
- pointers to the working files the skill needs (`seo/keywords.md`, `voice.md`, `content/examples/`) and what to update after each run.

It never duplicates content: keywords live once in `seo/keywords.md`, the config only points to them. Three things, three homes: the **decision** ("we target the quick-dinners cluster") is one line in `decisions.md`; the **plan** is the working file, rewritten; the **configuration** of how the skill operates here is `skills/<skill-name>.md`.

To add a project: `setup-workos` skill, add-project mode. To retire one: `archive/README.md`.

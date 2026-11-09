# Skills

A skill is a reusable procedure the agent follows when a request matches its description: one folder, one `SKILL.md` with a `name` and a `description` in the frontmatter, plus optional `templates/`, `references/` or `scripts/`. Only the description is loaded at session start; the body loads when the skill is used.

## Where skills live

`skills/` is the source. Claude Code reads only `.claude/skills/`; Codex reads only `.agents/skills/`. Whenever a skill is created or edited, the agent writes the same files to the three locations and re-reads them to confirm they match (AGENTS.md rule 8). The template ships with the three already in sync.

## Shipped skills

- `setup-workos`: onboarding, add a project, reconfigure a section.
- `wrap-up`: close a session or log a single note.
- `skill-creator`: create and improve skills (Anthropic's skill, Apache 2.0; see its `NOTICE`).

## Skill contract (every skill in this workspace)

A skill is written once and used in every project. It must never contain facts about one project. Instead, every skill starts with these steps:

1. **Resolve the project**: the one loaded in this session; if unclear, ask.
2. **Read** `projects/<slug>/README.md` and `status.md`.
3. **If it writes text**: read `projects/<slug>/voice.md`; if absent, section 2 of `rules/communication-style.md`.
4. **Read its own config** `projects/<slug>/skills/<skill-name>.md`. If it does not exist, run a short setup interview for this project, create the file (parameters and pointers only; see `projects/README.md`) and continue.
5. **Resolve tools** through `tools/README.md`, crossed with the platform named in the project's README.

While working, the skill reads and updates only the working files its config points to. When it finishes: one line in today's daily log, and `status.md` if the project's state changed.

Test for a well-written skill: if a value would differ between two projects, it is not in `SKILL.md`; it is in the project's config or working files.

## Creating a skill

Ask the agent: "crea una skill para …". It uses `skill-creator`, applies the contract above, saves the result in `skills/<name>/`, replicates it, and adds nothing to AGENTS.md (skills are discovered automatically). Always ask before creating one: a skill is worth it only when the same multi-step request repeats.

## Skills to build (backlog)

<!-- Filled by setup-workos section 10 and whenever the user says "esto lo haremos a menudo". One line each: what, for which project, how often. -->

- Resumen de cambios en el código: leer el historial de AnesReg y URPA y resumir qué cambió y cuándo; anestreg; a demanda y al cerrar sesión.
- Archivo de longevidad: recoger de Gmail los correos de las membresías de longevidad, extraer las ideas clave por tema (con remitente y fecha) en un archivo de conocimiento que crece, y avisar de novedades y contradicciones; sin proyecto aún (posible material para digital-project); semanal.

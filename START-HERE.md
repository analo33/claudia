# Empieza aquí · AI WorkOS

Esta carpeta es tu **sistema operativo IA**: un único lugar desde el que tu agente (Claude Code o Codex) conoce tus proyectos y trabaja en todos ellos. El propio agente te hará las preguntas para configurarlo.

## 1. Antes de empezar

- Necesitas **Claude Code** o **Codex** instalado (vale la app de escritorio, la extensión de VS Code o la terminal). Sirven los dos, y puedes alternar entre ellos con la misma carpeta.
- **Git es opcional.** Si lo tienes, el agente podrá guardar versiones y, si quieres, hacer copia en GitHub. Si no lo tienes, todo funciona igual.

## 2. Descomprime el zip y coloca la carpeta

1. **Mac:** haz doble clic en el zip. Aparece una carpeta `ai-workos` junto al zip.
   **Windows:** clic derecho en el zip → "Extraer todo" → "Extraer". A veces Windows crea una carpeta dentro de otra con el mismo nombre (`ai-workos/ai-workos/`): la buena es la que contiene este fichero `START-HERE.md`.
2. Mueve la carpeta `ai-workos` a un sitio permanente (Documentos, o una carpeta sincronizada en la nube). Puedes renombrarla como quieras, por ejemplo con tu nombre. Una vez la abras con el agente, no la muevas más.
3. Dentro verás carpetas como `context`, `projects` o `skills`. Hay otras que empiezan por punto (`.claude`, `.agents`, `.codex`) y que tu ordenador oculta por defecto: es normal no verlas.

## 3. Ábrela con tu agente

**Claude Code (app de escritorio):** Archivo → Abrir carpeta → elige la carpeta `ai-workos` (la que contiene `START-HERE.md`).
**Claude Code (VS Code):** Archivo → Abrir carpeta → elige `ai-workos`. Luego abre el panel de Claude Code.
**Claude Code (terminal):** abre la Terminal, escribe `cd ` seguido de un espacio, arrastra la carpeta a la ventana y pulsa Intro. Después escribe `claude` y pulsa Intro.
**Codex:** abre la carpeta `ai-workos` como proyecto. La primera vez, Codex te preguntará si **confías en esta carpeta**. Di que sí para activar los recordatorios automáticos. Si dices que no, todo sigue funcionando, solo pierdes los recordatorios.

Abre siempre la carpeta raíz, nunca una subcarpeta.

## 4. Lanza la configuración

Escribe en el chat del agente:

- En Claude Code: `/setup-workos`
- En Codex: `$setup-workos`

O simplemente: **"Empecemos a configurar mi sistema operativo IA"**.

El agente te preguntará el idioma y después irá sección por sección: quién eres, qué proyectos tienes y cuáles te dan ingresos, tu objetivo y tus prioridades, cómo quieres que te hable, tu forma de escribir, cada proyecto en detalle y las herramientas que usas. Puedes pegarle URLs de tus webs o dejar documentos en la carpeta `inbox/` para que los lea. Si no sabes algo, di "lo dejamos para después".

Al final te ofrecerá crear una copia de seguridad en GitHub. Puedes aceptar o dejarlo para otro día.

## 5. Cómo se usa cada día

- Abre la carpeta con tu agente y dile en qué proyecto quieres trabajar. Solo cargará ese proyecto.
- Cuando termines, di **"cerramos por hoy"**. El agente actualizará el estado del proyecto y apuntará lo hecho en el diario (`logs/`), enseñándote antes qué va a escribir.
- Para añadir un proyecto nuevo: **"añade el proyecto X"**.
- Para guardar algo permanentemente: **"guárdalo en el WorkOS"** (mejor que "recuérdalo", porque la memoria interna del agente no se comparte entre Claude y Codex ni entre ordenadores).

## Qué hay en cada carpeta

| Carpeta | Qué guarda |
|---|---|
| `AGENTS.md` | Las instrucciones que el agente lee siempre. `CLAUDE.md` solo le dice a Claude que lea ese fichero. |
| `context/` | Quién eres, de dónde vienen tus ingresos, tu equipo, prioridades y objetivos. |
| `rules/` | Cómo quieres que te hable el agente y tu voz al escribir. |
| `projects/` | Una carpeta por proyecto: descripción, estado actual, voz propia y decisiones. |
| `tools/` | Qué herramienta se usa para qué. |
| `decisions/` | Decisiones que afectan a varios proyectos o a tu forma de trabajar. |
| `logs/` | Diario de lo que se hace cada día. El agente no lo carga salvo que lo necesite. |
| `inbox/` | Deja aquí ficheros para que el agente los procese. |
| `archive/` | Proyectos retirados. Se pueden consultar; no se borran. |
| `skills/` | Procedimientos reutilizables del agente. |
| `agents/` | Subagentes especializados (vacío al principio). |


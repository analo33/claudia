# AnesReg

<!-- Stable description. Rewrite only when the project itself changes. -->

## What it is

Web app de una sola página para registrar procedimientos anestésicos. Con botones, casillas y desplegables (tipo de anestesia, medicación, vía aérea, monitorización, incidencias, analgesia, situación al alta) genera un texto ordenado para la gráfica de anestesia. No toma decisiones clínicas, no recomienda tratamientos, no interpreta datos y no guarda datos identificativos de pacientes, para no ser considerada producto sanitario.

Hay una segunda app, **URPA Web App**, hecha en Codex: registra la evolución del paciente en la URPA (unidad de recuperación postanestésica) y genera un resumen clínico listo para copiar. Tiene pestañas de Registro, Resumen y Cirugías (plantillas de herniorrafía y artroscopia de rodilla).

Tercera app, **AnestPlast**: base de datos de preanestesias con Supabase. Ubicación del código, URL y si guarda datos de pacientes: (pending). Posible antecedente: `~/antigravity prea plastica/preanestesia-mvp.jsx` (abril 2026).

## For whom

Ana y sus compañeros anestesiólogos de su servicio.

## How it makes money

(none) Herramienta de uso clínico interno, sin ingresos.

## Channels and URLs

| Channel | URL |
|---|---|
| App publicada | https://www.anestreg.com |
| Vercel (alias) | https://anestreg2.vercel.app |
| GitHub | https://github.com/analo33/anestreg2 |
| URPA: GitHub | https://github.com/analo33/urpa |
| URPA: app publicada | (pending) |

## Stack / platform

- Un único archivo `anesreg.html`: bundle React ya minificado (no hay código fuente sin minificar). Los cambios se hacen con ediciones exactas sobre el bundle.
- Código local: `/Users/ana/CLAUDE projects 2026` (en Claude Code aparece como el proyecto "anestreg2"). El código NO vive en este WorkOS: esta carpeta solo es la ficha.
- GitHub `analo33/anestreg2`, rama `main`. Vercel (proyecto `anestreg2`) despliega automáticamente con cada push a `main`.
- Dominio anestreg.com comprado en Namecheap.
- App URPA: código local en `/Users/ana/Documents/URPA APP HIL` (se trabaja con Codex). Estructura `index.html` + `src/app.js` + `src/styles.css`, con tests en `tests/`. GitHub `analo33/urpa`; Vercel proyecto `urpa`. Las mismas reglas de seguridad aplican.
- Reglas de seguridad antes de cambiar nada:
  1. Se trabaja desde varios sitios (este Mac y sesiones en la nube), así que la copia local puede ir por detrás. Antes de editar o publicar: `git fetch origin` y confirmar que la copia local está al día con `main`.
  2. Un error de sintaxis rompe la app entera en producción: comprobar el script y probar el flujo en el navegador antes de hacer commit.
  3. Publicar (push a `main`) es una acción irreversible de cara a los compañeros: proponer antes de hacerlo.

## Sources

- Archivos del repositorio en `/Users/ana/CLAUDE projects 2026` (README.md, CLAUDE.md), 2026-11-04.
- Proyecto `anestreg2` en Vercel, 2026-11-04.
- Mensajes de Ana en comunidad.metadigitales.com pegados en el chat, 2026-11-04.

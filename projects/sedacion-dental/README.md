# Sedación consciente en clínicas dentales

<!-- Stable description. Rewrite only when the project itself changes. -->

## What it is

Línea de trabajo de sedación consciente en clínicas dentales de la Comunitat Valenciana. Incluye una app de preanestesia para pacientes que van a ser sedados en la clínica, que se irá añadiendo y mejorando, y la preparación de cada clínica: medicación, material y requisitos de la normativa vigente (Instrucción 4/2026 de la Conselleria de Sanidad).

Archivos de trabajo:
- `normativa.md`: lo que exige la Instrucción 4/2026, resumido y aplicado a la app.
- `medicacion.md`: fármacos necesarios, por grupos, comparados con la norma.
- `fuentes/`: PDF oficial de la Instrucción 4/2026.

## For whom

Clínicas dentales que ofrecen sedación y sus pacientes; el equipo de anestesia de Ana.

## How it makes money

(pending)

## Channels and URLs

| Channel | URL |
|---|---|
| App de preanestesia: código local | `/Users/ana/Documents/SEDACION DENTAL APP` |
| App de preanestesia: GitHub | (pending) `analo33/sedacion-dental`, privado |
| App de preanestesia: publicada | (pending) `sedacion-dental.vercel.app` (proyecto Vercel `sedacion-dental`) |

## Stack / platform

- App de preanestesia: página estática HTML + JS, sin compilación ni dependencias (como URPA). Parte de la preanestesia de sedación dental de marzo de 2026 (`preanestesia-dental (14).html`). La tabla 8.3.5 vive en `src/tabla-835.js` con pruebas en `tests/`.
- El código NO vive en CLAUDIA: esta carpeta es la ficha. Vista previa `sedacion-dental` en `.claude/launch.json` (puerto 8744). Para probarla: servidor local en el puerto 8744 y abrir http://localhost:8744 en el navegador de Ana; abierta como archivo en el panel de Claude no funciona.
- Mismo patrón que AnesReg: GitHub + Vercel con despliegue automático al hacer push a `main`. Publicar se propone antes.
- Regla: sin datos identificativos de pacientes en archivos, logs ni código; la app ayuda a documentar, no decide.

## Sources

- Instrucción 4/2026/GAD de la Subsecretaría de Sanidad, https://www.tramita.gva.es/csv-front/index.faces?cadena=DMJG4YUY:4PJDAJ6L:P3P3F5NA, 2026-11-15.
- «MEDICACIÓN PARA SEDACIÓN.doc», documento de Ana (2018), 2026-11-15.

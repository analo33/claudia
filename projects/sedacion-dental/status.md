---
stage: build
updated: 2026-11-15
owner: Ana
---

# Status

<!-- Rewrite this whole file when the state changes. Finished items leave this file: they go to decisions.md or the daily log. -->

## Now

- Normativa: `normativa.md` resume la Instrucción 4/2026.
- Fármacos: listado cerrado en `medicacion.md`; PDF para la clínica en `outputs/sedacion-dental/medicacion-sedacion-clinica-dental.pdf`, sin entregar.
- **App de preanestesia: prototipo local completo, sin publicar.** Código en `/Users/ana/Documents/SEDACION DENTAL APP` (git local, 12 commits; sin repositorio en GitHub ni proyecto en Vercel).
  - Qué hace: formulario de preanestesia (versión de marzo de 2026 más los datos de AnestPlast, sin cirugía estética), ASA confirmado por el anestesista, tabla 8.3.5 (quién seda y dónde), STOP-Bang, APFEL automático, buscador de medicación con pautas adaptadas a sedación, conclusión elegida por el anestesista (Apto / No apto / Pendiente), resumen para copiar y PDF con aspecto de historia clínica (iniciales y nº de HC opcionales).
  - Privacidad: no guarda nada y la página no puede enviar datos al exterior (Content-Security-Policy); lo único externo son las fuentes de Google.
  - Pruebas: `npm test` pasa. Probada en Chrome en escritorio y en ancho de móvil.
  - Ejemplo del PDF (caso inventado): `outputs/sedacion-dental/ejemplo-informe-final.pdf`.
  - Cómo probarla: en la carpeta de la app, `npm run dev` y abrir http://localhost:8744 en el navegador de Ana. Abierta como archivo en el panel del navegador de Claude no calcula nada.

## Next steps

- [ ] Entregar el PDF del listado de fármacos a la clínica.
- [ ] Ana sigue probando la app en su navegador y dice qué cambiar. Comprobar que «Descargar PDF» abre la ventana nueva (no se pudo verificar en las pruebas).
- [ ] Ana revisa las pautas del buscador de medicación: las adaptadas a sedación (IECA/ARA-II, cardiológicos, AAS, anticoagulantes, antiagregantes, biológicos) y las que siguen la guía de cirugía (antidiabéticos, GLP-1, diuréticos, AINE…).
- [ ] Antes de publicar, revisar textos heredados: la lista de anestesistas lleva nombres y números de colegiado de compañeros, y la conclusión «Apto/a» cita la SEDAR.
- [ ] Decidir si las fuentes se guardan dentro de la app para no depender de Google Fonts (hay que descargarlas).
- [ ] Cuando Ana lo apruebe: crear el repositorio privado `analo33/sedacion-dental` y el proyecto Vercel `sedacion-dental` (publicar se propone antes).
- [ ] Versión 2 (más adelante): libro de registro de sedación, si Ana lo quiere en esta app.

## Active initiatives

- App de preanestesia v1: prototipo aprobado por Ana y publicado en Vercel. Estado: prototipo local completo; faltan la revisión clínica de Ana y publicar.

## Blockers

(none)

## Metrics that matter (optional)

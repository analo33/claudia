# Decisions · AnesReg

Append-only. Decisions that affect only this project. Cross-project decisions go to `decisions/log.md`.

Format: `[YYYY-MM-DD] DECISION: ... | WHY: ... | CONTEXT: ...`

---
[2026-09-20] DECISION: Antes de publicar AnesReg, comprobar que la copia local contiene el commit del último despliegue de Vercel. | WHY: se publicó desde una copia local dos meses atrasada y se perdió en producción el cambio «intradural → intratecal y coma decimal»; se reparó con rollback y reaplicando el cambio. | CONTEXT: se trabaja desde el Mac y desde sesiones en la nube.
[2026-09-20] DECISION: En AnesReg se dice «intratecal» (no «intradural») y los decimales llevan coma. | WHY: terminología y formato del servicio. | CONTEXT: commit f4ed64c.
[2026-11-11] DECISION: La ficha de AnesReg en CLAUDIA es la referencia; el repositorio del código solo lleva una nota que apunta aquí. | WHY: que Claude, Codex y las sesiones en la nube compartan las mismas reglas y el mismo diario. | CONTEXT: adaptación de AnesReg al WorkOS.

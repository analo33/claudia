#!/bin/sh
# Reads the hook payload from stdin. If the user's message contains a closure phrase,
# injects a reminder to run the wrap-up skill. Prints nothing otherwise. No jq, no Python.
# Silent while setup is pending, so answers like "lo dejamos para despues" do not trigger it.
if grep -qx '<!-- setup: pending -->' "${CLAUDE_PROJECT_DIR:-.}/AGENTS.md" 2>/dev/null; then cat >/dev/null; exit 0; fi
if grep -qiE 'cerramos|terminamos|hasta ma.ana|lo dejamos (por hoy|aqu)|apunta esto|ap.ntalo|wrap.?up|that.s it for today|done for today' ; then
  printf '%s' '{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"Closure signal detected: run the wrap-up skill (full close, or note-only if the user is just dictating one line) before answering."}}'
fi
exit 0

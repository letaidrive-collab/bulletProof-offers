#!/usr/bin/env bash
# Blocks banned client-facing words in copy/ (LANGUAGE.md itself is excluded).
# Usage: scripts/lint-language.sh [dir]   exit 1 if anything is found.
set -euo pipefail
DIR="${1:-$(dirname "$0")/../copy}"
PATTERN='\bA\.?I\b|artificial intelligence|chat ?bot|\bbot\b|widget|votel|leadsnap|gohighlevel|\bGHL\b|\bminutes?\b|\busage\b|\bcredits?\b|\bestimate\b|guarantee[ds]? (rank|lead|revenue)'
if grep -rniE --include='*.md' --include='*.html' --include='*.txt' --exclude='LANGUAGE.md' "$PATTERN" "$DIR"; then
  echo "FAIL: banned client-facing language found (see copy/LANGUAGE.md)" >&2
  exit 1
fi
echo "PASS: copy is clean"

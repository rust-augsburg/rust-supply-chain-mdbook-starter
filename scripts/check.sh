#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

echo "Checking SUMMARY.md references..."

python3 - <<'PY'
from pathlib import Path
import re
import sys

root = Path(".")
summary = root / "src" / "SUMMARY.md"
text = summary.read_text(encoding="utf-8")
links = re.findall(r"\]\(([^)]+\.md)\)", text)

missing = []
for link in links:
    path = summary.parent / link
    if not path.exists():
        missing.append(str(path))

if missing:
    print("Missing chapter files:")
    for path in missing:
        print(f"  - {path}")
    sys.exit(1)

print(f"Found {len(links)} chapter references; all files exist.")
PY

echo "Checking required chapter sections..."

python3 - <<'PY'
from pathlib import Path
import sys

excluded = {
    Path("src/SUMMARY.md"),
    Path("src/appendices/checklist.md"),
    Path("src/appendices/demo-runbook.md"),
    Path("src/appendices/resources.md"),
}

errors = []
for path in sorted(Path("src").rglob("*.md")):
    if path in excluded:
        continue
    text = path.read_text(encoding="utf-8")
    if not text.startswith("# "):
        errors.append(f"{path}: missing H1 title")
    if "## Speaker Notes" not in text:
        errors.append(f"{path}: missing Speaker Notes")

if errors:
    print("\n".join(errors))
    sys.exit(1)

print("Required chapter structure is present.")
PY

echo "All structural checks passed."

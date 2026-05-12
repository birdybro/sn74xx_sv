#!/usr/bin/env python3
"""
mark_chip.py — update one chip's status and notes in build/chips.json,
then regenerate tasks.md.

Usage:
    python3 scripts/mark_chip.py <part_number> <status> [--note "..."] [--note "..."]
    python3 scripts/mark_chip.py 74x00 complete --note "Exhaustive 256-vector testbench passes; Yosys synth OK"

Status values match build/chips.json:
    not_started | in_progress | complete | blocked | digital_only_approximation
"""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
CHIPS_JSON = REPO_ROOT / "build" / "chips.json"
UPDATE_TASKS = REPO_ROOT / "scripts" / "update_tasks.py"

VALID_STATUS = {
    "not_started",
    "in_progress",
    "complete",
    "blocked",
    "digital_only_approximation",
}


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("part_number", help="e.g. 74x00")
    ap.add_argument("status", choices=sorted(VALID_STATUS))
    ap.add_argument(
        "--note",
        action="append",
        default=[],
        help="Implementation note. May be passed multiple times.",
    )
    ap.add_argument(
        "--replace-notes",
        action="store_true",
        help="Replace existing notes instead of appending.",
    )
    ap.add_argument(
        "--skip-regen",
        action="store_true",
        help="Skip the tasks.md regeneration.",
    )
    args = ap.parse_args()

    chips = json.loads(CHIPS_JSON.read_text(encoding="utf-8"))
    target_part = args.part_number
    found = False
    for chip in chips:
        if chip["part_number"] == target_part:
            chip["implementation_status"] = args.status
            if args.replace_notes:
                chip["implementation_notes"] = list(args.note)
            else:
                existing = list(chip.get("implementation_notes", []))
                for note in args.note:
                    if note and note not in existing:
                        existing.append(note)
                chip["implementation_notes"] = existing
            found = True
            break

    if not found:
        print(f"ERROR: part number {target_part!r} not found in chips.json", file=sys.stderr)
        return 1

    CHIPS_JSON.write_text(
        json.dumps(chips, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    print(f"Updated {target_part} -> {args.status}")

    if not args.skip_regen:
        subprocess.check_call([sys.executable, str(UPDATE_TASKS)])
    return 0


if __name__ == "__main__":
    sys.exit(main())

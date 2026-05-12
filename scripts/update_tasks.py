#!/usr/bin/env python3
"""
update_tasks.py

Regenerate tasks.md from build/chips.json. Deterministic — running twice
produces no diff. Do not edit tasks.md by hand; update build/chips.json and
re-run this script.
"""

from __future__ import annotations

import json
import sys
from pathlib import Path
from typing import Any

REPO_ROOT = Path(__file__).resolve().parent.parent
CHIPS_JSON = REPO_ROOT / "build" / "chips.json"
TASKS_MD = REPO_ROOT / "tasks.md"

# Status mapping: build/chips.json status → checklist marker.
STATUS_MARKER = {
    "not_started": "[ ]",
    "in_progress": "[~]",
    "complete": "[x]",
    "blocked": "[!]",
    "digital_only_approximation": "[!]",
}

# Order in which source sections appear in tasks.md. Anything not listed is
# appended after, in alphabetical order.
SECTION_ORDER = [
    "Larger footprints",
    "Widebus devices",
    "Smaller footprints",
    "Voltage translation",
]

HEADER = """# 7400-Series SystemVerilog Reimplementation Tasks

Source: https://en.wikipedia.org/wiki/List_of_7400-series_integrated_circuits

This file is generated from build/chips.json.
Do not manually edit chip task entries.
Update build/chips.json, then run scripts/update_tasks.py.

Status legend:
- [ ] Not started
- [~] In progress
- [x] Complete
- [!] Blocked or digital-only approximation

## Task rules

For every chip:
1. Update build/chips.json.
2. Regenerate tasks.md with scripts/update_tasks.py.
3. Create synthesizable RTL in rtl/chips/<module_name>/<module_name>.sv.
4. Create a testbench in tb/chips/<module_name>/tb_<module_name>.sv.
5. Add a chip README in rtl/chips/<module_name>/README.md.
6. Run simulation.
7. Run synthesis check with Yosys when possible.
8. Update build/chips.json status and notes.
9. Regenerate tasks.md.
10. git add .
11. git commit -m "Add <part_number> <short description>"
12. git push
"""


def load_chips(path: Path) -> list[dict[str, Any]]:
    if not path.exists():
        print(f"ERROR: {path} does not exist. Run scripts/extract_wikipedia_7400.py first.", file=sys.stderr)
        sys.exit(1)
    return json.loads(path.read_text(encoding="utf-8"))


def section_order_key(section: str) -> tuple[int, str]:
    if section in SECTION_ORDER:
        return (SECTION_ORDER.index(section), section)
    return (len(SECTION_ORDER), section)


def render_chip(chip: dict[str, Any]) -> str:
    status = chip.get("implementation_status", "not_started")
    marker = STATUS_MARKER.get(status, "[ ]")
    part = chip.get("part_number", "")
    desc = chip.get("description", "").replace("\n", " ").strip()
    module = chip.get("normalized_module_name", "")
    aliases = chip.get("aliases", []) or []
    aliases_str = ", ".join(aliases) if aliases else "none"
    notes = chip.get("implementation_notes", []) or []

    lines = []
    lines.append(f"### {part} - {desc}")
    lines.append(f"- Status: {marker}")
    lines.append(f"- Module: {module}")
    lines.append(f"- Aliases: {aliases_str}")
    lines.append(f"- Source section: {chip.get('source_section', '')}")
    lines.append(f"- Units: {chip.get('units', '')}")
    lines.append(f"- Input features: {chip.get('input_features', '')}")
    lines.append(f"- Output features: {chip.get('output_features', '')}")
    lines.append(f"- Pins: {chip.get('pins', '')}")
    ds = chip.get("datasheet", "") or chip.get("datasheet_url", "")
    lines.append(f"- Datasheet/source: {ds}")
    lines.append(f"- RTL: {chip.get('rtl_path', '')}")
    lines.append(f"- Testbench: {chip.get('testbench_path', '')}")
    lines.append(f"- README: {chip.get('readme_path', '')}")
    if notes:
        lines.append("- Notes:")
        for n in notes:
            lines.append(f"  - {n}")
    else:
        lines.append("- Notes:")
        lines.append("  - (none)")
    return "\n".join(lines)


def render(chips: list[dict[str, Any]]) -> str:
    sorted_chips = sorted(
        chips,
        key=lambda c: (
            section_order_key(c.get("source_section", "")),
            c.get("source_index", 0),
            c.get("part_number", ""),
        ),
    )

    total = len(sorted_chips)
    counts: dict[str, int] = {}
    for c in sorted_chips:
        counts[c.get("implementation_status", "not_started")] = (
            counts.get(c.get("implementation_status", "not_started"), 0) + 1
        )

    summary_lines = [f"## Progress ({total} chips)"]
    for status in ("complete", "in_progress", "blocked", "digital_only_approximation", "not_started"):
        if status in counts:
            summary_lines.append(f"- {status}: {counts[status]}")
    summary = "\n".join(summary_lines)

    body = ["## Chips", ""]
    current_section: str | None = None
    for chip in sorted_chips:
        section = chip.get("source_section", "")
        if section != current_section:
            body.append(f"")
            body.append(f"## Section: {section}")
            body.append(f"")
            current_section = section
        body.append(render_chip(chip))
        body.append("")

    return HEADER + "\n" + summary + "\n\n" + "\n".join(body).rstrip() + "\n"


def main() -> int:
    chips = load_chips(CHIPS_JSON)
    text = render(chips)
    TASKS_MD.write_text(text, encoding="utf-8")
    print(f"Wrote {TASKS_MD} ({len(chips)} chips).")
    return 0


if __name__ == "__main__":
    sys.exit(main())

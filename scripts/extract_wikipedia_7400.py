#!/usr/bin/env python3
"""
extract_wikipedia_7400.py

Fetch the Wikipedia "List of 7400-series integrated circuits" page, parse the
chip tables, and merge the result into build/chips.json — the canonical task
database for this repository.

The script is intentionally merge-aware: a chip's implementation_status,
implementation_notes, rtl_path, testbench_path, and readme_path are preserved
across runs. New chips arrive as 'not_started'. Chips that disappear from
Wikipedia are kept (so we don't lose work) but flagged in implementation_notes.

Sections we extract:
  - "Larger footprints"   (14+ pin parts)
  - "Widebus devices"
  - "Smaller footprints"  (1G/2G/3G single-gate)
  - "Voltage translation"

The "Logic gates" summary tables at the top of the page only repeat part
numbers that already appear in the main tables, so we skip them.

Run:
    python3 scripts/extract_wikipedia_7400.py [--no-fetch]

Use --no-fetch to re-parse the cached wikitext at build/.cache/wikitext.txt
without hitting the network.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
import urllib.request
from pathlib import Path
from typing import Any

WIKIPEDIA_URL = "https://en.wikipedia.org/wiki/List_of_7400-series_integrated_circuits"
WIKITEXT_URL = WIKIPEDIA_URL + "?action=raw"

REPO_ROOT = Path(__file__).resolve().parent.parent
BUILD_DIR = REPO_ROOT / "build"
CACHE_DIR = BUILD_DIR / ".cache"
CACHE_FILE = CACHE_DIR / "wikitext.txt"
CHIPS_JSON = BUILD_DIR / "chips.json"

USER_AGENT = "sn74xx_sv/0.1 (educational; https://github.com/birdybro/sn74xx_sv)"

# Section H2 headings whose tables describe individual parts.
RELEVANT_SECTIONS = (
    "Larger footprints",
    "Widebus devices",
    "Smaller footprints",
    # Voltage translation is a subsection (===) of "Smaller footprints" on
    # the page. Section walking handles subsections naturally.
)

# Part-number recognition. We are deliberately liberal here: anything that
# starts with "74", contains at least one digit, and is otherwise alphanumeric
# is treated as a candidate. Cells that don't match the pattern are skipped.
PART_RE = re.compile(r"^74[A-Za-z0-9]{1,12}$")


# ---------------------------------------------------------------------------
# Fetching and caching
# ---------------------------------------------------------------------------

def fetch_wikitext(force: bool = False) -> str:
    """Return the raw wikitext for the page, caching it at build/.cache/."""
    CACHE_DIR.mkdir(parents=True, exist_ok=True)
    if CACHE_FILE.exists() and not force:
        return CACHE_FILE.read_text(encoding="utf-8")
    req = urllib.request.Request(WIKITEXT_URL, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(req, timeout=60) as resp:
        data = resp.read().decode("utf-8")
    CACHE_FILE.write_text(data, encoding="utf-8")
    return data


# ---------------------------------------------------------------------------
# Wikitext cleaning
# ---------------------------------------------------------------------------

def strip_refs(s: str) -> str:
    s = re.sub(r"<ref[^>]*/>", "", s)
    s = re.sub(r"<ref[^>]*>.*?</ref>", "", s, flags=re.DOTALL)
    return s


def strip_comments(s: str) -> str:
    return re.sub(r"<!--.*?-->", "", s, flags=re.DOTALL)


def strip_templates(s: str) -> str:
    s = re.sub(r"\{\{snd\}\}", " - ", s)
    s = re.sub(r"\{\{spaces?\}\}", " ", s)
    s = re.sub(r"\{\{nbsp\}\}", " ", s)
    s = re.sub(r"\{\{nowrap\|([^{}]+)\}\}", r"\1", s)
    s = re.sub(r"\{\{anchor\|[^{}]+\}\}", "", s)
    s = re.sub(r"\{\{TOC tab\|([^|{}]+)(?:\|[^{}]+)*\}\}", r"\1", s)
    # Strip remaining simple templates iteratively (no nesting we care about).
    prev = None
    while prev != s:
        prev = s
        s = re.sub(r"\{\{[^{}]*\}\}", "", s)
    return s


def strip_wikilinks(s: str) -> str:
    s = re.sub(r"\[\[([^\]|]+)\|([^\]]+)\]\]", r"\2", s)
    s = re.sub(r"\[\[([^\]]+)\]\]", r"\1", s)
    return s


def strip_external_links(s: str, keep_text: bool = True) -> str:
    if keep_text:
        s = re.sub(r"\[https?://\S+\s+([^\]]+?)\]", r"\1", s)
        s = re.sub(r"\[https?://\S+\]", "", s)
    else:
        s = re.sub(r"\[https?://\S+\s+[^\]]+\]", "", s)
        s = re.sub(r"\[https?://\S+\]", "", s)
    return s


def strip_html_entities(s: str) -> str:
    return (
        s.replace("&nbsp;", " ")
        .replace("&ndash;", "-")
        .replace("&mdash;", "-")
        .replace("&amp;", "&")
        .replace("&lt;", "<")
        .replace("&gt;", ">")
    )


def clean_text(s: str) -> str:
    s = strip_comments(s)
    s = strip_refs(s)
    s = strip_templates(s)
    s = strip_wikilinks(s)
    s = strip_external_links(s, keep_text=True)
    s = re.sub(r"<br\s*/?>", "\n", s, flags=re.IGNORECASE)
    s = re.sub(r"<sup>.*?</sup>", "", s, flags=re.DOTALL | re.IGNORECASE)
    s = re.sub(r"<sub>.*?</sub>", "", s, flags=re.DOTALL | re.IGNORECASE)
    s = strip_html_entities(s)
    s = re.sub(r"[ \t]+", " ", s)
    s = re.sub(r"\n\s+", "\n", s)
    return s.strip()


def first_url(s: str) -> str:
    m = re.search(r"\[(https?://\S+?)(\s+[^\]]*)?\]", s)
    if m:
        return m.group(1)
    m = re.search(r"https?://\S+", s)
    if m:
        return m.group(0).rstrip("]),.;")
    return ""


# ---------------------------------------------------------------------------
# Section walking
# ---------------------------------------------------------------------------

def iter_sections(wikitext: str):
    """Yield (heading, body_text) for every level-2 (==) and level-3 (===)
    section in the page. body_text is everything from after the heading up to
    the next == or === heading."""
    # Find all section heading lines.
    lines = wikitext.split("\n")
    indices: list[tuple[int, str]] = []
    for i, line in enumerate(lines):
        m = re.match(r"^={2,3}\s*(.+?)\s*={2,3}\s*$", line)
        if m:
            indices.append((i, m.group(1).strip()))
    # Walk in order, yielding from each heading to the next.
    for k, (i, heading) in enumerate(indices):
        end = indices[k + 1][0] if k + 1 < len(indices) else len(lines)
        body = "\n".join(lines[i + 1 : end])
        yield heading, body


def relevant_section_bodies(wikitext: str) -> list[tuple[str, str]]:
    """Return [(section_heading, body)] for sections we want to extract from.
    A subsection (===) is included if its parent (==) is relevant OR if its
    own heading is one we care about."""
    out: list[tuple[str, str]] = []
    in_relevant_h2 = False
    current_h2: str = ""
    lines = wikitext.split("\n")
    # Build a flat list with explicit level.
    sections: list[tuple[int, str, str]] = []  # (level, heading, body)
    headings_idx: list[tuple[int, int, str]] = []  # (line_idx, level, heading)
    for i, line in enumerate(lines):
        m = re.match(r"^(={2,3})\s*(.+?)\s*\1\s*$", line)
        if m:
            level = len(m.group(1))
            heading = m.group(2).strip()
            headings_idx.append((i, level, heading))
    for k, (idx, level, heading) in enumerate(headings_idx):
        end = headings_idx[k + 1][0] if k + 1 < len(headings_idx) else len(lines)
        body = "\n".join(lines[idx + 1 : end])
        if level == 2:
            current_h2 = heading
            in_relevant_h2 = heading in RELEVANT_SECTIONS
        if in_relevant_h2 or heading in RELEVANT_SECTIONS or heading == "Voltage translation":
            out.append((heading, body))
    return out


# ---------------------------------------------------------------------------
# Wikitable parsing
# ---------------------------------------------------------------------------

def iter_wikitables(body: str):
    """Yield raw table strings (with the `{|...|}` wrappers) for every
    wikitable in a section body. Stays at top level: nested tables would
    have to be balanced — none are nested in this page."""
    out: list[str] = []
    lines = body.split("\n")
    depth = 0
    start = -1
    for i, line in enumerate(lines):
        stripped = line.lstrip()
        if stripped.startswith("{|"):
            if depth == 0:
                start = i
            depth += 1
        elif stripped.startswith("|}"):
            if depth > 0:
                depth -= 1
                if depth == 0 and start >= 0:
                    out.append("\n".join(lines[start : i + 1]))
                    start = -1
    return out


def strip_cell_attrs(cell: str) -> str:
    """If a cell looks like `attr="..." | value`, return `value`. Otherwise
    return the cell unchanged."""
    s = cell.lstrip()
    in_quote: str | None = None
    for i, c in enumerate(s):
        if in_quote:
            if c == in_quote:
                in_quote = None
        elif c in ("'", '"'):
            in_quote = c
        elif c == "|":
            before = s[:i]
            if "=" in before:
                return s[i + 1 :].lstrip()
            return s
        elif c == "\n":
            return s
    return s


def parse_wikitable(table_text: str) -> list[list[str]]:
    """Return a list of rows; each row is a list of raw cell strings (with
    wikitext intact). Header rows (lines starting with `!`) are returned
    just like data rows."""
    lines = table_text.split("\n")
    # Drop the opening `{|...` line.
    if lines and lines[0].lstrip().startswith("{|"):
        lines = lines[1:]
    # Drop the closing `|}` line.
    if lines and lines[-1].strip() == "|}":
        lines = lines[:-1]

    rows: list[list[str]] = []
    current_row: list[str] = []
    current_cell: str | None = None

    def flush_cell() -> None:
        nonlocal current_cell
        if current_cell is not None:
            current_row.append(strip_cell_attrs(current_cell.strip()))
            current_cell = None

    def flush_row() -> None:
        nonlocal current_row
        flush_cell()
        if current_row:
            rows.append(current_row)
        current_row = []

    for line in lines:
        stripped = line.lstrip()
        if stripped.startswith("|-"):
            flush_row()
            continue
        if stripped.startswith("|+"):
            flush_cell()  # caption; drop the previous cell, ignore caption
            continue
        if stripped.startswith("|}"):
            flush_row()
            continue
        if stripped.startswith("|") or stripped.startswith("!"):
            flush_cell()
            sep_char = stripped[0]
            rest = stripped[1:]
            if sep_char == "|":
                parts = rest.split("||")
            else:
                parts = re.split(r"!!|\|\|", rest)
            current_cell = parts[0]
            for p in parts[1:]:
                flush_cell()
                current_cell = p
        else:
            if current_cell is not None:
                current_cell += "\n" + line

    flush_row()
    return rows


# ---------------------------------------------------------------------------
# Chip-row interpretation
# ---------------------------------------------------------------------------

# Map of normalized header text → semantic column.
HEADER_MAP = {
    "part number": "part_number",
    "units": "units",
    "description": "description",
    "input": "input_features",
    "inputs": "input_features",
    "output": "output_features",
    "outputs": "output_features",
    "pins": "pins",
    "datasheet": "datasheet",
}


def normalize_header_cell(cell: str) -> str:
    clean = clean_text(cell).lower().strip()
    # Headers in this page often have stray punctuation/comments — collapse.
    clean = re.sub(r"[^a-z ]+", "", clean)
    clean = re.sub(r"\s+", " ", clean).strip()
    return clean


def detect_header(rows: list[list[str]]) -> tuple[int, list[str]] | None:
    """Find the first row that looks like a header for the main chip table.
    Returns (row_index, column_semantics) or None."""
    for ri, row in enumerate(rows):
        # Header rows usually have a "Part number" column in the first
        # 1-3 cells. Try to map every cell.
        semantics: list[str] = []
        matched_part = False
        for c in row:
            key = normalize_header_cell(c)
            sem = HEADER_MAP.get(key, "")
            if sem == "part_number":
                matched_part = True
            semantics.append(sem)
        if matched_part and "description" in semantics:
            return ri, semantics
    return None


def looks_like_part_number(s: str) -> bool:
    s = s.strip()
    if not PART_RE.match(s):
        return False
    if not re.search(r"\d", s[2:]):
        return False
    # Reject leading "74" with only letters following (e.g., "74AB").
    return True


def normalize_module_name(part: str) -> str:
    return "ttl_" + part.lower()


def split_aliases_in_cell(cell_text: str) -> list[str]:
    """If a part-number cell contains multiple part numbers (e.g.,
    '74x241<br/>74x244' which appears in the Logic-gates summary, or
    '74x00 / 74H00' in a row that lumps aliases), return all of them."""
    cleaned = clean_text(cell_text)
    candidates = re.split(r"[,\s/]+|\n+", cleaned)
    return [c.strip() for c in candidates if c.strip()]


# ---------------------------------------------------------------------------
# Main extraction
# ---------------------------------------------------------------------------

def extract_chips(wikitext: str) -> list[dict[str, Any]]:
    """Walk the relevant sections, parse each main wikitable, return chip
    records in source-page order."""
    chips: list[dict[str, Any]] = []
    seen: dict[str, dict[str, Any]] = {}
    source_index = 0

    for heading, body in relevant_section_bodies(wikitext):
        for table_text in iter_wikitables(body):
            rows = parse_wikitable(table_text)
            if not rows:
                continue
            header = detect_header(rows)
            if header is None:
                # Not a main chip table (e.g., the logic-gates summary). Skip.
                continue
            header_idx, semantics = header
            data_rows = rows[header_idx + 1 :]
            for row in data_rows:
                if not row:
                    continue
                # The Larger-footprints table puts a header row at the bottom
                # again — skip any row whose first cell normalizes to a known
                # header label.
                first_normal = normalize_header_cell(row[0])
                if first_normal in HEADER_MAP:
                    continue
                # Build a dict keyed by semantics where present.
                record: dict[str, str] = {}
                for ci, cell in enumerate(row):
                    if ci >= len(semantics):
                        continue
                    sem = semantics[ci]
                    if not sem:
                        continue
                    if sem == "datasheet":
                        record[sem] = clean_text(cell)
                        record["datasheet_url"] = first_url(cell)
                    else:
                        record[sem] = clean_text(cell)
                part = record.get("part_number", "").strip()
                if not part:
                    continue
                # Some cells include multiple parts separated by '<br>'. The
                # main tables generally don't, but split defensively.
                aliases: list[str] = []
                parts_list = split_aliases_in_cell(part)
                primary = ""
                for cand in parts_list:
                    if looks_like_part_number(cand):
                        if not primary:
                            primary = cand
                        else:
                            aliases.append(cand)
                if not primary:
                    continue
                if primary in seen:
                    # Already extracted (e.g., from an earlier table). Merge
                    # aliases & metadata.
                    prior = seen[primary]
                    for k, v in record.items():
                        if v and not prior.get(k):
                            prior[k] = v
                    for a in aliases:
                        if a not in prior.get("aliases", []):
                            prior.setdefault("aliases", []).append(a)
                    continue
                chip = {
                    "part_number": primary,
                    "aliases": aliases,
                    "normalized_module_name": normalize_module_name(primary),
                    "description": record.get("description", ""),
                    "source_section": heading,
                    "source_index": source_index,
                    "units": record.get("units", ""),
                    "input_features": record.get("input_features", ""),
                    "output_features": record.get("output_features", ""),
                    "pins": record.get("pins", ""),
                    "datasheet": record.get("datasheet", ""),
                    "datasheet_url": record.get("datasheet_url", ""),
                }
                source_index += 1
                seen[primary] = chip
                chips.append(chip)
    return chips


# ---------------------------------------------------------------------------
# Merge with existing chips.json
# ---------------------------------------------------------------------------

PRESERVED_KEYS = (
    "implementation_status",
    "implementation_notes",
    "rtl_path",
    "testbench_path",
    "readme_path",
)


def fresh_chip_record(chip: dict[str, Any]) -> dict[str, Any]:
    module = chip["normalized_module_name"]
    return {
        "part_number": chip["part_number"],
        "aliases": chip.get("aliases", []),
        "normalized_module_name": module,
        "description": chip.get("description", ""),
        "source_section": chip.get("source_section", ""),
        "source_index": chip.get("source_index", 0),
        "units": chip.get("units", ""),
        "input_features": chip.get("input_features", ""),
        "output_features": chip.get("output_features", ""),
        "pins": chip.get("pins", ""),
        "datasheet": chip.get("datasheet", ""),
        "datasheet_url": chip.get("datasheet_url", ""),
        "implementation_status": "not_started",
        "implementation_notes": [],
        "rtl_path": f"rtl/chips/{module}/{module}.sv",
        "testbench_path": f"tb/chips/{module}/tb_{module}.sv",
        "readme_path": f"rtl/chips/{module}/README.md",
    }


def merge_chips(
    new_chips: list[dict[str, Any]],
    existing: list[dict[str, Any]],
) -> list[dict[str, Any]]:
    """Merge new_chips into existing, preserving implementation status fields.
    Order is taken from new_chips (Wikipedia source order). Chips that have
    been removed from Wikipedia are appended at the end with a flag in
    implementation_notes."""
    by_part_existing = {c["part_number"]: c for c in existing}
    merged: list[dict[str, Any]] = []
    seen_parts: set[str] = set()

    for chip in new_chips:
        part = chip["part_number"]
        seen_parts.add(part)
        fresh = fresh_chip_record(chip)
        prior = by_part_existing.get(part)
        if prior:
            # Keep prior implementation fields; overwrite metadata from the
            # fresh fetch so descriptions etc. stay current with Wikipedia.
            for k in PRESERVED_KEYS:
                if k in prior:
                    fresh[k] = prior[k]
            # If prior had additional aliases not in the new extraction
            # (e.g., we hand-added one), keep them too.
            prior_aliases = set(prior.get("aliases", []))
            new_aliases = set(fresh.get("aliases", []))
            combined = list(fresh.get("aliases", []))
            for a in prior_aliases - new_aliases:
                combined.append(a)
            fresh["aliases"] = combined
        merged.append(fresh)

    # Anything in existing that disappeared from Wikipedia: keep but flag.
    for prior in existing:
        if prior["part_number"] in seen_parts:
            continue
        kept = dict(prior)
        note = "Removed from Wikipedia source — entry retained from prior extraction."
        notes = list(kept.get("implementation_notes", []))
        if note not in notes:
            notes.append(note)
        kept["implementation_notes"] = notes
        merged.append(kept)

    return merged


def load_existing(path: Path) -> list[dict[str, Any]]:
    if not path.exists():
        return []
    return json.loads(path.read_text(encoding="utf-8"))


def save_chips(path: Path, chips: list[dict[str, Any]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(chips, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument(
        "--no-fetch",
        action="store_true",
        help="Re-parse the cached wikitext without hitting the network.",
    )
    args = ap.parse_args(argv)

    wikitext = fetch_wikitext(force=not (args.no_fetch))
    if args.no_fetch and not CACHE_FILE.exists():
        print(f"ERROR: --no-fetch but {CACHE_FILE} is missing", file=sys.stderr)
        return 1

    chips_new = extract_chips(wikitext)
    chips_existing = load_existing(CHIPS_JSON)
    merged = merge_chips(chips_new, chips_existing)
    save_chips(CHIPS_JSON, merged)

    status_counts: dict[str, int] = {}
    for c in merged:
        status_counts[c["implementation_status"]] = (
            status_counts.get(c["implementation_status"], 0) + 1
        )
    print(f"Extracted {len(chips_new)} chips from Wikipedia.")
    print(f"Wrote {len(merged)} chips to {CHIPS_JSON}.")
    for status, count in sorted(status_counts.items()):
        print(f"  {status}: {count}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

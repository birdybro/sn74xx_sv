# Source extraction

The canonical list of 7400-series parts comes from Wikipedia:

> https://en.wikipedia.org/wiki/List_of_7400-series_integrated_circuits

The list is extracted by `scripts/extract_wikipedia_7400.py` into a
machine-readable database at `build/chips.json`. The human-readable checklist
`tasks.md` is then generated from `build/chips.json` by
`scripts/update_tasks.py`.

## Running the pipeline

```sh
# 1) Pull the latest list from Wikipedia and rebuild build/chips.json.
python3 scripts/extract_wikipedia_7400.py

# 2) Regenerate tasks.md from build/chips.json.
python3 scripts/update_tasks.py
```

`extract_wikipedia_7400.py` is **idempotent and merge-aware**:

- If `build/chips.json` does not exist, the script creates it with every chip
  in `implementation_status: not_started`.
- If `build/chips.json` already exists, the script merges in any new chips
  it finds on the Wikipedia page **without** clobbering existing
  `implementation_status`, `implementation_notes`, or path fields. New
  Wikipedia rows are added with `not_started`. Rows that are no longer on
  Wikipedia are kept but flagged in `implementation_notes`.

This is intentional. The Wikipedia page is edited continuously; the project's
progress must not be reset just because someone added a row upstream.

## What the extractor parses

The Wikipedia page has multiple tables. The extractor processes all of:

- **Logic gates summary** — when actual part numbers are present in the row.
- **Larger footprints** — main 14/16/20/24-pin list.
- **Widebus devices** — 48/56-pin Widebus and similar.
- **Smaller footprints** — single-gate and dual-gate (1G, 2G, 3G) parts.
- **Voltage translation** — level-translator family.

Other tables (history, naming-convention prefix tables, footnotes) are not
treated as chip sources.

For each row the extractor preserves:

| Field                       | Meaning                                                        |
| --------------------------- | -------------------------------------------------------------- |
| `part_number`               | Original part number as written, e.g. `74x00`, `74S51`, `74x1G00` |
| `aliases`                   | Other part numbers that share this implementation              |
| `normalized_module_name`    | Safe lowercase identifier, e.g. `ttl_74x00`                    |
| `description`               | Datasheet-style description, trimmed                            |
| `source_section`            | The Wikipedia section heading the row came from                |
| `units`                     | Number of independent units on the chip, if given              |
| `input_features`            | "Schmitt", "with pull-up", etc., if given                       |
| `output_features`           | "OC", "OD", "3-state", etc., if given                           |
| `pins`                      | Pin count, if given                                            |
| `datasheet`                 | Datasheet link text or URL, if Wikipedia provides one           |
| `implementation_status`     | `not_started` / `in_progress` / `complete` / `blocked` / `digital_only_approximation` |
| `implementation_notes`      | List of free-form notes                                         |
| `rtl_path`, `testbench_path`, `readme_path` | Conventional paths                            |

## Name normalization rules

- Lowercase everything.
- Prefix `ttl_`.
- Family-letter wildcards: Wikipedia uses `74x` to mean "any subfamily".
  This is preserved verbatim.
- Concrete family letters (e.g., the `H` in `74H51`) are preserved
  in lowercase.
- "Single-gate" suffix patterns like `74x1G00`, `74x2G00`, `74x3G00` are kept,
  lowercased to `74x1g00`, etc.
- Widebus part numbers (16-bit equivalents like `74x162373`) are kept verbatim.

## Deduplication

Each part number is unique. If two Wikipedia rows describe the same part with
slightly different metadata (e.g., one with pin count, the other without), the
extractor merges into a single entry, preferring the more-specific field
values.

If a row lists multiple part numbers in the same cell:

- If they are **genuine aliases** of one implementation (same truth table, same
  pinout, same function — just different family-letter or vendor-letter), the
  first is kept as `part_number` and the rest as `aliases`. The chip's RTL
  file may be a thin wrapper that instantiates the canonical implementation.
- If they are **distinct parts** that just happen to share a row in the
  table, the extractor creates one task per part number.

The judgment of "alias vs. distinct" is conservative: when in doubt the
extractor splits into separate tasks rather than collapsing.

## Regenerating tasks.md

`scripts/update_tasks.py` reads `build/chips.json`, sorts by source-section
order (and within a section, by part number), and writes `tasks.md`. The
output is deterministic — running the script twice produces no diff. **Do not
edit `tasks.md` by hand.** Edits will be overwritten on the next regeneration.

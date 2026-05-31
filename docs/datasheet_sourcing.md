# Datasheet sourcing

The `datasheet_url` field in `build/chips.json` is a *hint*, not ground truth.
The pointers were generated during extraction and are **reliable for some
sources and systematically wrong for others**. This note records what works, so
future reclamation passes don't re-learn it the hard way.

## Reliability tiers

| Source | Reliability | Notes |
| --- | --- | --- |
| **TI databooks** — `archive.org/.../bitsavers_tidataBookVol2_*`, `…Vol3_*`, `…tidataBook_*` | **Reliable** | Page numbers land on (or within ±1 of) the part. 690-699, 677/678/679/680, 850/851, 866, 870/871, 881/882, 1181, 671/672 were all found exactly here. |
| **ti.com/lit** — `ti.com/lit/ds/symlink/<part>.pdf` or `…/gpn/<part>` | **Reliable when it exists** | Works for many AS/ALS/LS parts (867/869, 673/674, 1g97/98/99…). 404s for very old delisted parts — fall back to bitsavers. |
| **Non-TI databooks** — National, Motorola, Signetics, MMI scans | **Pointer unreliable** | Two failure modes: (1) *off by a few leaves* even in the right scan; (2) *wrong archive item entirely* (e.g. 779 pointed at a Motorola databook but lives in the National FAST databook). Always verify by the page header. |
| **Datasheet aggregators** — alldatasheet, datasheetq, manualmachine, datasheetcatalog | **HTML wrappers** | The linked pages are viewers, not PDFs; direct fetch returns HTML. Some 403/blocked. |

## How to locate a part in a bitsavers databook

1. Fetch the page image directly:
   `https://archive.org/download/<ITEM>/page/n<LEAF>.jpg`
   (the `/details/.../page/nNNN` and `/stream/.../#page/nNNN` URLs map to this).
2. **Read the page-corner header** — bitsavers scans print the part number
   vertically in the top corner. That, not the pointer, tells you which part
   you're on.
3. If it's the wrong part, **scan ±a few leaves**. Datasheets run
   title → pinout/description → function table → logic diagram → specs, so the
   function table is usually 1-2 leaves after the title page.
4. For higher-resolution table text, append `?scale=1` to the image URL.

## Direct-PDF fallback (works for obscure / non-bitsavers parts)

The `datasheetspdf.com` CDN is reachable through the Wayback Machine even when
the live site isn't:

```
https://web.archive.org/web/2id_/https://cdn.datasheetspdf.com/pdf-down/<a>/<b>/<c>/<PART>_<Vendor>.pdf
```

This sourced **835** (`74F835_PhilipsSemiconductors`) and **1604**
(`74F1604_PhilipsSemiconductors`). Other working direct-PDF hosts seen:
`ic72.com/pdf_file/i/<id>.pdf` (2400), `syntax.com.tw/upload/pdf/IC-<part>.pdf`
(952). When `WebFetch` can't parse a binary PDF, download with `curl` and read
the saved file with the vision-capable file reader.

## Verify, don't trust the extraction text

Read function tables **directly from the PDF/scan image**, not from the
fast-model text extraction — the extraction hallucinated for several parts this
project (e.g. it invented an OE pin on the 6-pin 1G58, and mis-read the
677-family comparators). The image is authoritative.

## Corrected pointers (verified by reading the scan)

| Part | chips.json said | Actually at |
| --- | --- | --- |
| 732 / 733 | Signetics manual page hitting 723/725 | `bitsavers_signeticsdaManual_57966640` n790-791 |
| 779 | a Motorola databook | `bitsavers_nationaldaFASTDatabook_31226275` n626-627 |
| 702 | 1988 FAST Advanced scan, off page | `bitsavers_nationaldaFASTDatabook_31226275` n621 |
| 707 / 710 | 1988 FAST Advanced scan, off page | `bitsavers_nationaldaFASTDatabook_31226275` ~n622 / n624-625 |
| 915 | National CMOS n141 (= MM74C914) | National CMOS n142 (MM74C915) |
| 675 / 676 | 1988 FAST Advanced n607 / n611 (= 674 / 675A specs) | same scan, n609 / n613 |
| 952 | MMI databook page hitting '383 | `syntax.com.tw/upload/pdf/IC-74LS952.pdf` (TL/F/6437) |
| 848 | Motorola Schottky n315 (= 74LS323) | not located — real 74LS848 page unknown |

## Parts deferred as complex (datasheet found, large effort)

These have a confirmed datasheet but are intricate multi-mode / bidirectional /
bit-slice parts whose function tables carry high mis-model risk; left blocked
for a deliberate, focused effort:

- **701** register/counter/comparator, **702** registered readback transceiver
- **952** dual-rank shift register (Data-OR function, transfer-up+down = clear)
- **870 / 871** dual-port register files (write-conflict priority)
- **681** 4-bit ALU + dual-register accumulator bit-slice (Tables 1/2/3)
- **8834**, processor slices (887/888/889), sequencers, DRAM/NuBus/JTAG controllers

The **advance-information** entries (707, 710, 779 in the available scans) have
only a description + logic diagram and **no detailed function table**, so they
cannot be implemented faithfully without locating a fuller datasheet.
